.class public Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;
.super Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
.source "BinaryExpr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;
    }
.end annotation


# instance fields
.field private left:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

.field private operator:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

.field private right:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 117
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;-><init>()V

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;-><init>()V

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;->EQUALS:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "left"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p3, "right"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p4, "operator"    # Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "left",
            "right",
            "operator"
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 131
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->setLeft(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;

    .line 132
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->setRight(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;

    .line 133
    invoke-virtual {p0, p4}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->setOperator(Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;)Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;

    .line 134
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->customInitialization()V

    .line 135
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;)V
    .locals 1
    .param p1, "left"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p2, "right"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p3, "operator"    # Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "right",
            "operator"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;)V

    .line 123
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

    .line 140
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 146
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method public asBinaryExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;
    .locals 0

    .line 248
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
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;
    .locals 2

    .line 214
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->left:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/BinaryExprMetaModel;
    .locals 1

    .line 220
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->binaryExprMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/BinaryExprMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/BinaryExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/BinaryExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getOperator()Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->operator:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    return-object v0
.end method

.method public getRight()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->right:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    return-object v0
.end method

.method public ifBinaryExpr(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;",
            ">;)V"
        }
    .end annotation

    .line 253
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 254
    return-void
.end method

.method public isBinaryExpr()Z
    .locals 1

    .line 242
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

    .line 206
    if-nez p1, :cond_0

    .line 207
    const/4 v0, 0x0

    return v0

    .line 208
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

    .line 226
    if-nez p1, :cond_0

    .line 227
    const/4 v0, 0x0

    return v0

    .line 228
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->left:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 229
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->setLeft(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;

    .line 230
    return v1

    .line 232
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->right:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_2

    .line 233
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->setRight(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;

    .line 234
    return v1

    .line 236
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public setLeft(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;
    .locals 2
    .param p1, "left"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "left"
        }
    .end annotation

    .line 166
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->left:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_0

    .line 168
    return-object p0

    .line 170
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->LEFT:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->left:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->left:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    .line 172
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 173
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->left:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 174
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 175
    return-object p0
.end method

.method public setOperator(Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;)Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;
    .locals 2
    .param p1, "operator"    # Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "operator"
        }
    .end annotation

    .line 180
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->operator:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    if-ne p1, v0, :cond_0

    .line 182
    return-object p0

    .line 184
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->OPERATOR:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->operator:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->operator:Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    .line 186
    return-object p0
.end method

.method public setRight(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;
    .locals 2
    .param p1, "right"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "right"
        }
    .end annotation

    .line 191
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->right:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_0

    .line 193
    return-object p0

    .line 195
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->RIGHT:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->right:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->right:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    .line 197
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 198
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->right:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 199
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 200
    return-object p0
.end method

.method public toBinaryExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;",
            ">;"
        }
    .end annotation

    .line 259
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
