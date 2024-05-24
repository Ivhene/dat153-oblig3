.class public Lorg/checkerframework/dataflow/cfg/node/LambdaResultExpressionNode;
.super Lorg/checkerframework/dataflow/cfg/node/Node;
.source "LambdaResultExpressionNode.java"


# instance fields
.field protected final result:Lorg/checkerframework/dataflow/cfg/node/Node;

.field protected final tree:Lcom/sun/source/tree/ExpressionTree;


# direct methods
.method public constructor <init>(Lcom/sun/source/tree/ExpressionTree;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/util/Types;)V
    .locals 1
    .param p1, "t"    # Lcom/sun/source/tree/ExpressionTree;
    .param p2, "result"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "types"    # Ljavax/lang/model/util/Types;

    .line 18
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 19
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/node/LambdaResultExpressionNode;->result:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 20
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/LambdaResultExpressionNode;->tree:Lcom/sun/source/tree/ExpressionTree;

    .line 21
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<",
            "TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 42
    .local p1, "visitor":Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;->visitLambdaResultExpression(Lorg/checkerframework/dataflow/cfg/node/LambdaResultExpressionNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 57
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/LambdaResultExpressionNode;

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x0

    return v0

    .line 60
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/LambdaResultExpressionNode;

    .line 61
    .local v0, "other":Lorg/checkerframework/dataflow/cfg/node/LambdaResultExpressionNode;
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/LambdaResultExpressionNode;->result:Lorg/checkerframework/dataflow/cfg/node/Node;

    iget-object v2, v0, Lorg/checkerframework/dataflow/cfg/node/LambdaResultExpressionNode;->result:Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getOperands()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/LambdaResultExpressionNode;->result:Lorg/checkerframework/dataflow/cfg/node/Node;

    if-nez v0, :cond_0

    .line 74
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 76
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/LambdaResultExpressionNode;->result:Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/ExpressionTree;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/LambdaResultExpressionNode;->tree:Lcom/sun/source/tree/ExpressionTree;

    return-object v0
.end method

.method public bridge synthetic getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/LambdaResultExpressionNode;->getTree()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 68
    const-class v0, Lorg/checkerframework/dataflow/cfg/node/LambdaResultExpressionNode;

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/LambdaResultExpressionNode;->result:Lorg/checkerframework/dataflow/cfg/node/Node;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/LambdaResultExpressionNode;->result:Lorg/checkerframework/dataflow/cfg/node/Node;

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/LambdaResultExpressionNode;->result:Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 50
    :cond_0
    const-string v0, "-> ()"

    return-object v0
.end method
