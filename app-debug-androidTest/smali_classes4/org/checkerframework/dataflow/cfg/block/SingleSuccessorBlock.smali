.class public interface abstract Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlock;
.super Ljava/lang/Object;
.source "SingleSuccessorBlock.java"

# interfaces
.implements Lorg/checkerframework/dataflow/cfg/block/Block;


# virtual methods
.method public abstract getFlowRule()Lorg/checkerframework/dataflow/analysis/Store$FlowRule;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation
.end method

.method public abstract getSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation
.end method

.method public abstract setFlowRule(Lorg/checkerframework/dataflow/analysis/Store$FlowRule;)V
.end method
