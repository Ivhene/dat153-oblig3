.class public Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;
.super Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
.source "CastExpr.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithType;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExpression;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithType<",
        "Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;",
        "Lorg/checkerframework/com/github/javaparser/ast/type/Type;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExpression<",
        "Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;",
        ">;"
    }
.end annotation


# instance fields
.field private expression:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

.field private type:Lorg/checkerframework/com/github/javaparser/ast/type/Type;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 53
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;-><init>()V

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p3, "expression"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "type",
            "expression"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 67
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;

    .line 68
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->setExpression(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;

    .line 69
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->customInitialization()V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p2, "expression"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "expression"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

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

    .line 75
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 81
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public asCastExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;
    .locals 0

    .line 167
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;
    .locals 2

    .line 133
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->expression:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/CastExprMetaModel;
    .locals 1

    .line 139
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->castExprMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/CastExprMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/CastExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/CastExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->type:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    return-object v0
.end method

.method public ifCastExpr(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;",
            ">;)V"
        }
    .end annotation

    .line 172
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 173
    return-void
.end method

.method public isCastExpr()Z
    .locals 1

    .line 161
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

    .line 125
    if-nez p1, :cond_0

    .line 126
    const/4 v0, 0x0

    return v0

    .line 127
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

    .line 145
    if-nez p1, :cond_0

    .line 146
    const/4 v0, 0x0

    return v0

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->expression:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 148
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->setExpression(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;

    .line 149
    return v1

    .line 151
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->type:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    if-ne p1, v0, :cond_2

    .line 152
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;

    .line 153
    return v1

    .line 155
    :cond_2
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

    .line 46
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->setExpression(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;

    move-result-object p1

    return-object p1
.end method

.method public setExpression(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;
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

    .line 96
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->expression:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_0

    .line 98
    return-object p0

    .line 100
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->EXPRESSION:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->expression:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->expression:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    .line 102
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 103
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->expression:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 104
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 105
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

    .line 46
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;

    move-result-object p1

    return-object p1
.end method

.method public setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;
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

    .line 110
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->type:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    if-ne p1, v0, :cond_0

    .line 112
    return-object p0

    .line 114
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->type:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->type:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    if-eqz v0, :cond_1

    .line 116
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 117
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->type:Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 118
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 119
    return-object p0
.end method

.method public toCastExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;",
            ">;"
        }
    .end annotation

    .line 178
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
