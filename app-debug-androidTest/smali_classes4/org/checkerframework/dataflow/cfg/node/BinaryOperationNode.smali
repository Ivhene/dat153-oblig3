.class public abstract Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;
.super Lorg/checkerframework/dataflow/cfg/node/Node;
.source "BinaryOperationNode.java"


# instance fields
.field protected final left:Lorg/checkerframework/dataflow/cfg/node/Node;

.field protected final right:Lorg/checkerframework/dataflow/cfg/node/Node;

.field protected final tree:Lcom/sun/source/tree/BinaryTree;


# direct methods
.method public constructor <init>(Lcom/sun/source/tree/BinaryTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/BinaryTree;
    .param p2, "left"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "right"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 24
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 25
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;->tree:Lcom/sun/source/tree/BinaryTree;

    .line 26
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;->left:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 27
    iput-object p3, p0, Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;->right:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 28
    return-void
.end method


# virtual methods
.method public getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;->left:Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v0
.end method

.method public getOperands()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    return-object v0
.end method

.method public getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;->right:Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/BinaryTree;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;->tree:Lcom/sun/source/tree/BinaryTree;

    return-object v0
.end method

.method public bridge synthetic getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/BinaryOperationNode;->getTree()Lcom/sun/source/tree/BinaryTree;

    move-result-object v0

    return-object v0
.end method
