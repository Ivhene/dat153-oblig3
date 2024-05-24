.class public Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;
.super Lorg/checkerframework/com/github/javaparser/ast/Node;
.source "CatchClause.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithBlockStmt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/Node;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithBlockStmt<",
        "Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;",
        ">;"
    }
.end annotation


# instance fields
.field private body:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

.field private parameter:Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 53
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;-><init>()V

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "parameter"    # Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .param p3, "body"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "parameter",
            "body"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 71
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->setParameter(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;)Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;

    .line 72
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;

    .line 73
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->customInitialization()V

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)V
    .locals 9
    .param p3, "exceptType"    # Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    .param p4, "exceptName"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .param p5, "body"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "exceptModifier",
            "exceptAnnotations",
            "exceptType",
            "exceptName",
            "body"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;",
            ")V"
        }
    .end annotation

    .line 57
    .local p1, "exceptModifier":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    .local p2, "exceptAnnotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    new-instance v8, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    const/4 v1, 0x0

    const/4 v5, 0x0

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v6}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/type/Type;ZLorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v8, p5}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)V
    .locals 1
    .param p1, "parameter"    # Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .param p2, "body"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "parameter",
            "body"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)V

    .line 63
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

    .line 79
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 85
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;
    .locals 2

    .line 142
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;

    return-object v0
.end method

.method public getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/CatchClauseMetaModel;
    .locals 1

    .line 148
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->catchClauseMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/CatchClauseMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/CatchClauseMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getParameter()Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->parameter:Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    return-object v0
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

    .line 134
    if-nez p1, :cond_0

    .line 135
    const/4 v0, 0x0

    return v0

    .line 136
    :cond_0
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

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

    .line 154
    if-nez p1, :cond_0

    .line 155
    const/4 v0, 0x0

    return v0

    .line 156
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 157
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;

    .line 158
    return v1

    .line 160
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->parameter:Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    if-ne p1, v0, :cond_2

    .line 161
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->setParameter(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;)Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;

    .line 162
    return v1

    .line 164
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "body"
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;

    move-result-object p1

    return-object p1
.end method

.method public setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;
    .locals 2
    .param p1, "body"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "body"
        }
    .end annotation

    .line 119
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    if-ne p1, v0, :cond_0

    .line 121
    return-object p0

    .line 123
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->BODY:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    if-eqz v0, :cond_1

    .line 125
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 126
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    .line 127
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 128
    return-object p0
.end method

.method public setParameter(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;)Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;
    .locals 2
    .param p1, "parameter"    # Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "parameter"
        }
    .end annotation

    .line 100
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->parameter:Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    if-ne p1, v0, :cond_0

    .line 102
    return-object p0

    .line 104
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->PARAMETER:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->parameter:Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->parameter:Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    if-eqz v0, :cond_1

    .line 106
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 107
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->parameter:Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    .line 108
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 109
    return-object p0
.end method
