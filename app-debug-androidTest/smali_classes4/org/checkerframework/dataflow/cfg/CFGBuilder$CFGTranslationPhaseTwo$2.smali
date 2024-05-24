.class Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseTwo$2;
.super Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;
.source "CFGBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseTwo;->process(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;


# direct methods
.method constructor <init>(Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;)V
    .locals 0
    .param p1, "type"    # Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    .line 1218
    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseTwo$2;->val$cb:Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;

    invoke-direct {p0, p1}, Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;-><init>(Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;)V

    return-void
.end method


# virtual methods
.method public setSuccessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V
    .locals 1
    .param p1, "successor"    # Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    .line 1221
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseTwo$2;->val$cb:Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;

    invoke-virtual {v0, p1}, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;->setElseSuccessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    .line 1222
    return-void
.end method
