.class public Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
.super Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;
.source "RegularBlockImpl.java"

# interfaces
.implements Lorg/checkerframework/dataflow/cfg/block/RegularBlock;


# instance fields
.field protected final contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    sget-object v0, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->REGULAR_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;-><init>(Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->contents:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public addNode(Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 1
    .param p1, "t"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 26
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->contents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {p1, p0}, Lorg/checkerframework/dataflow/cfg/node/Node;->setBlock(Lorg/checkerframework/dataflow/cfg/block/Block;)V

    .line 28
    return-void
.end method

.method public addNodes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p1, "ts":Ljava/util/List;, "Ljava/util/List<+Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 33
    .local v1, "t":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v1}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->addNode(Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 34
    .end local v1    # "t":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method public getContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->contents:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRegularSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->getRegularSuccessor()Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    move-result-object v0

    return-object v0
.end method

.method public getRegularSuccessor()Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->successor:Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegularBlock("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->contents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
