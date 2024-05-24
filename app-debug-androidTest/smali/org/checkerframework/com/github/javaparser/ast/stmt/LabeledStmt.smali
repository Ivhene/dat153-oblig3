.class public Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;
.super Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
.source "LabeledStmt.java"


# instance fields
.field private label:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

.field private statement:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 50
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;-><init>()V

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "statement"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "label",
            "statement"
        }
    .end annotation

    .line 54
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "label"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .param p3, "statement"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "label",
            "statement"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 68
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->setLabel(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;

    .line 69
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->setStatement(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;

    .line 70
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->customInitialization()V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)V
    .locals 1
    .param p1, "label"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .param p2, "statement"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "label",
            "statement"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)V

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
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public asLabeledStmt()Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;
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

    .line 43
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;
    .locals 2

    .line 134
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->label:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/LabeledStmtMetaModel;
    .locals 1

    .line 140
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->labeledStmtMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/LabeledStmtMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/LabeledStmtMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/StatementMetaModel;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/LabeledStmtMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getStatement()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->statement:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    return-object v0
.end method

.method public ifLabeledStmt(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;",
            ">;)V"
        }
    .end annotation

    .line 173
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method public isLabeledStmt()Z
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
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

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
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->label:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 149
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->setLabel(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;

    .line 150
    return v1

    .line 152
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->statement:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    if-ne p1, v0, :cond_2

    .line 153
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->setStatement(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;

    .line 154
    return v1

    .line 156
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public setLabel(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;
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
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->label:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    if-ne p1, v0, :cond_0

    .line 113
    return-object p0

    .line 115
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->LABEL:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->label:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->label:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    if-eqz v0, :cond_1

    .line 117
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 118
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->label:Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 119
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 120
    return-object p0
.end method

.method public setStatement(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;
    .locals 2
    .param p1, "statement"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "statement"
        }
    .end annotation

    .line 92
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->statement:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    if-ne p1, v0, :cond_0

    .line 94
    return-object p0

    .line 96
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->STATEMENT:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->statement:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->statement:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    if-eqz v0, :cond_1

    .line 98
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 99
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->statement:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    .line 100
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 101
    return-object p0
.end method

.method public toLabeledStmt()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;",
            ">;"
        }
    .end annotation

    .line 179
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
