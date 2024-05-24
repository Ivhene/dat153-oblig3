.class public abstract Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;
.super Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralExpr;
.source "LiteralStringValueExpr.java"


# instance fields
.field protected value:Ljava/lang/String;


# direct methods
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

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 45
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

    .line 52
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 53
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;->setValue(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;

    .line 54
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;->customInitialization()V

    .line 55
    return-void
.end method


# virtual methods
.method public asLiteralStringValueExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;
    .locals 0

    .line 110
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralExpr;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;
    .locals 2

    .line 84
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/LiteralStringValueExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/LiteralExprMetaModel;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/LiteralStringValueExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/LiteralStringValueExprMetaModel;
    .locals 1

    .line 90
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->literalStringValueExprMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/LiteralStringValueExprMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/LiteralStringValueExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;->value:Ljava/lang/String;

    return-object v0
.end method

.method public ifLiteralStringValueExpr(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;",
            ">;)V"
        }
    .end annotation

    .line 115
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public isLiteralStringValueExpr()Z
    .locals 1

    .line 104
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

    .line 76
    if-nez p1, :cond_0

    .line 77
    const/4 v0, 0x0

    return v0

    .line 78
    :cond_0
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralExpr;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

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

    .line 96
    if-nez p1, :cond_0

    .line 97
    const/4 v0, 0x0

    return v0

    .line 98
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralExpr;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;
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

    .line 64
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;->value:Ljava/lang/String;

    if-ne p1, v0, :cond_0

    .line 66
    return-object p0

    .line 68
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->VALUE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;->value:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;->value:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public toLiteralStringValueExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/LiteralStringValueExpr;",
            ">;"
        }
    .end annotation

    .line 121
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
