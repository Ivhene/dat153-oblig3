.class public Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;
.super Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
.source "ConditionalExpr.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithCondition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithCondition<",
        "Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;",
        ">;"
    }
.end annotation


# instance fields
.field private condition:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

.field private elseExpr:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

.field private thenExpr:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 53
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;-><init>()V

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;-><init>()V

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;-><init>()V

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "condition"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p3, "thenExpr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p4, "elseExpr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "condition",
            "thenExpr",
            "elseExpr"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 67
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->setCondition(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;

    .line 68
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->setThenExpr(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;

    .line 69
    invoke-virtual {p0, p4}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->setElseExpr(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;

    .line 70
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->customInitialization()V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V
    .locals 1
    .param p1, "condition"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p2, "thenExpr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p3, "elseExpr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "condition",
            "thenExpr",
            "elseExpr"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    .line 59
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
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public asConditionalExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;
    .locals 0

    .line 191
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;
    .locals 2

    .line 153
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;

    move-result-object v0

    return-object v0
.end method

.method public getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->condition:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    return-object v0
.end method

.method public getElseExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->elseExpr:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ConditionalExprMetaModel;
    .locals 1

    .line 159
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->conditionalExprMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/ConditionalExprMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ConditionalExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ConditionalExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getThenExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->thenExpr:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    return-object v0
.end method

.method public ifConditionalExpr(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;",
            ">;)V"
        }
    .end annotation

    .line 196
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 197
    return-void
.end method

.method public isConditionalExpr()Z
    .locals 1

    .line 185
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

    .line 145
    if-nez p1, :cond_0

    .line 146
    const/4 v0, 0x0

    return v0

    .line 147
    :cond_0
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
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

    .line 165
    if-nez p1, :cond_0

    .line 166
    const/4 v0, 0x0

    return v0

    .line 167
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->condition:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 168
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->setCondition(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;

    .line 169
    return v1

    .line 171
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->elseExpr:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_2

    .line 172
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->setElseExpr(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;

    .line 173
    return v1

    .line 175
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->thenExpr:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_3

    .line 176
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->setThenExpr(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;

    .line 177
    return v1

    .line 179
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setCondition(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "condition"
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->setCondition(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;

    move-result-object p1

    return-object p1
.end method

.method public setCondition(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;
    .locals 2
    .param p1, "condition"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "condition"
        }
    .end annotation

    .line 102
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->condition:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_0

    .line 104
    return-object p0

    .line 106
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->CONDITION:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->condition:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->condition:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    .line 108
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 109
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->condition:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 110
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 111
    return-object p0
.end method

.method public setElseExpr(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;
    .locals 2
    .param p1, "elseExpr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "elseExpr"
        }
    .end annotation

    .line 116
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->elseExpr:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_0

    .line 118
    return-object p0

    .line 120
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ELSE_EXPR:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->elseExpr:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->elseExpr:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    .line 122
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 123
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->elseExpr:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 124
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 125
    return-object p0
.end method

.method public setThenExpr(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;
    .locals 2
    .param p1, "thenExpr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "thenExpr"
        }
    .end annotation

    .line 130
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->thenExpr:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_0

    .line 132
    return-object p0

    .line 134
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->THEN_EXPR:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->thenExpr:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->thenExpr:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    .line 136
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 137
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->thenExpr:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 138
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 139
    return-object p0
.end method

.method public toConditionalExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;",
            ">;"
        }
    .end annotation

    .line 202
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
