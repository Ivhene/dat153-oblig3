.class public Lorg/checkerframework/dataflow/cfg/node/MarkerNode;
.super Lorg/checkerframework/dataflow/cfg/node/Node;
.source "MarkerNode.java"


# instance fields
.field protected final message:Ljava/lang/String;

.field protected final tree:Lcom/sun/source/tree/Tree;


# direct methods
.method public constructor <init>(Lcom/sun/source/tree/Tree;Ljava/lang/String;Ljavax/lang/model/util/Types;)V
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "types"    # Ljavax/lang/model/util/Types;

    .line 23
    sget-object v0, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    invoke-interface {p3, v0}, Ljavax/lang/model/util/Types;->getNoType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/NoType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 24
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;->tree:Lcom/sun/source/tree/Tree;

    .line 25
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;->message:Ljava/lang/String;

    .line 26
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

    .line 39
    .local p1, "visitor":Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;->visitMarker(Lorg/checkerframework/dataflow/cfg/node/MarkerNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 53
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 54
    return v1

    .line 56
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;

    .line 57
    .local v0, "other":Lorg/checkerframework/dataflow/cfg/node/MarkerNode;
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 57
    :goto_0
    return v1
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;->message:Ljava/lang/String;

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

    .line 68
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;->tree:Lcom/sun/source/tree/Tree;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 63
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;->tree:Lcom/sun/source/tree/Tree;

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "marker ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/MarkerNode;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
