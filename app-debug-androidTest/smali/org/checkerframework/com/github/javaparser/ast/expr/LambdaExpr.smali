.class public Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;
.super Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
.source "LambdaExpr.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
        "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithParameters<",
        "Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;",
        ">;"
    }
.end annotation


# instance fields
.field private body:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

.field private isEnclosingParameters:Z

.field private parameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 70
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;Z)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;Z)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p3, "body"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .param p4, "isEnclosingParameters"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "parameters",
            "body",
            "isEnclosingParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;",
            "Z)V"
        }
    .end annotation

    .line 111
    .local p2, "parameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 112
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->setParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;

    .line 113
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;

    .line 114
    invoke-virtual {p0, p4}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->setEnclosingParameters(Z)Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;

    .line 115
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->customInitialization()V

    .line 116
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V
    .locals 3
    .param p2, "body"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "body"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ")V"
        }
    .end annotation

    .line 98
    .local p1, "parameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;

    invoke-direct {v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2, p1, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;Z)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)V
    .locals 2
    .param p2, "body"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "body"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;",
            ")V"
        }
    .end annotation

    .line 84
    .local p1, "parameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;Z)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;Z)V
    .locals 1
    .param p2, "body"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .param p3, "isEnclosingParameters"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "body",
            "isEnclosingParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;",
            "Z)V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 103
    .local p1, "parameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;Z)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V
    .locals 4
    .param p1, "parameter"    # Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .param p2, "body"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameter",
            "body"
        }
    .end annotation

    .line 91
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>([Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;

    invoke-direct {v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;Z)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)V
    .locals 3
    .param p1, "parameter"    # Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .param p2, "body"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameter",
            "body"
        }
    .end annotation

    .line 77
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>([Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p2, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;Z)V

    .line 78
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

    .line 162
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 168
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method public asLambdaExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;
    .locals 0

    .line 252
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->clone()Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;
    .locals 2

    .line 216
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;

    return-object v0
.end method

.method public getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    return-object v0
.end method

.method public getExpressionBody()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/DerivedProperty;
    .end annotation

    .line 206
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->isExpressionStmt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->asExpressionStmt()Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 209
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/ExpressionMetaModel;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/LambdaExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/LambdaExprMetaModel;
    .locals 1

    .line 222
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->lambdaExprMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/LambdaExprMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/LambdaExprMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->parameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public ifLambdaExpr(Ljava/util/function/Consumer;)V
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
            "Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;",
            ">;)V"
        }
    .end annotation

    .line 257
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method public isEnclosingParameters()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->isEnclosingParameters:Z

    return v0
.end method

.method public isLambdaExpr()Z
    .locals 1

    .line 246
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

    .line 189
    if-nez p1, :cond_0

    .line 190
    const/4 v0, 0x0

    return v0

    .line 191
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->parameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 192
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->parameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 193
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->parameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 194
    const/4 v1, 0x1

    return v1

    .line 191
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "i":I
    :cond_2
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
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

    .line 228
    if-nez p1, :cond_0

    .line 229
    const/4 v0, 0x0

    return v0

    .line 230
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 231
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;

    .line 232
    return v1

    .line 234
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->parameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 235
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->parameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 236
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->parameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    invoke-virtual {v2, v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 237
    return v1

    .line 234
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    .end local v0    # "i":I
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;
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

    .line 147
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    if-ne p1, v0, :cond_0

    .line 149
    return-object p0

    .line 151
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->BODY:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    if-eqz v0, :cond_1

    .line 153
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 154
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->body:Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    .line 155
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 156
    return-object p0
.end method

.method public setEnclosingParameters(Z)Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;
    .locals 3
    .param p1, "isEnclosingParameters"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "isEnclosingParameters"
        }
    .end annotation

    .line 178
    iget-boolean v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->isEnclosingParameters:Z

    if-ne p1, v0, :cond_0

    .line 179
    return-object p0

    .line 181
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->ENCLOSING_PARAMETERS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-boolean v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->isEnclosingParameters:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    iput-boolean p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->isEnclosingParameters:Z

    .line 183
    return-object p0
.end method

.method public bridge synthetic setParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->setParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;

    move-result-object p1

    return-object p1
.end method

.method public setParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;"
        }
    .end annotation

    .line 125
    .local p1, "parameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->parameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 127
    return-object p0

    .line 129
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->PARAMETERS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->parameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->parameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 131
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 132
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->parameters:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 133
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 134
    return-object p0
.end method

.method public toLambdaExpr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;",
            ">;"
        }
    .end annotation

    .line 263
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
