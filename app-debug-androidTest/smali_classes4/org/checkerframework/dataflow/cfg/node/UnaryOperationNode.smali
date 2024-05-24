.class public abstract Lorg/checkerframework/dataflow/cfg/node/UnaryOperationNode;
.super Lorg/checkerframework/dataflow/cfg/node/Node;
.source "UnaryOperationNode.java"


# instance fields
.field protected final operand:Lorg/checkerframework/dataflow/cfg/node/Node;

.field protected final tree:Lcom/sun/source/tree/UnaryTree;


# direct methods
.method public constructor <init>(Lcom/sun/source/tree/UnaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/UnaryTree;
    .param p2, "operand"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 25
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 26
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/UnaryOperationNode;->tree:Lcom/sun/source/tree/UnaryTree;

    .line 27
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/node/UnaryOperationNode;->operand:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 28
    return-void
.end method


# virtual methods
.method public getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/UnaryOperationNode;->operand:Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v0
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

    .line 41
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/UnaryOperationNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/UnaryOperationNode;->getTree()Lcom/sun/source/tree/UnaryTree;

    move-result-object v0

    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/UnaryTree;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/UnaryOperationNode;->tree:Lcom/sun/source/tree/UnaryTree;

    return-object v0
.end method
