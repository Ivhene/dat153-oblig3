.class public Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;
.super Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
.source "UnparsableStmt.java"


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tokenRange"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 33
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;->customInitialization()V

    .line 34
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

    .line 39
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 45
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public asUnparsableStmt()Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;
    .locals 0

    .line 90
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;->clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;->clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;->clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;
    .locals 2

    .line 59
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/UnparsableStmtMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/StatementMetaModel;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/UnparsableStmtMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/UnparsableStmtMetaModel;
    .locals 1

    .line 65
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->unparsableStmtMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/UnparsableStmtMetaModel;

    return-object v0
.end method

.method public getParsed()Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;
    .locals 1

    .line 70
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;->UNPARSABLE:Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;

    return-object v0
.end method

.method public ifUnparsableStmt(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;",
            ">;)V"
        }
    .end annotation

    .line 95
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public isUnparsableStmt()Z
    .locals 1

    .line 84
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

    .line 51
    if-nez p1, :cond_0

    .line 52
    const/4 v0, 0x0

    return v0

    .line 53
    :cond_0
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

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

    .line 76
    if-nez p1, :cond_0

    .line 77
    const/4 v0, 0x0

    return v0

    .line 78
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public toUnparsableStmt()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;",
            ">;"
        }
    .end annotation

    .line 101
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
