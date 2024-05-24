.class public Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
.super Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
.source "BlockStmt.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements<",
        "Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;",
        ">;"
    }
.end annotation


# instance fields
.field private statements:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "statements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p2, "statements":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 63
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->setStatements(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    .line 64
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->customInitialization()V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "statements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 54
    .local p1, "statements":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 55
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

    .line 70
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 76
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public asBlockStmt()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .locals 0

    .line 147
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
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .locals 2

    .line 115
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/BlockStmtMetaModel;
    .locals 1

    .line 121
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->blockStmtMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/BlockStmtMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/BlockStmtMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/StatementMetaModel;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/BlockStmtMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getStatements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->statements:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public ifBlockStmt(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;",
            ">;)V"
        }
    .end annotation

    .line 152
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method public isBlockStmt()Z
    .locals 1

    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 101
    if-nez p1, :cond_0

    .line 102
    const/4 v0, 0x0

    return v0

    .line 103
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->statements:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 104
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->statements:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 105
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->statements:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 106
    const/4 v1, 0x1

    return v1

    .line 103
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "i":I
    :cond_2
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 3
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

    .line 127
    if-nez p1, :cond_0

    .line 128
    const/4 v0, 0x0

    return v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->statements:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 130
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->statements:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 131
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->statements:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v2, p2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    invoke-virtual {v1, v0, v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 132
    const/4 v1, 0x1

    return v1

    .line 129
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "i":I
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setStatements(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "statements"
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->setStatements(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object p1

    return-object p1
.end method

.method public setStatements(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "statements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;"
        }
    .end annotation

    .line 86
    .local p1, "statements":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->statements:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 88
    return-object p0

    .line 90
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->STATEMENTS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->statements:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->statements:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 92
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 93
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->statements:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 94
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 95
    return-object p0
.end method

.method public toBlockStmt()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;",
            ">;"
        }
    .end annotation

    .line 158
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
