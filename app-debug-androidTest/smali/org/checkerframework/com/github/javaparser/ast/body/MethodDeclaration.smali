.class public Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
.super Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;
.source "MethodDeclaration.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithType;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithOptionalBlockStmt;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithDeclaration;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithSimpleName;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeParameters;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithAccessModifiers;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithAbstractModifier;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithStaticModifier;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithFinalModifier;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithStrictfpModifier;
.implements Lorg/checkerframework/com/github/javaparser/resolution/Resolvable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithType<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;",
        "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithOptionalBlockStmt<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithJavadoc<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithDeclaration;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithSimpleName<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithThrownExceptions<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeParameters<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithAccessModifiers<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithAbstractModifier<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithStaticModifier<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithFinalModifier<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/modifiers/NodeWithStrictfpModifier<",
        "Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/resolution/Resolvable<",
        "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;",
        ">;"
    }
.end annotation


# instance fields
.field private body:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field

.field private type:Lorg/checkerframework/com/github/javaparser/ast/type/Type;


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 66
    const/4 v1, 0x0

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;-><init>()V

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v6}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;-><init>()V

    new-instance v7, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v7}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v8, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v8}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v9, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-direct {v9}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;-><init>()V

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;)V
    .locals 10
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p5, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p6, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .param p9, "body"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .param p10, "receiverParameter"    # Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "modifiers",
            "annotations",
            "typeParameters",
            "type",
            "name",
            "parameters",
            "thrownExceptions",
            "body",
            "receiverParameter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;",
            "Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;",
            ")V"
        }
    .end annotation

    .line 91
    .local p2, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    .local p3, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    .local p4, "typeParameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;>;"
    .local p7, "parameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    .local p8, "thrownExceptions":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;>;"
    move-object v9, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p10

    invoke-direct/range {v0 .. v8}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;)V

    .line 92
    move-object v0, p5

    invoke-virtual {p0, p5}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    .line 93
    move-object/from16 v1, p9

    invoke-virtual {p0, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    .line 94
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->customInitialization()V

    .line 95
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 11
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "modifiers",
            "name",
            "type",
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;",
            ">;)V"
        }
    .end annotation

    .line 74
    .local p1, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    .local p4, "parameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    const/4 v1, 0x0

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v6, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;-><init>(Ljava/lang/String;)V

    new-instance v8, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v8}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v9, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-direct {v9}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;-><init>()V

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v10}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)V
    .locals 11
    .param p4, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p5, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .param p8, "body"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "modifiers",
            "annotations",
            "typeParameters",
            "type",
            "name",
            "parameters",
            "thrownExceptions",
            "body"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;",
            ")V"
        }
    .end annotation

    .line 78
    .local p1, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    .local p2, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    .local p3, "typeParameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;>;"
    .local p6, "parameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    .local p7, "thrownExceptions":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;>;"
    const/4 v1, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;)V
    .locals 11
    .param p4, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p5, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .param p8, "body"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .param p9, "receiverParameter"    # Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "modifiers",
            "annotations",
            "typeParameters",
            "type",
            "name",
            "parameters",
            "thrownExceptions",
            "body",
            "receiverParameter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;",
            "Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;",
            ")V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 83
    .local p1, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    .local p2, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    .local p3, "typeParameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;>;"
    .local p6, "parameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    .local p7, "thrownExceptions":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;>;"
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Ljava/lang/String;)V
    .locals 11
    .param p2, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "modifiers",
            "type",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 70
    .local p1, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    const/4 v1, 0x0

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v6, p3}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;-><init>(Ljava/lang/String;)V

    new-instance v7, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v7}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v8, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v8}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v9, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-direct {v9}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;-><init>()V

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v10}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;)V

    .line 71
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<",
            "TR;TA;>;TA;)TR;"
        }
    .end annotation

    .line 100
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<",
            "TA;>;TA;)V"
        }
    .end annotation

    .line 106
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public asMethodDeclaration()Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .locals 0

    .line 315
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->clone()Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->clone()Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->clone()Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->clone()Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .locals 2

    .line 279
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    return-object v0
.end method

.method public getBody()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getDeclarationAsString(ZZZ)Ljava/lang/String;
    .locals 6
    .param p1, "includingModifiers"    # Z
    .param p2, "includingThrows"    # Z
    .param p3, "includingParameterName"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "includingModifiers",
            "includingThrows",
            "includingParameterName"
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " "

    if-eqz p1, :cond_4

    .line 190
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getAccessSpecifier()Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;

    move-result-object v2

    .line 191
    .local v2, "accessSpecifier":Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    const-string v3, "static "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->isAbstract()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    const-string v3, "abstract "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->isFinal()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 199
    const-string v3, "final "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_2
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->isNative()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 202
    const-string v3, "native "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_3
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->isSynchronized()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 205
    const-string v3, "synchronized "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .end local v2    # "accessSpecifier":Lorg/checkerframework/com/github/javaparser/ast/AccessSpecifier;
    :cond_4
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->prettyPrinterNoCommentsConfiguration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->toString(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const/4 v1, 0x1

    .line 213
    .local v1, "firstParam":Z
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    .line 214
    .local v3, "param":Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    if-eqz v1, :cond_5

    .line 215
    const/4 v1, 0x0

    goto :goto_1

    .line 217
    :cond_5
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :goto_1
    if-eqz p3, :cond_6

    .line 220
    sget-object v4, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->prettyPrinterNoCommentsConfiguration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    invoke-virtual {v3, v4}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->toString(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 222
    :cond_6
    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v4

    sget-object v5, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->prettyPrinterNoCommentsConfiguration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    invoke-virtual {v4, v5}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->toString(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->isVarArgs()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 224
    const-string v4, "..."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .end local v3    # "param":Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    :cond_7
    :goto_2
    goto :goto_0

    .line 228
    :cond_8
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->appendThrowsIfRequested(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/BodyDeclarationMetaModel;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/MethodDeclarationMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/CallableDeclarationMetaModel;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/MethodDeclarationMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/MethodDeclarationMetaModel;
    .locals 1

    .line 285
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->methodDeclarationMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/MethodDeclarationMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/MethodDeclarationMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->type:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    return-object v0
.end method

.method public ifMethodDeclaration(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;",
            ">;)V"
        }
    .end annotation

    .line 320
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 321
    return-void
.end method

.method public isDefault()Z
    .locals 1

    .line 242
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->DEFAULT:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->hasModifier(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Z

    move-result v0

    return v0
.end method

.method public isMethodDeclaration()Z
    .locals 1

    .line 309
    const/4 v0, 0x1

    return v0
.end method

.method public isNative()Z
    .locals 1

    .line 234
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->NATIVE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->hasModifier(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Z

    move-result v0

    return v0
.end method

.method public isSynchronized()Z
    .locals 1

    .line 238
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->SYNCHRONIZED:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->hasModifier(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Z

    move-result v0

    return v0
.end method

.method public remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 260
    if-nez p1, :cond_0

    .line 261
    const/4 v0, 0x0

    return v0

    .line 262
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    if-eqz v0, :cond_1

    .line 263
    if-ne p1, v0, :cond_1

    .line 264
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->removeBody()Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    .line 265
    const/4 v0, 0x1

    return v0

    .line 268
    :cond_1
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeBody()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->removeBody()Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public removeBody()Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .locals 2

    .line 273
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "replacementNode"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "replacementNode"
        }
    .end annotation

    .line 291
    if-nez p1, :cond_0

    .line 292
    const/4 v0, 0x0

    return v0

    .line 293
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 294
    if-ne p1, v0, :cond_1

    .line 295
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    .line 296
    return v1

    .line 299
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->type:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    if-ne p1, v0, :cond_2

    .line 300
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    .line 301
    return v1

    .line 303
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->resolve()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public resolve()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;
    .locals 2

    .line 325
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getSymbolResolver()Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;

    move-result-object v0

    const-class v1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    invoke-interface {v0, p0, v1}, Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;->resolveDeclaration(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    return-object v0
.end method

.method public bridge synthetic setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "body"
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .locals 2
    .param p1, "body"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "body"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    if-ne p1, v0, :cond_0

    .line 123
    return-object p0

    .line 125
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->BODY:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    if-eqz v0, :cond_1

    .line 127
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 128
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    .line 129
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 130
    return-object p0
.end method

.method public setDefault(Z)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .locals 1
    .param p1, "set"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "set"
        }
    .end annotation

    .line 254
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->DEFAULT:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setModifier(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;Z)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    return-object v0
.end method

.method public bridge synthetic setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "modifiers"
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "modifiers"
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "modifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;"
        }
    .end annotation

    .line 154
    .local p1, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    return-object v0
.end method

.method public bridge synthetic setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "name"
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "name"
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .locals 1
    .param p1, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 159
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    return-object v0
.end method

.method public setNative(Z)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .locals 1
    .param p1, "set"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "set"
        }
    .end annotation

    .line 246
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->NATIVE:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setModifier(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;Z)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    return-object v0
.end method

.method public bridge synthetic setParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;"
        }
    .end annotation

    .line 164
    .local p1, "parameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->setParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    return-object v0
.end method

.method public setSynchronized(Z)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .locals 1
    .param p1, "set"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "set"
        }
    .end annotation

    .line 250
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->SYNCHRONIZED:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setModifier(Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;Z)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    return-object v0
.end method

.method public bridge synthetic setThrownExceptions(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "thrownExceptions"
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setThrownExceptions(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setThrownExceptions(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "thrownExceptions"
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setThrownExceptions(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setThrownExceptions(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "thrownExceptions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;"
        }
    .end annotation

    .line 169
    .local p1, "thrownExceptions":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->setThrownExceptions(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    return-object v0
.end method

.method public bridge synthetic setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "type"
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 140
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->type:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    if-ne p1, v0, :cond_0

    .line 142
    return-object p0

    .line 144
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->type:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->type:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    if-eqz v0, :cond_1

    .line 146
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 147
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->type:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 148
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 149
    return-object p0
.end method

.method public bridge synthetic setTypeParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "typeParameters"
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setTypeParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setTypeParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "typeParameters"
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setTypeParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public setTypeParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "typeParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;"
        }
    .end annotation

    .line 174
    .local p1, "typeParameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;->setTypeParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    return-object v0
.end method

.method public toMethodDeclaration()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;",
            ">;"
        }
    .end annotation

    .line 331
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
