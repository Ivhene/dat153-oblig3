.class public Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;
.super Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
.source "ConditionalBlockImpl.java"

# interfaces
.implements Lorg/checkerframework/dataflow/cfg/block/ConditionalBlock;


# instance fields
.field protected elseFlowRule:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

.field protected elseSuccessor:Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

.field protected thenFlowRule:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

.field protected thenSuccessor:Lorg/checkerframework/dataflow/cfg/block/BlockImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    sget-object v0, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->CONDITIONAL_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    invoke-direct {p0, v0}, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;-><init>(Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;)V

    .line 21
    sget-object v0, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;->THEN_TO_BOTH:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;->thenFlowRule:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    .line 23
    sget-object v0, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;->ELSE_TO_BOTH:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;->elseFlowRule:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    .line 31
    return-void
.end method


# virtual methods
.method public getElseFlowRule()Lorg/checkerframework/dataflow/analysis/Store$FlowRule;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;->elseFlowRule:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    return-object v0
.end method

.method public getElseSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;
    .locals 2

    .line 56
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;->elseSuccessor:Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    if-eqz v0, :cond_0

    .line 60
    return-object v0

    .line 57
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "Requested elseSuccessor for conditional block before initialization"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getThenFlowRule()Lorg/checkerframework/dataflow/analysis/Store$FlowRule;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;->thenFlowRule:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    return-object v0
.end method

.method public getThenSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;
    .locals 2

    .line 47
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;->thenSuccessor:Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    if-eqz v0, :cond_0

    .line 51
    return-object v0

    .line 48
    :cond_0
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    const-string v1, "Requested thenSuccessor for conditional block before initialization"

    invoke-direct {v0, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setElseFlowRule(Lorg/checkerframework/dataflow/analysis/Store$FlowRule;)V
    .locals 0
    .param p1, "rule"    # Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    .line 80
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;->elseFlowRule:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    .line 81
    return-void
.end method

.method public setElseSuccessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V
    .locals 0
    .param p1, "b"    # Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    .line 41
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;->elseSuccessor:Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    .line 42
    invoke-virtual {p1, p0}, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->addPredecessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    .line 43
    return-void
.end method

.method public setThenFlowRule(Lorg/checkerframework/dataflow/analysis/Store$FlowRule;)V
    .locals 0
    .param p1, "rule"    # Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    .line 75
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;->thenFlowRule:Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    .line 76
    return-void
.end method

.method public setThenSuccessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V
    .locals 0
    .param p1, "b"    # Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    .line 35
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;->thenSuccessor:Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    .line 36
    invoke-virtual {p1, p0}, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->addPredecessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 85
    const-string v0, "ConditionalBlock()"

    return-object v0
.end method
