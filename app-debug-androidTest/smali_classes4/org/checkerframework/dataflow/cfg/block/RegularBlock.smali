.class public interface abstract Lorg/checkerframework/dataflow/cfg/block/RegularBlock;
.super Ljava/lang/Object;
.source "RegularBlock.java"

# interfaces
.implements Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlock;


# virtual methods
.method public abstract getContents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation
.end method

.method public abstract getRegularSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation
.end method

.method public abstract isEmpty()Z
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation
.end method
