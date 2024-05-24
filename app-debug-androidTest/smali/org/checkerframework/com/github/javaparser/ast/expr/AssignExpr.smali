.class public Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;
.super Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
.source "AssignExpr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;
    }
.end annotation


# instance fields
.field private operator:Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;

.field private target:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

.field private value:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 112
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;-><init>()V

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;-><init>()V

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;->ASSIGN:Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "target"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p3, "value"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p4, "operator"    # Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "target",
            "value",
            "operator"
        }
    .end annotation

    .line 125
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 126
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->setTarget(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;

    .line 127
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->setValue(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;

    .line 128
    invoke-virtual {p0, p4}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->setOperator(Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;)Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;

    .line 129
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->customInitialization()V

    .line 130
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;)V
    .locals 1
    .param p1, "target"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p2, "value"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p3, "operator"    # Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "target",
            "value",
            "operator"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;)V

    .line 118
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

    .line 135
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 141
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method public asAssignExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;
    .locals 0

    .line 243
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
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;
    .locals 2

    .line 209
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/AssignExprMetaModel;
    .locals 1

    .line 215
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->assignExprMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/AssignExprMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/AssignExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/AssignExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getOperator()Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->operator:Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;

    return-object v0
.end method

.method public getTarget()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->target:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    return-object v0
.end method

.method public getValue()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->value:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    return-object v0
.end method

.method public ifAssignExpr(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;",
            ">;)V"
        }
    .end annotation

    .line 248
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 249
    return-void
.end method

.method public isAssignExpr()Z
    .locals 1

    .line 237
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

    .line 201
    if-nez p1, :cond_0

    .line 202
    const/4 v0, 0x0

    return v0

    .line 203
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

    .line 221
    if-nez p1, :cond_0

    .line 222
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->target:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 224
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->setTarget(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;

    .line 225
    return v1

    .line 227
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->value:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_2

    .line 228
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->setValue(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;

    .line 229
    return v1

    .line 231
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public setOperator(Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;)Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;
    .locals 2
    .param p1, "operator"    # Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "operator"
        }
    .end annotation

    .line 161
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->operator:Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;

    if-ne p1, v0, :cond_0

    .line 163
    return-object p0

    .line 165
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->OPERATOR:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->operator:Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->operator:Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;

    .line 167
    return-object p0
.end method

.method public setTarget(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;
    .locals 2
    .param p1, "target"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "target"
        }
    .end annotation

    .line 172
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->target:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_0

    .line 174
    return-object p0

    .line 176
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TARGET:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->target:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->target:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    .line 178
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 179
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->target:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 180
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 181
    return-object p0
.end method

.method public setValue(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;
    .locals 2
    .param p1, "value"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 186
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->value:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_0

    .line 188
    return-object p0

    .line 190
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->VALUE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->value:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->value:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    .line 192
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 193
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->value:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 194
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 195
    return-object p0
.end method

.method public toAssignExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;",
            ">;"
        }
    .end annotation

    .line 254
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
