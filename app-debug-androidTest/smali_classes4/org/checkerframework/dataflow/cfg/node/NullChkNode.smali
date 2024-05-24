.class public Lorg/checkerframework/dataflow/cfg/node/NullChkNode;
.super Lorg/checkerframework/dataflow/cfg/node/Node;
.source "NullChkNode.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final operand:Lorg/checkerframework/dataflow/cfg/node/Node;

.field protected final tree:Lcom/sun/source/tree/Tree;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 2
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "operand"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 24
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 25
    invoke-interface {p1}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->OTHER:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_0

    .line 26
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/NullChkNode;->tree:Lcom/sun/source/tree/Tree;

    .line 27
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/node/NullChkNode;->operand:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 28
    return-void

    .line 25
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

    .line 41
    .local p1, "visitor":Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;->visitNullChk(Lorg/checkerframework/dataflow/cfg/node/NullChkNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 51
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/NumericalPlusNode;

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    return v0

    .line 54
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/NumericalPlusNode;

    .line 55
    .local v0, "other":Lorg/checkerframework/dataflow/cfg/node/NumericalPlusNode;
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/NullChkNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/NumericalPlusNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/NullChkNode;->operand:Lorg/checkerframework/dataflow/cfg/node/Node;

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

    .line 65
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/NullChkNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/NullChkNode;->tree:Lcom/sun/source/tree/Tree;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 60
    const-class v0, Lorg/checkerframework/dataflow/cfg/node/NullChkNode;

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/NullChkNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(+ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/NullChkNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
