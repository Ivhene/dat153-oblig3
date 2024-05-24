.class public interface abstract Lorg/checkerframework/dataflow/cfg/block/ConditionalBlock;
.super Ljava/lang/Object;
.source "ConditionalBlock.java"

# interfaces
.implements Lorg/checkerframework/dataflow/cfg/block/Block;


# virtual methods
.method public abstract getElseFlowRule()Lorg/checkerframework/dataflow/analysis/Store$FlowRule;
.end method

.method public abstract getElseSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;
.end method

.method public abstract getThenFlowRule()Lorg/checkerframework/dataflow/analysis/Store$FlowRule;
.end method

.method public abstract getThenSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;
.end method

.method public abstract setElseFlowRule(Lorg/checkerframework/dataflow/analysis/Store$FlowRule;)V
.end method

.method public abstract setThenFlowRule(Lorg/checkerframework/dataflow/analysis/Store$FlowRule;)V
.end method
