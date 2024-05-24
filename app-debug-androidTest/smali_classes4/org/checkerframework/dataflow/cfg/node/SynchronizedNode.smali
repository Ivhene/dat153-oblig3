.class public Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;
.super Lorg/checkerframework/dataflow/cfg/node/Node;
.source "SynchronizedNode.java"


# instance fields
.field protected final expression:Lorg/checkerframework/dataflow/cfg/node/Node;

.field protected final startOfBlock:Z

.field protected final tree:Lcom/sun/source/tree/Tree;


# direct methods
.method public constructor <init>(Lcom/sun/source/tree/Tree;Lorg/checkerframework/dataflow/cfg/node/Node;ZLjavax/lang/model/util/Types;)V
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .param p2, "expression"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "startOfBlock"    # Z
    .param p4, "types"    # Ljavax/lang/model/util/Types;

    .line 24
    sget-object v0, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    invoke-interface {p4, v0}, Ljavax/lang/model/util/Types;->getNoType(Ljavax/lang/model/type/TypeKind;)Ljavax/lang/model/type/NoType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/node/Node;-><init>(Ljavax/lang/model/type/TypeMirror;)V

    .line 25
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;->tree:Lcom/sun/source/tree/Tree;

    .line 26
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;->expression:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 27
    iput-boolean p3, p0, Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;->startOfBlock:Z

    .line 28
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

    .line 45
    .local p1, "visitor":Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;, "Lorg/checkerframework/dataflow/cfg/node/NodeVisitor<TR;TP;>;"
    .local p2, "p":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/dataflow/cfg/node/NodeVisitor;->visitSynchronized(Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 59
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 60
    return v1

    .line 62
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;

    .line 63
    .local v0, "other":Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;->getExpression()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;->getExpression()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;->startOfBlock:Z

    iget-boolean v3, v0, Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;->startOfBlock:Z

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 63
    :goto_0
    return v1
.end method

.method public getExpression()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;->expression:Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v0
.end method

.method public getIsStartOfBlock()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;->startOfBlock:Z

    return v0
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

    .line 75
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTree()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;->tree:Lcom/sun/source/tree/Tree;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 70
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;->tree:Lcom/sun/source/tree/Tree;

    iget-boolean v1, p0, Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;->startOfBlock:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;->getExpression()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "synchronized ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/node/SynchronizedNode;->expression:Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
