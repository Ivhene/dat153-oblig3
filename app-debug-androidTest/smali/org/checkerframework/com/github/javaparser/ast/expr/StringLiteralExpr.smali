.class public Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;
.super Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;
.source "StringLiteralExpr.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    const/4 v0, 0x0

    const-string v1, "empty"

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
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

    .line 61
    const/4 v0, 0x0

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->escapeEndOfLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 62
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

    .line 69
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->customInitialization()V

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

    .line 76
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 82
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public asString()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->value:Ljava/lang/String;

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils;->unescapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asStringLiteralExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;
    .locals 0

    .line 151
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralExpr;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;
    .locals 2

    .line 125
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/StringLiteralExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/LiteralExprMetaModel;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/StringLiteralExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/LiteralStringValueExprMetaModel;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/StringLiteralExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/StringLiteralExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/StringLiteralExprMetaModel;
    .locals 1

    .line 131
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->stringLiteralExprMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/StringLiteralExprMetaModel;

    return-object v0
.end method

.method public ifStringLiteralExpr(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;",
            ">;)V"
        }
    .end annotation

    .line 156
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public isStringLiteralExpr()Z
    .locals 1

    .line 145
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

    .line 88
    if-nez p1, :cond_0

    .line 89
    const/4 v0, 0x0

    return v0

    .line 90
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

    .line 137
    if-nez p1, :cond_0

    .line 138
    const/4 v0, 0x0

    return v0

    .line 139
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public setEscapedValue(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 100
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->escapeEndOfLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->value:Ljava/lang/String;

    .line 101
    return-object p0
.end method

.method public setString(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 118
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils;->escapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->value:Ljava/lang/String;

    .line 119
    return-object p0
.end method

.method public toStringLiteralExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;",
            ">;"
        }
    .end annotation

    .line 162
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
