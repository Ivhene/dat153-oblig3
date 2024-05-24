.class Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$1;
.super Ljava/lang/Object;
.source "CFGBuilder.java"

# interfaces
.implements Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree;->getPredecessorHolder(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;

.field final synthetic val$cur:Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

.field final synthetic val$pred:Lorg/checkerframework/dataflow/cfg/block/BlockImpl;


# direct methods
.method constructor <init>(Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;Lorg/checkerframework/dataflow/cfg/block/BlockImpl;Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V
    .locals 0

    .line 1011
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$1;->val$c:Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;

    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$1;->val$cur:Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    iput-object p3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$1;->val$pred:Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlock()Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    .locals 1

    .line 1020
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$1;->val$c:Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;

    return-object v0
.end method

.method public setSuccessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V
    .locals 2
    .param p1, "b"    # Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    .line 1014
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$1;->val$c:Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;

    invoke-virtual {v0, p1}, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;->setThenSuccessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    .line 1015
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$1;->val$cur:Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$1;->val$pred:Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    invoke-virtual {v0, v1}, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->removePredecessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    .line 1016
    return-void
.end method
