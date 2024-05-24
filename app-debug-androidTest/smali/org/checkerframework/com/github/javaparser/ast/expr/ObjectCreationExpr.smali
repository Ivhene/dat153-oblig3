.class public Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;
.super Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
.source "ObjectCreationExpr.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithType;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithArguments;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithOptionalScope;
.implements Lorg/checkerframework/com/github/javaparser/resolution/Resolvable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments<",
        "Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithType<",
        "Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;",
        "Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithArguments<",
        "Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithOptionalScope<",
        "Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/resolution/Resolvable<",
        "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;",
        ">;"
    }
.end annotation


# instance fields
.field private anonymousClassBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field

.field private arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation
.end field

.field private scope:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field

.field private type:Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

.field private typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 76
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;-><init>()V

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "scope"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p3, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "scope",
            "type",
            "typeArguments",
            "arguments",
            "anonymousClassBody"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;)V"
        }
    .end annotation

    .line 100
    .local p4, "typeArguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    .local p5, "arguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    .local p6, "anonymousClassBody":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 101
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->setScope(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;

    .line 102
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;)Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;

    .line 103
    invoke-virtual {p0, p4}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->setTypeArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;

    .line 104
    invoke-virtual {p0, p5}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->setArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;

    .line 105
    invoke-virtual {p0, p6}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->setAnonymousClassBody(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;

    .line 106
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->customInitialization()V

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 7
    .param p1, "scope"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p2, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "scope",
            "type",
            "arguments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;)V"
        }
    .end annotation

    .line 87
    .local p3, "arguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 7
    .param p1, "scope"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p2, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "scope",
            "type",
            "typeArguments",
            "arguments",
            "anonymousClassBody"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;)V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 92
    .local p3, "typeArguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    .local p4, "arguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    .local p5, "anonymousClassBody":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;>;"
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 93
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

    .line 112
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 118
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public addAnonymousClassBody(Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "body"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;)V"
        }
    .end annotation

    .line 127
    .local p1, "body":Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 129
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 130
    return-void
.end method

.method public asObjectCreationExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;
    .locals 0

    .line 341
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;
    .locals 2

    .line 283
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;

    return-object v0
.end method

.method public getAnonymousClassBody()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;>;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ObjectCreationExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ObjectCreationExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ObjectCreationExprMetaModel;
    .locals 1

    .line 289
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->objectCreationExprMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/ObjectCreationExprMetaModel;

    return-object v0
.end method

.method public getScope()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->scope:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->type:Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    return-object v0
.end method

.method public bridge synthetic getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v0

    return-object v0
.end method

.method public getTypeArguments()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            ">;>;"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public ifObjectCreationExpr(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;",
            ">;)V"
        }
    .end annotation

    .line 346
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 347
    return-void
.end method

.method public isObjectCreationExpr()Z
    .locals 1

    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method public remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 3
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 242
    if-nez p1, :cond_0

    .line 243
    const/4 v0, 0x0

    return v0

    .line 244
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 245
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 246
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 247
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 248
    return v1

    .line 245
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 253
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_3

    .line 254
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 255
    return v1

    .line 252
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 258
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->scope:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_5

    .line 259
    if-ne p1, v0, :cond_5

    .line 260
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->removeScope()Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;

    .line 261
    return v1

    .line 264
    :cond_5
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_7

    .line 265
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 266
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_6

    .line 267
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 268
    return v1

    .line 265
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 272
    .end local v0    # "i":I
    :cond_7
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeScope()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->removeScope()Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;

    move-result-object v0

    return-object v0
.end method

.method public removeScope()Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;
    .locals 2

    .line 277
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->setScope(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;

    move-result-object v0

    return-object v0
.end method

.method public replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 4
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

    .line 295
    if-nez p1, :cond_0

    .line 296
    const/4 v0, 0x0

    return v0

    .line 297
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 298
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 299
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 300
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;

    invoke-virtual {v2, v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 301
    return v1

    .line 298
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 306
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_3

    .line 307
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {v2, v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 308
    return v1

    .line 305
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 311
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->scope:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_5

    .line 312
    if-ne p1, v0, :cond_5

    .line 313
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->setScope(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;

    .line 314
    return v1

    .line 317
    :cond_5
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->type:Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    if-ne p1, v0, :cond_6

    .line 318
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;)Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;

    .line 319
    return v1

    .line 321
    :cond_6
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_8

    .line 322
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 323
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_7

    .line 324
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    invoke-virtual {v2, v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 325
    return v1

    .line 322
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 329
    .end local v0    # "i":I
    :cond_8
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->resolve()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public resolve()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;
    .locals 2

    .line 364
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getSymbolResolver()Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;

    move-result-object v0

    const-class v1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;

    invoke-interface {v0, p0, v1}, Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;->resolveDeclaration(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;

    return-object v0
.end method

.method public setAnonymousClassBody(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "anonymousClassBody"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;)",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;"
        }
    .end annotation

    .line 157
    .local p1, "anonymousClassBody":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 158
    return-object p0

    .line 160
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ANONYMOUS_CLASS_BODY:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 162
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 163
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->anonymousClassBody:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 164
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 165
    return-object p0
.end method

.method public bridge synthetic setArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "arguments"
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->setArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;

    move-result-object p1

    return-object p1
.end method

.method public setArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "arguments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;"
        }
    .end annotation

    .line 170
    .local p1, "arguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 172
    return-object p0

    .line 174
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ARGUMENTS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 176
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 177
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->arguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 178
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 179
    return-object p0
.end method

.method public bridge synthetic setScope(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "scope"
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->setScope(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;

    move-result-object p1

    return-object p1
.end method

.method public setScope(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;
    .locals 2
    .param p1, "scope"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "scope"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->scope:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_0

    .line 191
    return-object p0

    .line 193
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->SCOPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->scope:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->scope:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    .line 195
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 196
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->scope:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 197
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 198
    return-object p0
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

    .line 60
    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;)Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;

    move-result-object p1

    return-object p1
.end method

.method public setType(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;)Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 203
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->type:Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    if-ne p1, v0, :cond_0

    .line 205
    return-object p0

    .line 207
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->type:Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->type:Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    if-eqz v0, :cond_1

    .line 209
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 210
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->type:Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 211
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 212
    return-object p0
.end method

.method public bridge synthetic setTypeArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "typeArguments"
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->setTypeArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;

    move-result-object p1

    return-object p1
.end method

.method public setTypeArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "typeArguments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;"
        }
    .end annotation

    .line 228
    .local p1, "typeArguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 229
    return-object p0

    .line 231
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE_ARGUMENTS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 233
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 234
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 235
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 236
    return-object p0
.end method

.method public toObjectCreationExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;",
            ">;"
        }
    .end annotation

    .line 370
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
