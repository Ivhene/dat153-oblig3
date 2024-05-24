.class public Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;
.super Lorg/checkerframework/dataflow/cfg/node/Node;
.source "TernaryExpressionNode.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final condition:Lorg/checkerframework/dataflow/cfg/node/Node;

.field protected final elseOperand:Lorg/checkerframework/dataflow/cfg/node/Node;

.field protected final thenOperand:Lorg/checkerframework/dataflow/cfg/node/Node;

.field protected final tree:Lcom/sun/source/tree/ConditionalExpressionTree;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/sun/source/tree/ConditionalExpressionTree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/ConditionalExpressionTree;
    .param p2, "condition"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "thenOperand"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p4, "elseOperand"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 27
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 28
    invoke-interface {p1}, Lcom/sun/source/tree/ConditionalExpressionTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->CONDITIONAL_EXPRESSION:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    .line 29
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;->tree:Lcom/sun/source/tree/ConditionalExpressionTree;

    .line 30
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;->condition:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 31
    iput-object p3, p0, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;->thenOperand:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 32
    iput-object p4, p0, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;->elseOperand:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 33
    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
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

    .line 54
    .local p1, "visitor":Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;->visitTernaryExpression(Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 70
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 71
    return v1

    .line 73
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;

    .line 74
    .local v0, "other":Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;->getConditionOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;->getConditionOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;->getThenOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;->getThenOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;->getElseOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;->getElseOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 74
    :goto_0
    return v1
.end method

.method public getConditionOperand()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;->condition:Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v0
.end method

.method public getElseOperand()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;->elseOperand:Lorg/checkerframework/dataflow/cfg/node/Node;

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

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;->getConditionOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;->getThenOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;->getElseOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    return-object v0
.end method

.method public getThenOperand()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;->thenOperand:Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/ConditionalExpressionTree;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;->tree:Lcom/sun/source/tree/ConditionalExpressionTree;

    return-object v0
.end method

.method public bridge synthetic getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;->getTree()Lcom/sun/source/tree/ConditionalExpressionTree;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 81
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;->getConditionOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;->getThenOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;->getElseOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;->getConditionOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;->getThenOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/TernaryExpressionNode;->getElseOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    return-object v0
.end method
