.class public Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;
.super Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
.source "FieldAccessExpr.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithSimpleName;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithScope;
.implements Lorg/checkerframework/com/github/javaparser/resolution/Resolvable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithSimpleName<",
        "Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments<",
        "Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithScope<",
        "Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/resolution/Resolvable<",
        "Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedValueDeclaration;",
        ">;"
    }
.end annotation


# instance fields
.field private name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

.field private scope:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

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
    .locals 3

    .line 63
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;-><init>()V

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v2, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "scope"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p4, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "scope",
            "typeArguments",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;",
            ")V"
        }
    .end annotation

    .line 80
    .local p3, "typeArguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 81
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->setScope(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;

    .line 82
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->setTypeArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;

    .line 83
    invoke-virtual {p0, p4}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;

    .line 84
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->customInitialization()V

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Ljava/lang/String;)V
    .locals 2
    .param p1, "scope"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "scope",
            "name"
        }
    .end annotation

    .line 67
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)V
    .locals 1
    .param p1, "scope"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p3, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "scope",
            "typeArguments",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;",
            ")V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 72
    .local p2, "typeArguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)V

    .line 73
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

    .line 90
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 96
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public asFieldAccessExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;
    .locals 0

    .line 228
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;
    .locals 2

    .line 170
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/FieldAccessExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/FieldAccessExprMetaModel;
    .locals 1

    .line 176
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->fieldAccessExprMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/FieldAccessExprMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/FieldAccessExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    return-object v0
.end method

.method public getScope()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->scope:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

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

    .line 145
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public ifFieldAccessExpr(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;",
            ">;)V"
        }
    .end annotation

    .line 233
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 234
    return-void
.end method

.method public isFieldAccessExpr()Z
    .locals 1

    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public isInternal()Z
    .locals 1

    .line 264
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTopLevel()Z
    .locals 1

    .line 271
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->isInternal()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 182
    if-nez p1, :cond_0

    .line 183
    const/4 v0, 0x0

    return v0

    .line 184
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_2

    .line 185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 186
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 187
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 188
    const/4 v1, 0x1

    return v1

    .line 185
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "i":I
    :cond_2
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
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

    .line 198
    if-nez p1, :cond_0

    .line 199
    const/4 v0, 0x0

    return v0

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 201
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;

    .line 202
    return v1

    .line 204
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->scope:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_2

    .line 205
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->setScope(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;

    .line 206
    return v1

    .line 208
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_4

    .line 209
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 210
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_3

    .line 211
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    invoke-virtual {v2, v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 212
    return v1

    .line 209
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "i":I
    :cond_4
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic resolve()Ljava/lang/Object;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->resolve()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedValueDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public resolve()Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedValueDeclaration;
    .locals 2

    .line 251
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getSymbolResolver()Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;

    move-result-object v0

    const-class v1, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedValueDeclaration;

    invoke-interface {v0, p0, v1}, Lorg/checkerframework/com/github/javaparser/resolution/SymbolResolver;->resolveDeclaration(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/resolution/declarations/ResolvedValueDeclaration;

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

    .line 53
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;

    move-result-object p1

    return-object p1
.end method

.method public setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;
    .locals 2
    .param p1, "name"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 106
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    if-ne p1, v0, :cond_0

    .line 108
    return-object p0

    .line 110
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->NAME:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    if-eqz v0, :cond_1

    .line 112
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 113
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->name:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 114
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 115
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

    .line 53
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->setScope(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;

    move-result-object p1

    return-object p1
.end method

.method public setScope(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;
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

    .line 131
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->scope:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_0

    .line 133
    return-object p0

    .line 135
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->SCOPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->scope:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->scope:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    .line 137
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 138
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->scope:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 139
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 140
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

    .line 53
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->setTypeArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;

    move-result-object p1

    return-object p1
.end method

.method public setTypeArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;
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
            "Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;"
        }
    .end annotation

    .line 156
    .local p1, "typeArguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 157
    return-object p0

    .line 159
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE_ARGUMENTS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 161
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 162
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->typeArguments:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 163
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 164
    return-object p0
.end method

.method public toFieldAccessExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;",
            ">;"
        }
    .end annotation

    .line 257
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
