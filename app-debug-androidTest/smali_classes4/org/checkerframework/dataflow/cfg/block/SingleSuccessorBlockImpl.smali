.class public abstract Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;
.super Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
.source "SingleSuccessorBlockImpl.java"

# interfaces
.implements Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlock;


# instance fields
.field protected flowRule:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

.field protected successor:Lorg/checkerframework/dataflow/cfg/block/BlockImpl;


# direct methods
.method public constructor <init>(Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;)V
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    .line 19
    invoke-direct {p0, p1}, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;-><init>(Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;)V

    .line 16
    sget-object v0, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;->EACH_TO_EACH:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;->flowRule:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    .line 20
    return-void
.end method


# virtual methods
.method public getFlowRule()Lorg/checkerframework/dataflow/analysis/Store$FlowRule;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;->flowRule:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    return-object v0
.end method

.method public getSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;->successor:Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    return-object v0
.end method

.method public setFlowRule(Lorg/checkerframework/dataflow/analysis/Store$FlowRule;)V
    .locals 0
    .param p1, "rule"    # Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    .line 40
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;->flowRule:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    .line 41
    return-void
.end method

.method public setSuccessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V
    .locals 0
    .param p1, "successor"    # Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    .line 29
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;->successor:Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    .line 30
    invoke-virtual {p1, p0}, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->addPredecessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    .line 31
    return-void
.end method
