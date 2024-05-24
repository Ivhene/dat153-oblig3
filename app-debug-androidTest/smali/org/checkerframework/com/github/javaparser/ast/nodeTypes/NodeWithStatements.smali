.class public interface abstract Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;
.super Ljava/lang/Object;
.source "NodeWithStatements.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lorg/checkerframework/com/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public addAndGetStatement(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;
    .locals 1
    .param p1, "statement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statement"
        }
    .end annotation

    .line 96
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements<TN;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;

    invoke-direct {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;->addAndGetStatement(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;

    move-result-object v0

    return-object v0
.end method

.method public addAndGetStatement(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;
    .locals 2
    .param p1, "expr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expr"
        }
    .end annotation

    .line 91
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements<TN;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;

    invoke-direct {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    .line 92
    .local v0, "statement":Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;
    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;->addAndGetStatement(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;

    return-object v1
.end method

.method public addAndGetStatement(ILorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .locals 1
    .param p1, "index"    # I
    .param p2, "statement"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "index",
            "statement"
        }
    .end annotation

    .line 86
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;->getStatements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(ILorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 87
    return-object p2
.end method

.method public addAndGetStatement(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;",
            ">(TA;)TA;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements<TN;>;"
    .local p1, "statement":Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;, "TA;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;->getStatements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 82
    return-object p1
.end method

.method public addStatement(ILorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 2
    .param p1, "index"    # I
    .param p2, "expr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "index",
            "expr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ")TN;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements<TN;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;

    invoke-direct {v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    .line 77
    .local v0, "stmt":Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    invoke-interface {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;->addStatement(ILorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    return-object v1
.end method

.method public addStatement(ILorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "index"    # I
    .param p2, "statement"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "index",
            "statement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;",
            ")TN;"
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;->getStatements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(ILorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 61
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v0
.end method

.method public addStatement(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "statement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TN;"
        }
    .end annotation

    .line 72
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements<TN;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->parseStatement(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;->addStatement(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public addStatement(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "expr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ")TN;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements<TN;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;

    invoke-direct {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;->addStatement(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public addStatement(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "statement"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;",
            ")TN;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;->getStatements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 55
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v0
.end method

.method public copyStatements(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;",
            ">;)TN;"
        }
    .end annotation

    .line 108
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements<TN;>;"
    .local p1, "nodeList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    .line 109
    .local v1, "n":Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v2

    invoke-interface {p0, v2}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;->addStatement(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 110
    .end local v1    # "n":Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    goto :goto_0

    .line 111
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v0
.end method

.method public copyStatements(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements<",
            "*>;)TN;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements<TN;>;"
    .local p1, "other":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements<*>;"
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;->getStatements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;->copyStatements(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public getStatement(I)Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 41
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;->getStatements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    return-object v0
.end method

.method public abstract getStatements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;",
            ">;"
        }
    .end annotation
.end method

.method public isEmpty()Z
    .locals 1

    .line 103
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;->getStatements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public setStatement(ILorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "i"    # I
    .param p2, "statement"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "statement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;",
            ")TN;"
        }
    .end annotation

    .line 46
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements<TN;>;"
    invoke-interface {p0}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithStatements;->getStatements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 47
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v0
.end method

.method public abstract setStatements(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
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
            ">;)TN;"
        }
    .end annotation
.end method
