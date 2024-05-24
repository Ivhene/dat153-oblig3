.class public interface abstract Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;
.super Ljava/lang/Object;
.source "ExceptionBlock.java"

# interfaces
.implements Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlock;


# virtual methods
.method public abstract getExceptionalSuccessors()Ljava/util/Map;
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

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation
.end method

.method public abstract getNode()Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation
.end method
