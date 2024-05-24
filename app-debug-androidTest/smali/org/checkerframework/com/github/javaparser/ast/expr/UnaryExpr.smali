.class public Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;
.super Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
.source "UnaryExpr.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExpression;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExpression<",
        "Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;",
        ">;"
    }
.end annotation


# instance fields
.field private expression:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

.field private operator:Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 90
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;-><init>()V

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;->POSTFIX_INCREMENT:Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "expression"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p3, "operator"    # Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "expression",
            "operator"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 104
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->setExpression(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;

    .line 105
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->setOperator(Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;)Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;

    .line 106
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->customInitialization()V

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;)V
    .locals 1
    .param p1, "expression"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p2, "operator"    # Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "expression",
            "operator"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;)V

    .line 96
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
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public asUnaryExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;
    .locals 0

    .line 207
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;
    .locals 2

    .line 177
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;

    return-object v0
.end method

.method public getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->expression:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/UnaryExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/UnaryExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/UnaryExprMetaModel;
    .locals 1

    .line 183
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->unaryExprMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/UnaryExprMetaModel;

    return-object v0
.end method

.method public getOperator()Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->operator:Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    return-object v0
.end method

.method public ifUnaryExpr(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;",
            ">;)V"
        }
    .end annotation

    .line 212
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 213
    return-void
.end method

.method public isPostfix()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/DerivedProperty;
    .end annotation

    .line 166
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->operator:Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;->isPostfix()Z

    move-result v0

    return v0
.end method

.method public isPrefix()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/DerivedProperty;
    .end annotation

    .line 171
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->isPostfix()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isUnaryExpr()Z
    .locals 1

    .line 201
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

    .line 159
    if-nez p1, :cond_0

    .line 160
    const/4 v0, 0x0

    return v0

    .line 161
    :cond_0
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

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

    .line 189
    if-nez p1, :cond_0

    .line 190
    const/4 v0, 0x0

    return v0

    .line 191
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->expression:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_1

    .line 192
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->setExpression(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;

    .line 193
    const/4 v0, 0x1

    return v0

    .line 195
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setExpression(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "expression"
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->setExpression(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;

    move-result-object p1

    return-object p1
.end method

.method public setExpression(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;
    .locals 2
    .param p1, "expression"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "expression"
        }
    .end annotation

    .line 133
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->expression:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_0

    .line 135
    return-object p0

    .line 137
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->EXPRESSION:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->expression:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->expression:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    .line 139
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 140
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->expression:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 141
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 142
    return-object p0
.end method

.method public setOperator(Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;)Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;
    .locals 2
    .param p1, "operator"    # Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "operator"
        }
    .end annotation

    .line 147
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->operator:Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    if-ne p1, v0, :cond_0

    .line 149
    return-object p0

    .line 151
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->OPERATOR:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->operator:Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->operator:Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    .line 153
    return-object p0
.end method

.method public toUnaryExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;",
            ">;"
        }
    .end annotation

    .line 218
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
