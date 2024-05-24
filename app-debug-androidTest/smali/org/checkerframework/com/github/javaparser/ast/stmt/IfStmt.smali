.class public Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;
.super Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
.source "IfStmt.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithCondition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithCondition<",
        "Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;",
        ">;"
    }
.end annotation


# instance fields
.field private condition:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

.field private elseStmt:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field

.field private thenStmt:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 59
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;-><init>()V

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "condition"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p3, "thenStmt"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .param p4, "elseStmt"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
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
            "thenStmt",
            "elseStmt"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 73
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->setCondition(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;

    .line 74
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->setThenStmt(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;

    .line 75
    invoke-virtual {p0, p4}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->setElseStmt(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;

    .line 76
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->customInitialization()V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)V
    .locals 1
    .param p1, "condition"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p2, "thenStmt"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .param p3, "elseStmt"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "condition",
            "thenStmt",
            "elseStmt"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)V

    .line 65
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

    .line 82
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 88
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public asIfStmt()Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;
    .locals 0

    .line 247
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;
    .locals 2

    .line 207
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;

    move-result-object v0

    return-object v0
.end method

.method public getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->condition:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    return-object v0
.end method

.method public getElseStmt()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->elseStmt:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/IfStmtMetaModel;
    .locals 1

    .line 213
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->ifStmtMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/IfStmtMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/IfStmtMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/StatementMetaModel;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/IfStmtMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getThenStmt()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->thenStmt:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    return-object v0
.end method

.method public hasCascadingIfStmt()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/DerivedProperty;
    .end annotation

    .line 193
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->elseStmt:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;

    return v0
.end method

.method public hasElseBlock()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/DerivedProperty;
    .end annotation

    .line 185
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->elseStmt:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    return v0
.end method

.method public hasElseBranch()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/DerivedProperty;
    .end annotation

    .line 201
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->elseStmt:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasThenBlock()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/DerivedProperty;
    .end annotation

    .line 177
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->thenStmt:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    return v0
.end method

.method public ifIfStmt(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;",
            ">;)V"
        }
    .end annotation

    .line 252
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 253
    return-void
.end method

.method public isIfStmt()Z
    .locals 1

    .line 241
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

    .line 156
    if-nez p1, :cond_0

    .line 157
    const/4 v0, 0x0

    return v0

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->elseStmt:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    if-eqz v0, :cond_1

    .line 159
    if-ne p1, v0, :cond_1

    .line 160
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->removeElseStmt()Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;

    .line 161
    const/4 v0, 0x1

    return v0

    .line 164
    :cond_1
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public removeElseStmt()Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;
    .locals 2

    .line 169
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->setElseStmt(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;

    move-result-object v0

    return-object v0
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

    .line 219
    if-nez p1, :cond_0

    .line 220
    const/4 v0, 0x0

    return v0

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->condition:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 222
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->setCondition(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;

    .line 223
    return v1

    .line 225
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->elseStmt:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    if-eqz v0, :cond_2

    .line 226
    if-ne p1, v0, :cond_2

    .line 227
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->setElseStmt(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;

    .line 228
    return v1

    .line 231
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->thenStmt:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    if-ne p1, v0, :cond_3

    .line 232
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->setThenStmt(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;

    .line 233
    return v1

    .line 235
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

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

    .line 49
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->setCondition(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;

    move-result-object p1

    return-object p1
.end method

.method public setCondition(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;
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

    .line 108
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->condition:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_0

    .line 110
    return-object p0

    .line 112
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->CONDITION:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->condition:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->condition:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    .line 114
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 115
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->condition:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 116
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 117
    return-object p0
.end method

.method public setElseStmt(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;
    .locals 2
    .param p1, "elseStmt"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "elseStmt"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->elseStmt:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    if-ne p1, v0, :cond_0

    .line 129
    return-object p0

    .line 131
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ELSE_STMT:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->elseStmt:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->elseStmt:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    if-eqz v0, :cond_1

    .line 133
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 134
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->elseStmt:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    .line 135
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 136
    return-object p0
.end method

.method public setThenStmt(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;
    .locals 2
    .param p1, "thenStmt"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "thenStmt"
        }
    .end annotation

    .line 141
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->thenStmt:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    if-ne p1, v0, :cond_0

    .line 143
    return-object p0

    .line 145
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->THEN_STMT:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->thenStmt:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->thenStmt:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    if-eqz v0, :cond_1

    .line 147
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 148
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->thenStmt:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    .line 149
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 150
    return-object p0
.end method

.method public toIfStmt()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;",
            ">;"
        }
    .end annotation

    .line 258
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
