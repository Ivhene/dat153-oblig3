.class public Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;
.super Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;
.source "ExceptionBlockImpl.java"

# interfaces
.implements Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;


# instance fields
.field protected final exceptionalSuccessors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            ">;>;"
        }
    .end annotation
.end field

.field protected node:Lorg/checkerframework/dataflow/cfg/node/Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    sget-object v0, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->EXCEPTION_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;-><init>(Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;)V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;->exceptionalSuccessors:Ljava/util/Map;

    .line 26
    return-void
.end method


# virtual methods
.method public addExceptionalSuccessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;Ljavax/lang/model/type/TypeMirror;)V
    .locals 2
    .param p1, "b"    # Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    .param p2, "cause"    # Ljavax/lang/model/type/TypeMirror;

    .line 44
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;->exceptionalSuccessors:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 45
    .local v0, "blocks":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/block/Block;>;"
    if-nez v0, :cond_0

    .line 46
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    .line 47
    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;->exceptionalSuccessors:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {p1, p0}, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->addPredecessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    .line 51
    return-void
.end method

.method public getExceptionalSuccessors()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            ">;>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;->exceptionalSuccessors:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 56
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 58
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getNode()Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 2

    .line 36
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;->node:Lorg/checkerframework/dataflow/cfg/node/Node;

    if-eqz v0, :cond_0

    .line 39
    return-object v0

    .line 37
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "Requested node for exception block before initialization"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNode(Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 0
    .param p1, "c"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 30
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;->node:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 31
    invoke-virtual {p1, p0}, Lorg/checkerframework/dataflow/cfg/node/Node;->setBlock(Lorg/checkerframework/dataflow/cfg/block/Block;)V

    .line 32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExceptionBlock("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;->node:Lorg/checkerframework/dataflow/cfg/node/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
