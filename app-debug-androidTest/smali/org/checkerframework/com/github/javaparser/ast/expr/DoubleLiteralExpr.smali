.class public Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;
.super Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;
.source "DoubleLiteralExpr.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    const/4 v0, 0x0

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(D)V
    .locals 2
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "value"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->customInitialization()V

    .line 61
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

    .line 70
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 76
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public asDouble()D
    .locals 3

    .line 94
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->value:Ljava/lang/String;

    const-string v1, "_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "noUnderscoreValue":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    return-wide v1
.end method

.method public asDoubleLiteralExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;
    .locals 0

    .line 132
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;
    .locals 2

    .line 106
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralExpr;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/DoubleLiteralExprMetaModel;
    .locals 1

    .line 112
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->doubleLiteralExprMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/DoubleLiteralExprMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/DoubleLiteralExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/LiteralExprMetaModel;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/DoubleLiteralExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/LiteralStringValueExprMetaModel;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/DoubleLiteralExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/DoubleLiteralExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public ifDoubleLiteralExpr(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;",
            ">;)V"
        }
    .end annotation

    .line 137
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method public isDoubleLiteralExpr()Z
    .locals 1

    .line 126
    const/4 v0, 0x1

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

    .line 82
    if-nez p1, :cond_0

    .line 83
    const/4 v0, 0x0

    return v0

    .line 84
    :cond_0
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 1
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

    .line 118
    if-nez p1, :cond_0

    .line 119
    const/4 v0, 0x0

    return v0

    .line 120
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public setDouble(D)Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;
    .locals 1
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 99
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->value:Ljava/lang/String;

    .line 100
    return-object p0
.end method

.method public toDoubleLiteralExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;",
            ">;"
        }
    .end annotation

    .line 143
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
