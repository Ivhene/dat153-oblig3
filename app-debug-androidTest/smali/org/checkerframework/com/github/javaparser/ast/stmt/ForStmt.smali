.class public Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;
.super Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
.source "ForStmt.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithBody<",
        "Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;",
        ">;"
    }
.end annotation


# instance fields
.field private body:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

.field private compare:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field

.field private initialization:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation
.end field

.field private update:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 81
    const/4 v1, 0x0

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;-><init>()V

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p3, "compare"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p5, "body"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
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
            "initialization",
            "compare",
            "update",
            "body"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;",
            ")V"
        }
    .end annotation

    .line 94
    .local p2, "initialization":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    .local p4, "update":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 95
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->setInitialization(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;

    .line 96
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->setCompare(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;

    .line 97
    invoke-virtual {p0, p4}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->setUpdate(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;

    .line 98
    invoke-virtual {p0, p5}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;

    .line 99
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->customInitialization()V

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)V
    .locals 6
    .param p2, "compare"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p4, "body"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "initialization",
            "compare",
            "update",
            "body"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;",
            ")V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 86
    .local p1, "initialization":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    .local p3, "update":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)V

    .line 87
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

    .line 105
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 111
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public asForStmt()Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;
    .locals 0

    .line 277
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;
    .locals 2

    .line 229
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    return-object v0
.end method

.method public getCompare()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->compare:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getInitialization()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->initialization:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ForStmtMetaModel;
    .locals 1

    .line 235
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->forStmtMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/ForStmtMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ForStmtMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/StatementMetaModel;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ForStmtMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getUpdate()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->update:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public ifForStmt(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;",
            ">;)V"
        }
    .end annotation

    .line 282
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 283
    return-void
.end method

.method public isForStmt()Z
    .locals 1

    .line 271
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

    .line 198
    if-nez p1, :cond_0

    .line 199
    const/4 v0, 0x0

    return v0

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->compare:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 201
    if-ne p1, v0, :cond_1

    .line 202
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->removeCompare()Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;

    .line 203
    return v1

    .line 206
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->initialization:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 207
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->initialization:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 208
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->initialization:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 209
    return v1

    .line 206
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->update:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 213
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->update:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_4

    .line 214
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->update:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 215
    return v1

    .line 212
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 218
    .end local v0    # "i":I
    :cond_5
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public removeCompare()Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;
    .locals 2

    .line 223
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->setCompare(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;

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

    .line 241
    if-nez p1, :cond_0

    .line 242
    const/4 v0, 0x0

    return v0

    .line 243
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 244
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;

    .line 245
    return v1

    .line 247
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->compare:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_2

    .line 248
    if-ne p1, v0, :cond_2

    .line 249
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->setCompare(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;

    .line 250
    return v1

    .line 253
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->initialization:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 254
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->initialization:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_3

    .line 255
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->initialization:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {v2, v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 256
    return v1

    .line 253
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->update:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 260
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->update:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_5

    .line 261
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->update:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {v2, v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 262
    return v1

    .line 259
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 265
    .end local v0    # "i":I
    :cond_6
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "body"
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;

    move-result-object p1

    return-object p1
.end method

.method public setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;
    .locals 2
    .param p1, "body"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "body"
        }
    .end annotation

    .line 136
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    if-ne p1, v0, :cond_0

    .line 138
    return-object p0

    .line 140
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->BODY:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    if-eqz v0, :cond_1

    .line 142
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 143
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    .line 144
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 145
    return-object p0
.end method

.method public setCompare(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;
    .locals 2
    .param p1, "compare"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "compare"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->compare:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_0

    .line 157
    return-object p0

    .line 159
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->COMPARE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->compare:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->compare:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    .line 161
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 162
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->compare:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 163
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 164
    return-object p0
.end method

.method public setInitialization(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "initialization"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;"
        }
    .end annotation

    .line 169
    .local p1, "initialization":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->initialization:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 171
    return-object p0

    .line 173
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->INITIALIZATION:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->initialization:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->initialization:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 175
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 176
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->initialization:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 177
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 178
    return-object p0
.end method

.method public setUpdate(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "update"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;"
        }
    .end annotation

    .line 183
    .local p1, "update":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->update:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 185
    return-object p0

    .line 187
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->UPDATE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->update:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->update:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 189
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 190
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->update:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 191
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 192
    return-object p0
.end method

.method public toForStmt()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;",
            ">;"
        }
    .end annotation

    .line 288
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
