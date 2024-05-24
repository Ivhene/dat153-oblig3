.class public Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;
.super Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
.source "TryStmt.java"


# instance fields
.field private catchClauses:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;",
            ">;"
        }
    .end annotation
.end field

.field private finallyBlock:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field

.field private resources:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation
.end field

.field private tryBlock:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 107
    const/4 v1, 0x0

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;-><init>()V

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p3, "tryBlock"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .param p5, "finallyBlock"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "resources",
            "tryBlock",
            "catchClauses",
            "finallyBlock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;",
            ")V"
        }
    .end annotation

    .line 124
    .local p2, "resources":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    .local p4, "catchClauses":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 125
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->setResources(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;

    .line 126
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->setTryBlock(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;

    .line 127
    invoke-virtual {p0, p4}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->setCatchClauses(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;

    .line 128
    invoke-virtual {p0, p5}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->setFinallyBlock(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;

    .line 129
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->customInitialization()V

    .line 130
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)V
    .locals 6
    .param p2, "tryBlock"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .param p4, "finallyBlock"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "resources",
            "tryBlock",
            "catchClauses",
            "finallyBlock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;",
            ")V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 116
    .local p1, "resources":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    .local p3, "catchClauses":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;>;"
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)V
    .locals 6
    .param p1, "tryBlock"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .param p3, "finallyBlock"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "tryBlock",
            "catchClauses",
            "finallyBlock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;",
            ")V"
        }
    .end annotation

    .line 111
    .local p2, "catchClauses":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;>;"
    const/4 v1, 0x0

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)V

    .line 112
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
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method public asTryStmt()Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;
    .locals 0

    .line 306
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;
    .locals 2

    .line 258
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;

    return-object v0
.end method

.method public getCatchClauses()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->catchClauses:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getFinallyBlock()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->finallyBlock:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/TryStmtMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/StatementMetaModel;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/TryStmtMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/TryStmtMetaModel;
    .locals 1

    .line 264
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->tryStmtMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/TryStmtMetaModel;

    return-object v0
.end method

.method public getResources()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->resources:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getTryBlock()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->tryBlock:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    return-object v0
.end method

.method public ifTryStmt(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;",
            ">;)V"
        }
    .end annotation

    .line 311
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 312
    return-void
.end method

.method public isTryStmt()Z
    .locals 1

    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method public remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 3
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 222
    if-nez p1, :cond_0

    .line 223
    const/4 v0, 0x0

    return v0

    .line 224
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->catchClauses:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    .line 225
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->catchClauses:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 226
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->catchClauses:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 227
    return v2

    .line 224
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->finallyBlock:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    if-eqz v0, :cond_3

    .line 231
    if-ne p1, v0, :cond_3

    .line 232
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->removeFinallyBlock()Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;

    .line 233
    return v2

    .line 236
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->resources:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 237
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->resources:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_4

    .line 238
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->resources:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 239
    return v2

    .line 236
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 242
    .end local v0    # "i":I
    :cond_5
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public removeFinallyBlock()Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;
    .locals 2

    .line 247
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->setFinallyBlock(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;

    move-result-object v0

    return-object v0
.end method

.method public removeTryBlock()Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;
    .locals 2

    .line 252
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->setTryBlock(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;

    move-result-object v0

    return-object v0
.end method

.method public replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 4
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

    .line 270
    if-nez p1, :cond_0

    .line 271
    const/4 v0, 0x0

    return v0

    .line 272
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->catchClauses:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    .line 273
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->catchClauses:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 274
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->catchClauses:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;

    invoke-virtual {v1, v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 275
    return v2

    .line 272
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->finallyBlock:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    if-eqz v0, :cond_3

    .line 279
    if-ne p1, v0, :cond_3

    .line 280
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->setFinallyBlock(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;

    .line 281
    return v2

    .line 284
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->resources:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 285
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->resources:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_4

    .line 286
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->resources:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {v1, v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 287
    return v2

    .line 284
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 290
    .end local v0    # "i":I
    :cond_5
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->tryBlock:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    if-ne p1, v0, :cond_6

    .line 291
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->setTryBlock(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;

    .line 292
    return v2

    .line 294
    :cond_6
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public setCatchClauses(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "catchClauses"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;"
        }
    .end annotation

    .line 166
    .local p1, "catchClauses":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->catchClauses:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 168
    return-object p0

    .line 170
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->CATCH_CLAUSES:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->catchClauses:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->catchClauses:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 172
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 173
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->catchClauses:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 174
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 175
    return-object p0
.end method

.method public setFinallyBlock(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;
    .locals 2
    .param p1, "finallyBlock"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "finallyBlock"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->finallyBlock:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    if-ne p1, v0, :cond_0

    .line 181
    return-object p0

    .line 183
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->FINALLY_BLOCK:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->finallyBlock:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->finallyBlock:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    if-eqz v0, :cond_1

    .line 185
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 186
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->finallyBlock:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    .line 187
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 188
    return-object p0
.end method

.method public setResources(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resources"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;"
        }
    .end annotation

    .line 207
    .local p1, "resources":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->resources:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 209
    return-object p0

    .line 211
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->RESOURCES:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->resources:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->resources:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 213
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 214
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->resources:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 215
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 216
    return-object p0
.end method

.method public setTryBlock(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;
    .locals 2
    .param p1, "tryBlock"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tryBlock"
        }
    .end annotation

    .line 193
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->tryBlock:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    if-ne p1, v0, :cond_0

    .line 195
    return-object p0

    .line 197
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TRY_BLOCK:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->tryBlock:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->tryBlock:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    if-eqz v0, :cond_1

    .line 199
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 200
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->tryBlock:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    .line 201
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 202
    return-object p0
.end method

.method public toTryStmt()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;",
            ">;"
        }
    .end annotation

    .line 317
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
