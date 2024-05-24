.class Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$4;
.super Ljava/lang/Object;
.source "CFGBuilder.java"

# interfaces
.implements Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree;->singleSuccessorHolder(Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$old:Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

.field final synthetic val$s:Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;


# direct methods
.method constructor <init>(Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V
    .locals 0

    .line 1080
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$4;->val$s:Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;

    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$4;->val$old:Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlock()Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    .locals 1

    .line 1089
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$4;->val$s:Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;

    return-object v0
.end method

.method public setSuccessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V
    .locals 2
    .param p1, "b"    # Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    .line 1083
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$4;->val$s:Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;

    invoke-virtual {v0, p1}, Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;->setSuccessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    .line 1084
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$4;->val$old:Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$4;->val$s:Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;

    invoke-virtual {v0, v1}, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->removePredecessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    .line 1085
    return-void
.end method
