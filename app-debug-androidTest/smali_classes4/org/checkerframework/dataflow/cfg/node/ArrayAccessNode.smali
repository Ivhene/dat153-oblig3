.class public Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;
.super Lorg/checkerframework/dataflow/cfg/node/Node;
.source "ArrayAccessNode.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final array:Lorg/checkerframework/dataflow/cfg/node/Node;

.field protected final index:Lorg/checkerframework/dataflow/cfg/node/Node;

.field protected final tree:Lcom/sun/source/tree/Tree;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 1
    .param p1, "t"    # Lcom/sun/source/tree/Tree;
    .param p2, "array"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "index"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 27
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->typeOf(Lcom/sun/source/tree/Tree;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 28
    instance-of v0, p1, Lcom/sun/source/tree/ArrayAccessTree;

    if-eqz v0, :cond_0

    .line 29
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;->tree:Lcom/sun/source/tree/Tree;

    .line 30
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;->array:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 31
    iput-object p3, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;->index:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 32
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

    .line 49
    .local p1, "visitor":Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;->visitArrayAccess(Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 60
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 61
    return v1

    .line 63
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;

    .line 64
    .local v0, "other":Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;->getArray()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;->getArray()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;->getIndex()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;->getIndex()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getArray()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;->array:Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v0
.end method

.method public getIndex()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;->index:Lorg/checkerframework/dataflow/cfg/node/Node;

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

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;->getArray()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;->getIndex()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;->tree:Lcom/sun/source/tree/Tree;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 69
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;->getArray()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;->getIndex()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;->getArray()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/ArrayAccessNode;->getIndex()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "base":Ljava/lang/String;
    return-object v0
.end method
