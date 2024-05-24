.class public Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;
.super Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
.source "ArrayCreationExpr.java"


# instance fields
.field private elementType:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

.field private initializer:Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field

.field private levels:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/NonEmptyProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 62
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;-><init>()V

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;-><init>()V

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "elementType"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p4, "initializer"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "elementType",
            "levels",
            "initializer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;",
            ")V"
        }
    .end annotation

    .line 79
    .local p3, "levels":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 80
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->setElementType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;

    .line 81
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->setLevels(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;

    .line 82
    invoke-virtual {p0, p4}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->setInitializer(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;)Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;

    .line 83
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->customInitialization()V

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)V
    .locals 3
    .param p1, "elementType"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elementType"
        }
    .end annotation

    .line 71
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v2, p1, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;)V
    .locals 1
    .param p1, "elementType"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p3, "initializer"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "elementType",
            "levels",
            "initializer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;",
            ")V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 67
    .local p2, "levels":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;)V

    .line 68
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

    .line 89
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 95
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public asArrayCreationExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;
    .locals 0

    .line 256
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;
    .locals 2

    .line 214
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;

    move-result-object v0

    return-object v0
.end method

.method public createdType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .locals 5

    .line 164
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->elementType:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 165
    .local v0, "result":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->levels:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 166
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;->TYPE:Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    invoke-direct {v2, v0, v3, v4}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;-><init>(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    move-object v0, v2

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public getElementType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->elementType:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    return-object v0
.end method

.method public getInitializer()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->initializer:Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getLevels()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->levels:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ArrayCreationExprMetaModel;
    .locals 1

    .line 220
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->arrayCreationExprMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/ArrayCreationExprMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ArrayCreationExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ArrayCreationExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public ifArrayCreationExpr(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;",
            ">;)V"
        }
    .end annotation

    .line 261
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 262
    return-void
.end method

.method public isArrayCreationExpr()Z
    .locals 1

    .line 250
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

    .line 189
    if-nez p1, :cond_0

    .line 190
    const/4 v0, 0x0

    return v0

    .line 191
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->initializer:Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 192
    if-ne p1, v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->removeInitializer()Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;

    .line 194
    return v1

    .line 197
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->levels:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 198
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->levels:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 199
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->levels:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 200
    return v1

    .line 197
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 203
    .end local v0    # "i":I
    :cond_3
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public removeInitializer()Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;
    .locals 2

    .line 208
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->setInitializer(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;)Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;

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

    .line 226
    if-nez p1, :cond_0

    .line 227
    const/4 v0, 0x0

    return v0

    .line 228
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->elementType:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 229
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->setElementType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;

    .line 230
    return v1

    .line 232
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->initializer:Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;

    if-eqz v0, :cond_2

    .line 233
    if-ne p1, v0, :cond_2

    .line 234
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->setInitializer(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;)Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;

    .line 235
    return v1

    .line 238
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->levels:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 239
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->levels:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_3

    .line 240
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->levels:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;

    invoke-virtual {v2, v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 241
    return v1

    .line 238
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    .end local v0    # "i":I
    :cond_4
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public setElementType(Ljava/lang/Class;)Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;"
        }
    .end annotation

    .line 178
    .local p1, "typeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->tryAddImportToParentCompilationUnit(Ljava/lang/Class;)V

    .line 179
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->parseType(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->setElementType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;

    move-result-object v0

    return-object v0
.end method

.method public setElementType(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 183
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->parseType(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->setElementType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;

    move-result-object v0

    return-object v0
.end method

.method public setElementType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;
    .locals 2
    .param p1, "elementType"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "elementType"
        }
    .end annotation

    .line 129
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->elementType:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    if-ne p1, v0, :cond_0

    .line 131
    return-object p0

    .line 133
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ELEMENT_TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->elementType:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->elementType:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    if-eqz v0, :cond_1

    .line 135
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 136
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->elementType:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 137
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 138
    return-object p0
.end method

.method public setInitializer(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;)Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;
    .locals 2
    .param p1, "initializer"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "initializer"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->initializer:Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;

    if-ne p1, v0, :cond_0

    .line 117
    return-object p0

    .line 119
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->INITIALIZER:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->initializer:Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->initializer:Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;

    if-eqz v0, :cond_1

    .line 121
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 122
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->initializer:Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;

    .line 123
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 124
    return-object p0
.end method

.method public setLevels(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "levels"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;"
        }
    .end annotation

    .line 148
    .local p1, "levels":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->levels:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 150
    return-object p0

    .line 152
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->LEVELS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->levels:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->levels:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 154
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 155
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->levels:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 156
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 157
    return-object p0
.end method

.method public toArrayCreationExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;",
            ">;"
        }
    .end annotation

    .line 267
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
