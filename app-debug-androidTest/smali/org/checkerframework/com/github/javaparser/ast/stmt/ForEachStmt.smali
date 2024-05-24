.class public Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;
.super Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
.source "ForEachStmt.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithBody<",
        "Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;",
        ">;"
    }
.end annotation


# instance fields
.field private body:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

.field private iterable:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

.field private variable:Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 59
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;-><init>()V

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;-><init>()V

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;-><init>()V

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "variable"    # Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;
    .param p3, "iterable"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p4, "body"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "variable",
            "iterable",
            "body"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 73
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->setVariable(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;

    .line 74
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->setIterable(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;

    .line 75
    invoke-virtual {p0, p4}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;

    .line 76
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->customInitialization()V

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)V
    .locals 2
    .param p1, "variable"    # Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;
    .param p2, "iterable"    # Ljava/lang/String;
    .param p3, "body"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "variable",
            "iterable",
            "body"
        }
    .end annotation

    .line 80
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;

    invoke-direct {v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0, p3}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)V
    .locals 1
    .param p1, "variable"    # Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;
    .param p2, "iterable"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .param p3, "body"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "variable",
            "iterable",
            "body"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)V

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

    .line 86
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 92
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public asForEachStmt()Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;
    .locals 0

    .line 224
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;
    .locals 2

    .line 192
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    return-object v0
.end method

.method public getIterable()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->iterable:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ForEachStmtMetaModel;
    .locals 1

    .line 241
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->forEachStmtMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/ForEachStmtMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ForEachStmtMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/StatementMetaModel;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ForEachStmtMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getVariable()Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->variable:Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    return-object v0
.end method

.method public getVariableDeclarator()Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .locals 2

    .line 163
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getVariable()Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getVariable(I)Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    move-result-object v0

    return-object v0
.end method

.method public hasFinalVariable()Z
    .locals 3

    .line 178
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getVariable()Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isNonEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getVariable()Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Modifier;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->getKeyword()Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    move-result-object v0

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->FINAL:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public ifForEachStmt(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;",
            ">;)V"
        }
    .end annotation

    .line 235
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 236
    return-void
.end method

.method public isForEachStmt()Z
    .locals 1

    .line 218
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

    .line 184
    if-nez p1, :cond_0

    .line 185
    const/4 v0, 0x0

    return v0

    .line 186
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

    .line 198
    if-nez p1, :cond_0

    .line 199
    const/4 v0, 0x0

    return v0

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 201
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;

    .line 202
    return v1

    .line 204
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->iterable:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_2

    .line 205
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->setIterable(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;

    .line 206
    return v1

    .line 208
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->variable:Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    if-ne p1, v0, :cond_3

    .line 209
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->setVariable(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;

    .line 210
    return v1

    .line 212
    :cond_3
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

    .line 50
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;

    move-result-object p1

    return-object p1
.end method

.method public setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;
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

    .line 112
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    if-ne p1, v0, :cond_0

    .line 114
    return-object p0

    .line 116
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->BODY:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    if-eqz v0, :cond_1

    .line 118
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 119
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    .line 120
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 121
    return-object p0
.end method

.method public setIterable(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;
    .locals 2
    .param p1, "iterable"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "iterable"
        }
    .end annotation

    .line 126
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->iterable:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-ne p1, v0, :cond_0

    .line 128
    return-object p0

    .line 130
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ITERABLE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->iterable:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->iterable:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    if-eqz v0, :cond_1

    .line 132
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 133
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->iterable:Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 134
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 135
    return-object p0
.end method

.method public setVariable(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;
    .locals 2
    .param p1, "variable"    # Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "variable"
        }
    .end annotation

    .line 140
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->variable:Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    if-ne p1, v0, :cond_0

    .line 142
    return-object p0

    .line 144
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->VARIABLE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->variable:Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->variable:Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    if-eqz v0, :cond_1

    .line 146
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 147
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->variable:Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    .line 148
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 149
    return-object p0
.end method

.method public toForEachStmt()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;",
            ">;"
        }
    .end annotation

    .line 230
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
