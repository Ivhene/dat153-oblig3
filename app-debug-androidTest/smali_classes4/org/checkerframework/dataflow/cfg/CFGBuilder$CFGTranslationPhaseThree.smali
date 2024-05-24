.class public Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree;
.super Ljava/lang/Object;
.source "CFGBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/CFGBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CFGTranslationPhaseThree"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 811
    const-class v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static computeNeighborhoodOfEmptyBlock(Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;Ljava/util/Set;Ljava/util/Set;)Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    .locals 4
    .param p0, "start"    # Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;",
            ">;)",
            "Lorg/checkerframework/dataflow/cfg/block/BlockImpl;"
        }
    .end annotation

    .line 927
    .local p1, "empty":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;>;"
    .local p2, "predecessors":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;>;"
    invoke-static {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree;->computeNeighborhoodOfEmptyBlockBackwards(Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;Ljava/util/Set;Ljava/util/Set;)V

    .line 930
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->getSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    .line 931
    .local v0, "succ":Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    :goto_0
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->getType()Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    move-result-object v1

    sget-object v2, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->REGULAR_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    if-ne v1, v2, :cond_2

    .line 932
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;

    .line 933
    .local v1, "cur":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 934
    invoke-static {v1, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree;->computeNeighborhoodOfEmptyBlockBackwards(Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;Ljava/util/Set;Ljava/util/Set;)V

    .line 935
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 936
    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->getSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    .line 937
    if-ne v0, v1, :cond_0

    .line 939
    goto :goto_1

    .line 944
    .end local v1    # "cur":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    :cond_0
    goto :goto_0

    .line 935
    .restart local v1    # "cur":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "cur ought to be in empty"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 945
    .end local v1    # "cur":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    :cond_2
    :goto_1
    return-object v0
.end method

.method protected static computeNeighborhoodOfEmptyBlockBackwards(Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;Ljava/util/Set;Ljava/util/Set;)V
    .locals 5
    .param p0, "start"    # Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;",
            ">;)V"
        }
    .end annotation

    .line 963
    .local p1, "empty":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;>;"
    .local p2, "predecessors":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;>;"
    move-object v0, p0

    .line 964
    .local v0, "cur":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 965
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->getPredecessors()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    .line 966
    .local v2, "pred":Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    sget-object v3, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$org$checkerframework$dataflow$cfg$block$Block$BlockType:[I

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->getType()Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 980
    :pswitch_0
    move-object v3, v2

    check-cast v3, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;

    .line 981
    .local v3, "r":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    invoke-virtual {v3}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 983
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 984
    invoke-static {v3, p1, p2}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree;->computeNeighborhoodOfEmptyBlockBackwards(Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_1

    .line 988
    :cond_0
    invoke-static {v2, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree;->getPredecessorHolder(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 977
    .end local v3    # "r":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    :pswitch_1
    invoke-static {v2, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree;->getPredecessorHolder(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 978
    goto :goto_1

    .line 973
    :pswitch_2
    invoke-static {v2, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree;->getPredecessorHolder(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 974
    goto :goto_1

    .line 969
    :pswitch_3
    invoke-static {v2, v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree;->getPredecessorHolder(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 970
    nop

    .line 992
    .end local v2    # "pred":Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    :cond_1
    :goto_1
    goto :goto_0

    .line 993
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static getPredecessorHolder(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;
    .locals 5
    .param p0, "pred"    # Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    .param p1, "cur"    # Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    .line 1003
    sget-object v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$org$checkerframework$dataflow$cfg$block$Block$BlockType:[I

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->getType()Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1068
    :pswitch_0
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;

    .line 1069
    .local v0, "r":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    invoke-static {v0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree;->singleSuccessorHolder(Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;

    move-result-object v1

    return-object v1

    .line 1040
    .end local v0    # "r":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    :pswitch_1
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;

    .line 1041
    .local v0, "e":Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;->getSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 1042
    invoke-static {v0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree;->singleSuccessorHolder(Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;

    move-result-object v1

    return-object v1

    .line 1046
    :cond_0
    nop

    .line 1047
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;->getExceptionalSuccessors()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 1048
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeMirror;Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/block/Block;>;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1049
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeMirror;Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/block/Block;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1050
    new-instance v2, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$3;

    invoke-direct {v2, v0, v3, p1, p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$3;-><init>(Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;Ljava/util/Map$Entry;Lorg/checkerframework/dataflow/cfg/block/BlockImpl;Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    return-object v2

    .line 1063
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeMirror;Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/block/Block;>;>;"
    :cond_1
    goto :goto_0

    .line 1065
    .end local v1    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeMirror;Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/block/Block;>;>;>;"
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1009
    .end local v0    # "e":Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;
    :pswitch_2
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;

    .line 1010
    .local v0, "c":Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;->getThenSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;

    move-result-object v1

    if-ne v1, p1, :cond_3

    .line 1011
    new-instance v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$1;

    invoke-direct {v1, v0, p1, p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$1;-><init>(Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;Lorg/checkerframework/dataflow/cfg/block/BlockImpl;Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    return-object v1

    .line 1024
    :cond_3
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;->getElseSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;

    move-result-object v1

    if-ne v1, p1, :cond_4

    .line 1025
    new-instance v1, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$2;

    invoke-direct {v1, v0, p1, p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$2;-><init>(Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;Lorg/checkerframework/dataflow/cfg/block/BlockImpl;Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    return-object v1

    .line 1024
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1005
    .end local v0    # "c":Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;
    :pswitch_3
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;

    .line 1006
    .local v0, "s":Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;
    invoke-static {v0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree;->singleSuccessorHolder(Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;

    move-result-object v1

    return-object v1

    .line 1071
    .end local v0    # "s":Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;
    :goto_1
    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static process(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;)Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    .locals 11
    .param p0, "cfg"    # Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    .line 831
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->getAllBlocks()Ljava/util/Set;

    move-result-object v0

    .line 832
    .local v0, "worklist":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/block/Block;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 838
    .local v1, "dontVisit":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/block/Block;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/cfg/block/Block;

    .line 839
    .local v3, "c":Lorg/checkerframework/dataflow/cfg/block/Block;
    move-object v4, v3

    check-cast v4, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    .line 840
    .local v4, "cur":Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    new-instance v5, Ljava/util/HashSet;

    invoke-virtual {v4}, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->getPredecessors()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    .line 841
    .local v6, "pred":Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 842
    invoke-virtual {v4, v6}, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->removePredecessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    .line 844
    .end local v6    # "pred":Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    :cond_0
    goto :goto_1

    .line 845
    .end local v3    # "c":Lorg/checkerframework/dataflow/cfg/block/Block;
    .end local v4    # "cur":Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    :cond_1
    goto :goto_0

    .line 848
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/cfg/block/Block;

    .line 849
    .local v3, "cur":Lorg/checkerframework/dataflow/cfg/block/Block;
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 850
    goto :goto_2

    .line 853
    :cond_3
    invoke-interface {v3}, Lorg/checkerframework/dataflow/cfg/block/Block;->getType()Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    move-result-object v4

    sget-object v5, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->REGULAR_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    if-ne v4, v5, :cond_5

    .line 854
    move-object v4, v3

    check-cast v4, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;

    .line 855
    .local v4, "b":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    invoke-virtual {v4}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 856
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 857
    .local v5, "empty":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 858
    .local v6, "predecessors":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;>;"
    invoke-static {v4, v5, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree;->computeNeighborhoodOfEmptyBlock(Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;Ljava/util/Set;Ljava/util/Set;)Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    move-result-object v7

    .line 859
    .local v7, "succ":Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;

    .line 860
    .local v9, "e":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    invoke-virtual {v7, v9}, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->removePredecessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    .line 861
    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 862
    .end local v9    # "e":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    goto :goto_3

    .line 863
    :cond_4
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;

    .line 864
    .local v9, "p":Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;
    invoke-interface {v9}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;->getBlock()Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    move-result-object v10

    .line 865
    .local v10, "block":Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 866
    invoke-virtual {v7, v10}, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->removePredecessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    .line 867
    invoke-interface {v9, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;->setSuccessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    .line 868
    .end local v9    # "p":Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;
    .end local v10    # "block":Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    goto :goto_4

    .line 871
    .end local v3    # "cur":Lorg/checkerframework/dataflow/cfg/block/Block;
    .end local v4    # "b":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    .end local v5    # "empty":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;>;"
    .end local v6    # "predecessors":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;>;"
    .end local v7    # "succ":Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    :cond_5
    goto :goto_2

    .line 874
    :cond_6
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->getAllBlocks()Ljava/util/Set;

    move-result-object v0

    .line 875
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/cfg/block/Block;

    .line 876
    .local v3, "c":Lorg/checkerframework/dataflow/cfg/block/Block;
    move-object v5, v3

    check-cast v5, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    .line 878
    .local v5, "cur":Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    invoke-virtual {v5}, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->getType()Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    move-result-object v6

    sget-object v7, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->CONDITIONAL_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    if-ne v6, v7, :cond_8

    .line 879
    move-object v6, v5

    check-cast v6, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;

    .line 880
    .local v6, "cb":Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;
    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;->getPredecessors()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    if-ne v7, v4, :cond_7

    .line 881
    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;->getThenSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;

    move-result-object v4

    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;->getElseSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;

    move-result-object v7

    if-ne v4, v7, :cond_8

    .line 882
    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;->getPredecessors()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    .line 883
    .local v4, "pred":Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    invoke-static {v4, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree;->getPredecessorHolder(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;

    move-result-object v7

    .line 884
    .local v7, "predecessorHolder":Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;
    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;->getThenSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    .line 885
    .local v8, "succ":Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    invoke-virtual {v8, v6}, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->removePredecessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    .line 886
    invoke-interface {v7, v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;->setSuccessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    goto :goto_6

    .line 880
    .end local v4    # "pred":Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    .end local v7    # "predecessorHolder":Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;
    .end local v8    # "succ":Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    :cond_7
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 889
    .end local v3    # "c":Lorg/checkerframework/dataflow/cfg/block/Block;
    .end local v5    # "cur":Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    .end local v6    # "cb":Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;
    :cond_8
    :goto_6
    goto :goto_5

    .line 892
    :cond_9
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->getAllBlocks()Ljava/util/Set;

    move-result-object v0

    .line 893
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/cfg/block/Block;

    .line 894
    .local v3, "cur":Lorg/checkerframework/dataflow/cfg/block/Block;
    invoke-interface {v3}, Lorg/checkerframework/dataflow/cfg/block/Block;->getType()Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    move-result-object v5

    sget-object v6, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->REGULAR_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    if-ne v5, v6, :cond_a

    .line 895
    move-object v5, v3

    check-cast v5, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;

    .line 896
    .local v5, "b":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    invoke-virtual {v5}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->getRegularSuccessor()Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    move-result-object v6

    .line 897
    .local v6, "succ":Lorg/checkerframework/dataflow/cfg/block/Block;
    invoke-interface {v6}, Lorg/checkerframework/dataflow/cfg/block/Block;->getType()Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    move-result-object v7

    sget-object v8, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->REGULAR_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    if-ne v7, v8, :cond_a

    .line 898
    move-object v7, v6

    check-cast v7, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;

    .line 899
    .local v7, "rs":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    invoke-virtual {v7}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->getPredecessors()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    if-ne v8, v4, :cond_a

    .line 900
    invoke-virtual {v7}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->getRegularSuccessor()Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->setSuccessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    .line 901
    invoke-virtual {v7}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->getContents()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->addNodes(Ljava/util/List;)V

    .line 902
    invoke-virtual {v7}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->getRegularSuccessor()Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    move-result-object v8

    invoke-virtual {v8, v7}, Lorg/checkerframework/dataflow/cfg/block/BlockImpl;->removePredecessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    .line 906
    .end local v3    # "cur":Lorg/checkerframework/dataflow/cfg/block/Block;
    .end local v5    # "b":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    .end local v6    # "succ":Lorg/checkerframework/dataflow/cfg/block/Block;
    .end local v7    # "rs":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    :cond_a
    goto :goto_7

    .line 907
    :cond_b
    return-object p0
.end method

.method protected static singleSuccessorHolder(Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$PredecessorHolder;
    .locals 1
    .param p0, "s"    # Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;
    .param p1, "old"    # Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    .line 1080
    new-instance v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$4;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseThree$4;-><init>(Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    return-object v0
.end method
