.class Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$3;
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
.field final synthetic val$cur:Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

.field final synthetic val$e:Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;

.field final synthetic val$entry:Ljava/util/Map$Entry;

.field final synthetic val$pred:Lorg/checkerframework/dataflow/cfg/block/BlockImpl;


# direct methods
.method constructor <init>(Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;Ljava/util/Map$Entry;Lorg/checkerframework/dataflow/cfg/block/BlockImpl;Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V
    .locals 0

    .line 1050
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$3;->val$e:Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;

    iput-object p2, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$3;->val$entry:Ljava/util/Map$Entry;

    iput-object p3, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$3;->val$cur:Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    iput-object p4, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$3;->val$pred:Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlock()Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    .locals 1

    .line 1059
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$3;->val$e:Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;

    return-object v0
.end method

.method public setSuccessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V
    .locals 2
    .param p1, "b"    # Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    .line 1053
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$3;->val$e:Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$3;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;->addExceptionalSuccessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;Ljavax/lang/model/type/TypeMirror;)V

    .line 1054
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$3;->val$cur:Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    iget-object v1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$3;->val$pred:Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    invoke-virtual {v0, v1}, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->removePredecessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    .line 1055
    return-void
.end method
