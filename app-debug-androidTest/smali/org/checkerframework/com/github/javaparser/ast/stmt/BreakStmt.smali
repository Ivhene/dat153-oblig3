.class public Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;
.super Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
.source "BreakStmt.java"


# instance fields
.field private label:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 64
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "label"
        }
    .end annotation

    .line 68
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "label"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "label"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 82
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->setLabel(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;

    .line 83
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->customInitialization()V

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)V
    .locals 1
    .param p1, "label"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "label"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)V

    .line 74
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

    .line 89
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 95
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public asBreakStmt()Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;
    .locals 0

    .line 176
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;
    .locals 2

    .line 144
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->label:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/BreakStmtMetaModel;
    .locals 1

    .line 150
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->breakStmtMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/BreakStmtMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/BreakStmtMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/StatementMetaModel;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/BreakStmtMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public ifBreakStmt(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;",
            ">;)V"
        }
    .end annotation

    .line 181
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method public isBreakStmt()Z
    .locals 1

    .line 170
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
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->label:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    if-eqz v0, :cond_1

    .line 128
    if-ne p1, v0, :cond_1

    .line 129
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->removeLabel()Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;

    .line 130
    const/4 v0, 0x1

    return v0

    .line 133
    :cond_1
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public removeLabel()Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;
    .locals 2

    .line 138
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->setLabel(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;

    move-result-object v0

    return-object v0
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

    .line 156
    if-nez p1, :cond_0

    .line 157
    const/4 v0, 0x0

    return v0

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->label:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    if-eqz v0, :cond_1

    .line 159
    if-ne p1, v0, :cond_1

    .line 160
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->setLabel(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;

    .line 161
    const/4 v0, 0x1

    return v0

    .line 164
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public setLabel(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;
    .locals 2
    .param p1, "label"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "label"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->label:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    if-ne p1, v0, :cond_0

    .line 112
    return-object p0

    .line 114
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->LABEL:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->label:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->label:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    if-eqz v0, :cond_1

    .line 116
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 117
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->label:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 118
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 119
    return-object p0
.end method

.method public toBreakStmt()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;",
            ">;"
        }
    .end annotation

    .line 187
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
