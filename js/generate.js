const fs = require('fs');
const { resolve } = require('path');
const ts = require('typescript');

const apiFile = './node_modules/everscale-inpage-provider/dist/api.d.ts';
const modelsFile = './node_modules/everscale-inpage-provider/dist/models.d.ts';
const dartModelsPath = resolve(__dirname, '../lib/src/models');

const methods = [];
const models = [
    { name: 'AssetTypeParams', members: [{ name: 'rootContract', type: 'String' }] },
];
const visited = new Set(
    models.map(({ name }) => name),
);
const program = ts.createProgram([apiFile, modelsFile], {
    noEmitOnError: true,
    target: ts.ScriptTarget.ESNext,
    module: ts.ModuleKind.CommonJS,
});

function capitalize(...values) {
    return values.map((value) => value ? value.charAt(0).toUpperCase() + value.slice(1) : '').join('');
}

function getJsDocComments(jsDoc) {
    if (!jsDoc) return [];
    return jsDoc
        .flatMap(({ comment }) => comment?.split('\n'))
        .filter(Boolean)
        .map((row) => `///${row}`);
}

function snakeCase(value) {
    return value.replace(/\W+/g, " ")
      .split(/ |\B(?=[A-Z])/)
      .map(word => word.toLowerCase())
      .join('_');
};

function getTypeName(node, context) {
    const type = getType(node, { ...context, partial: false });
    return (type.nullable || context.partial) ? `${type.name}?` : type.name;
}

/**
 * @param {ts.Node} node 
 * @param {*} context 
 */
function getType(node, context) {
    if (node.kind === ts.SyntaxKind.PropertySignature) {
        const type = getPropertyType(node, context);
        if (node.questionToken) {
            type.nullable = true;
        }
        return type;
    }

    switch (node.kind) {
        case ts.SyntaxKind.StringKeyword: return { name: 'String', nullable: false };
        case ts.SyntaxKind.NumberKeyword: return { name: 'num', nullable: false };
        case ts.SyntaxKind.BooleanKeyword: return { name: 'bool', nullable: false };
        case ts.SyntaxKind.ObjectKeyword: return { name: 'Object', nullable: false };
        case ts.SyntaxKind.TypeLiteral: return getTypeLiteral(node, context);
        case ts.SyntaxKind.TypeReference: return getTypeReference(node, context);
        case ts.SyntaxKind.ArrayType: return getArrayType(node, context);
        case ts.SyntaxKind.UnionType: return getUnionType(node, context);
        case ts.SyntaxKind.TypeOperator: return getTypeOperator(node, context);
        case ts.SyntaxKind.TypeAliasDeclaration: return getTypeAliasDeclaration(node, context);
        case ts.SyntaxKind.InterfaceDeclaration: return getInterface(node, context);
        case ts.SyntaxKind.LiteralType: return getLiteralType(node, context);
        case ts.SyntaxKind.MappedType: return getMappedType(node, context);
        case ts.SyntaxKind.ConditionalType: return getConditionalType(node, context);
        
        default: return { name: 'dynamic', nullable: false };
    }
}

/**
 * @param {ts.ConditionalTypeNode} node 
 * @param {*} context 
 */
function getConditionalType(node, context) {
    if (context.name === 'AssetTypeParams') {
        return { name: 'AssetTypeParams', nullable: true };
    }
    return { name: 'dynamic', nullable: false };
}

/**
 * @param {ts.TypeAliasDeclaration} node 
 * @param {*} context 
 */
function getTypeAliasDeclaration(node, context) {
    return getType(node.type, { ...context, name: node.name.text });
}

/**
 * @param {ts.MappedTypeNode} node 
 * @param {*} context 
 */
function getMappedType(node, context) {
    return {
        name: `Map<String, ${getTypeName(node.type, context)}>`,
        nullable: false,
    };
}

/**
 * @param {ts.LiteralTypeNode} node 
 * @param {*} context 
 */
function getLiteralType(node, context) {
    switch (node.literal.kind) {
        case ts.SyntaxKind.TrueKeyword: return { name: 'bool', nullable: false };
        case ts.SyntaxKind.FalseKeyword: return { name: 'bool', nullable: false };
        case ts.SyntaxKind.StringLiteral: return { name: 'String', nullable: false };

        default: throw new Error('Not implemented');
    }
}

/**
 * @param {ts.TypeOperatorNode} node 
 * @param {*} context 
 */
function getTypeOperator(node, context) {;
    switch (node.operator) {
        case ts.SyntaxKind.KeyOfKeyword: return { name: 'String', nullable: false };

        default: throw new Error('Not implemented');
    }
}

/**
 * @param {ts.PropertySignature} node 
 * @param {*} context 
 */
function getPropertyType(node, context) {;
    return getType(node.type, {
        ...context,
        name: capitalize(context.name, node.name.text),
    });
}

/**
 * @param {ts.ArrayTypeNode} node 
 * @param {*} context 
 */
function getArrayType(node, context) {
    return {
        name: `List<${getTypeName(node.elementType, context)}>`,
        nullable: !!node.questionToken,
    };
}

/**
 * @param {ts.TypeLiteralNode} node 
 * @param {*} context 
 */
function getTypeLiteral(node, context) {
    const name = context.partial ? `${context.name}Partial` : context.name;
    const indexMember = node.members.find((member) => member.kind === ts.SyntaxKind.IndexSignature);

    if (indexMember) {
        return {
            name: `Map<String, ${getTypeName(indexMember.type, context)}>`,
            nullable: false,
        };
    }

    addClassDeclaration(name, node, context);

    return { name, nullable: false };
}

/**
 * @param {ts.InterfaceDeclaration} node 
 * @param {*} context 
 */
function getInterface(node, context) {
    const name = context.partial ? `${node.name.text}Partial` : node.name.text;
    addClassDeclaration(name, node, context);
    return { name, nullable: false };
}

function addClassDeclaration(name, node, context) {
    if (visited.has(name)) return;
    visited.add(name);

    const filename = snakeCase(name);

    models.push({
        name,
        members: node.members.map((member) => ({
            name: member.name.text,
            type: getTypeName(member, context),
            jsDoc: member.jsDoc,
        })),
    });
}

/**
 * @param {ts.TypeReferenceNode} node 
 * @param {*} context 
 */
function getTypeReference(node, context) {
    if (node.typeName.text === 'Addr' || node.typeName.text === 'Address') {
        return { name: 'String', nullable: false };
    }

    if (node.typeName.text === 'Array') {
        return {
            name: `List<${getTypeName(node.typeArguments.at(0), context)}>`,
            nullable: false,
        };
    }

    if (node.typeName.text === 'Partial') {
        return getType(node.typeArguments.at(0), {
            ...context,
            partial: true,
        });
    }

    if (node.typeName.text === 'UniqueArray') {
        return getType(node.typeArguments.at(0), context);
    }

    if (node.typeName.kind !== ts.SyntaxKind.Identifier) {
        throw new Error('Not implemented');
    }

    const source = program.getSourceFile(modelsFile);
    const typeDeclaration = source.statements.find((statement) => statement.name?.text === node.typeName.text);

    if (!typeDeclaration) throw new Error(`Type declaration not found: ${node.typeName.text}`);

    return getType(typeDeclaration, context);
}

/**
 * @param {ts.UnionTypeNode} node 
 * @param {*} context 
 */
function getUnionType(node, context) {
    const types = node.types.filter((type) => {
        if (type.kind === ts.SyntaxKind.UndefinedKeyword) return false;
        if (type.kind === ts.SyntaxKind.LiteralType && type.literal?.kind === ts.SyntaxKind.NullKeyword) return false;
        return true;
    });

    const isString = types.every(
        ({ kind, literal }) => kind === ts.SyntaxKind.LiteralType && literal?.kind === ts.SyntaxKind.StringLiteral,
    );
    if (isString) {
        return { name: 'String', nullable: false };
    }

    for (const type of types) {
        if (type.kind === ts.SyntaxKind.TypeReference) {
            getTypeReference(type, context);
        } else if (type.kind === ts.SyntaxKind.TypeLiteral) {
            const literalTypeSuffix = type.members?.find(({ name }) => name?.text === 'type')?.type?.literal?.text;
            if (literalTypeSuffix) {
                getTypeLiteral(type, {
                    ...context,
                    name: capitalize(context.name, literalTypeSuffix),
                });
            }
        }
    }
    
    return {
        name: types.length === 1 ? getTypeName(types.at(0), context) : 'Object',
        nullable: types.length !== node.types.length,
    };
}

function modelTemplate({ name, members }) {
    let hasBigInt = false;

    return `
        import 'package:json_annotation/json_annotation.dart';
        import 'models.dart';

        part '${snakeCase(name)}.g.dart';

        @JsonSerializable()
        class ${name} {
            const ${name}(${members.map(({ name }) => `this.${name}`).join(', ')});

            ${members.map(({ name, type, jsDoc }) => {
                if (name === 'amount') {
                    hasBigInt = true;
                    return `
                        @JsonKey(
                            fromJson: BigInt.tryParse,
                            toJson: _bigIntToString,
                        )
                        final BigInt? ${name};
                    `;
                }

                return [...getJsDocComments(jsDoc), `final ${type} ${name};`].join('\n');
            }).join('\n')}

            factory ${name}.fromJson(Map<String, dynamic> json) => _$${name}FromJson(json);

            Map<String, dynamic> toJson() => _$${name}ToJson(this);

            ${hasBigInt ? 'static String? _bigIntToString(BigInt? value) => value?.toString();' : ''}
        }
    `;
}

function providerTemplate() {
    return `
        import 'dart:async';
        import 'models.dart';

        abstract class ProviderApi {
            ${methods.map(({ name, jsDoc, input, output }) => {
                return [
                    ...getJsDocComments(jsDoc),
                    `FutureOr<${output}> ${name}(${input ? `${input} input` : ''});`
                ].join('\n');
            }).join('\n')}

            dynamic call(String method, dynamic params) {
                switch (method) {
                    ${methods.map(({ name, input }) => {
                        return `case '${name}': return ${name}(${input ? `${input}.fromJson(params)`: ''});`;
                    }).join('\n')}
            
                    default: throw NoSuchMethodError.withInvocation(this, Invocation.method(Symbol(method), [params]));
                }
            }
        }
    `;
}

async function generate() {
    const source = program.getSourceFile(apiFile);
    const providerApi = source.statements.find(
        (statement) => statement.kind === ts.SyntaxKind.TypeAliasDeclaration && statement.name.text === 'ProviderApi',
    );

    providerApi.type.members.forEach((member) => {
        const input = member.type.members?.find(({ name }) => name.text === 'input');
        const output = member.type.members?.find(({ name }) => name.text === 'output');

        methods.push({
            name: member.name.text,
            jsDoc: member.jsDoc,
            input: input ? getTypeName(input, { name: member.name.text }) : null,
            output: output ? getTypeName(output, { name: member.name.text }) : 'void',
        });
    });

    await fs.promises.rm(dartModelsPath, { recursive: true, force: true });
    await fs.promises.mkdir(dartModelsPath, { recursive: true });

    await Promise.all([
        ...models.map((model) => {
            const path = resolve(dartModelsPath, `${snakeCase(model.name)}.dart`);
            return fs.promises.writeFile(path, modelTemplate(model));
        }),

        fs.promises.writeFile(resolve(dartModelsPath, 'provider_api.dart'), providerTemplate()),

        fs.promises.writeFile(resolve(dartModelsPath, 'models.dart'), `
            export 'provider_api.dart';
            ${models.map(({ name }) => `export '${snakeCase(name)}.dart';`).join('\n')}
        `),
    ]);
}

generate();
