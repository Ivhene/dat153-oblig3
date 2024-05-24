.class public Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;
.super Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
.source "InstanceOfExpr.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithType;
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExpression;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithType<",
        "Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;",
        "Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;",
        ">;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithExpression<",
        "Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;",
        ">;"
    }
.end annotation


# instance fields
.field private expression:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

.field private type:Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 54
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;-><init>()V

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "expression"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p3, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "expression",
            "type"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 68
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->setExpression(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;

    .line 69
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;

    .line 70
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->customInitialization()V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)V
    .locals 1
    .param p1, "expression"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p2, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "expression",
            "type"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)V

    .line 60
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
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public asInstanceOfExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;
    .locals 0

    .line 168
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;
    .locals 2

    .line 134
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;

    return-object v0
.end method

.method public getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->expression:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/InstanceOfExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/InstanceOfExprMetaModel;
    .locals 1

    .line 140
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->instanceOfExprMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/InstanceOfExprMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/InstanceOfExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->type:Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    return-object v0
.end method

.method public bridge synthetic getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    move-result-object v0

    return-object v0
.end method

.method public ifInstanceOfExpr(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;",
            ">;)V"
        }
    .end annotation

    .line 173
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method public isInstanceOfExpr()Z
    .locals 1

    .line 162
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

    .line 126
    if-nez p1, :cond_0

    .line 127
    const/4 v0, 0x0

    return v0

    .line 128
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

    .line 146
    if-nez p1, :cond_0

    .line 147
    const/4 v0, 0x0

    return v0

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->expression:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 149
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->setExpression(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;

    .line 150
    return v1

    .line 152
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->type:Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    if-ne p1, v0, :cond_2

    .line 153
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;

    .line 154
    return v1

    .line 156
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

    .line 47
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->setExpression(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;

    move-result-object p1

    return-object p1
.end method

.method public setExpression(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;
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

    .line 97
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->expression:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_0

    .line 99
    return-object p0

    .line 101
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->EXPRESSION:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->expression:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->expression:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    .line 103
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 104
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->expression:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 105
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 106
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

    .line 47
    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;

    move-result-object p1

    return-object p1
.end method

.method public setType(Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 111
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->type:Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    if-ne p1, v0, :cond_0

    .line 113
    return-object p0

    .line 115
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->type:Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->type:Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    if-eqz v0, :cond_1

    .line 117
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 118
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->type:Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    .line 119
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 120
    return-object p0
.end method

.method public toInstanceOfExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;",
            ">;"
        }
    .end annotation

    .line 179
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
