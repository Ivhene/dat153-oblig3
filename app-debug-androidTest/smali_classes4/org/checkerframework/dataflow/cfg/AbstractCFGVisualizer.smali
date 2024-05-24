.class public abstract Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;
.super Ljava/lang/Object;
.source "AbstractCFGVisualizer.java"

# interfaces
.implements Lorg/checkerframework/dataflow/cfg/CFGVisualizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lorg/checkerframework/dataflow/analysis/AbstractValue<",
        "TA;>;S::",
        "Lorg/checkerframework/dataflow/analysis/Store<",
        "TS;>;T::",
        "Lorg/checkerframework/dataflow/analysis/TransferFunction<",
        "TA;TS;>;>",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/dataflow/cfg/CFGVisualizer<",
        "TA;TS;TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final lineSeparator:Ljava/lang/String;

.field protected final storeEntryIndent:Ljava/lang/String;

.field protected verbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer<TA;TS;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->lineSeparator:Ljava/lang/String;

    .line 50
    const-string v0, "  "

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->storeEntryIndent:Ljava/lang/String;

    return-void
.end method

.method static synthetic lambda$getProcessOrder$0(Lorg/checkerframework/dataflow/cfg/block/Block;)Ljava/util/List;
    .locals 1
    .param p0, "k"    # Lorg/checkerframework/dataflow/cfg/block/Block;

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected addBlock(Lorg/checkerframework/dataflow/cfg/block/Block;Ljava/util/Set;Ljava/util/Queue;)V
    .locals 1
    .param p1, "b"    # Lorg/checkerframework/dataflow/cfg/block/Block;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            ">;",
            "Ljava/util/Queue<",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            ">;)V"
        }
    .end annotation

    .line 159
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer<TA;TS;TT;>;"
    .local p2, "visited":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/block/Block;>;"
    .local p3, "workList":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/dataflow/cfg/block/Block;>;"
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-interface {p3, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_0
    return-void
.end method

.method protected addBlockContent(Lorg/checkerframework/dataflow/cfg/block/Block;)Ljava/util/List;
    .locals 3
    .param p1, "bb"    # Lorg/checkerframework/dataflow/cfg/block/Block;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;"
        }
    .end annotation

    .line 243
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer<TA;TS;TT;>;"
    sget-object v0, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer$1;->$SwitchMap$org$checkerframework$dataflow$cfg$block$Block$BlockType:[I

    invoke-interface {p1}, Lorg/checkerframework/dataflow/cfg/block/Block;->getType()Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 253
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized basic block type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/checkerframework/dataflow/cfg/block/Block;->getType()Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :pswitch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 249
    :pswitch_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 247
    :pswitch_2
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;

    invoke-interface {v0}, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;->getNode()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 245
    :pswitch_3
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/block/RegularBlock;

    invoke-interface {v0}, Lorg/checkerframework/dataflow/cfg/block/RegularBlock;->getContents()Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract addEdge(JJLjava/lang/String;)Ljava/lang/String;
.end method

.method protected getLastNode(Lorg/checkerframework/dataflow/cfg/block/Block;)Lorg/checkerframework/dataflow/cfg/node/Node;
    .locals 2
    .param p1, "bb"    # Lorg/checkerframework/dataflow/cfg/block/Block;

    .line 321
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer<TA;TS;TT;>;"
    sget-object v0, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer$1;->$SwitchMap$org$checkerframework$dataflow$cfg$block$Block$BlockType:[I

    invoke-interface {p1}, Lorg/checkerframework/dataflow/cfg/block/Block;->getType()Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 328
    const/4 v0, 0x0

    return-object v0

    .line 326
    :pswitch_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;

    invoke-interface {v0}, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;->getNode()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    return-object v0

    .line 323
    :pswitch_1
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/block/RegularBlock;

    invoke-interface {v0}, Lorg/checkerframework/dataflow/cfg/block/RegularBlock;->getContents()Ljava/util/List;

    move-result-object v0

    .line 324
    .local v0, "blockContents":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/Node;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getNodeSimpleName(Lorg/checkerframework/dataflow/cfg/node/Node;)Ljava/lang/String;
    .locals 3
    .param p1, "t"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 409
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer<TA;TS;TT;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "name":Ljava/lang/String;
    const-string v1, "Node"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getProcessOrder(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;)Ljava/util/IdentityHashMap;
    .locals 6
    .param p1, "cfg"    # Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;",
            ")",
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 341
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer<TA;TS;TT;>;"
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 342
    .local v0, "depthFirstOrder":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/block/Block;Ljava/util/List<Ljava/lang/Integer;>;>;"
    const/4 v1, 0x1

    .line 343
    .local v1, "count":I
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;->getDepthFirstOrderedBlocks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/cfg/block/Block;

    .line 344
    .local v3, "b":Lorg/checkerframework/dataflow/cfg/block/Block;
    new-instance v4, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v3, v4}, Ljava/util/IdentityHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 345
    invoke-virtual {v0, v3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "count":I
    .local v5, "count":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    .end local v3    # "b":Lorg/checkerframework/dataflow/cfg/block/Block;
    move v1, v5

    goto :goto_0

    .line 347
    .end local v5    # "count":I
    .restart local v1    # "count":I
    :cond_0
    return-object v0
.end method

.method protected getProcessOrderSimpleString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 399
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer<TA;TS;TT;>;"
    .local p1, "order":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Process order: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[\\[\\]]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleSuccessorsHelper(Lorg/checkerframework/dataflow/cfg/block/Block;Ljava/util/Set;Ljava/util/Queue;Ljava/lang/StringBuilder;)V
    .locals 17
    .param p1, "cur"    # Lorg/checkerframework/dataflow/cfg/block/Block;
    .param p4, "sbGraph"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            ">;",
            "Ljava/util/Queue<",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 110
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer<TA;TS;TT;>;"
    .local p2, "visited":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/block/Block;>;"
    .local p3, "workList":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/dataflow/cfg/block/Block;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-interface/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/block/Block;->getType()Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->CONDITIONAL_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    if-ne v0, v1, :cond_0

    .line 111
    move-object/from16 v10, p1

    check-cast v10, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlock;

    .line 112
    .local v10, "ccur":Lorg/checkerframework/dataflow/cfg/block/ConditionalBlock;
    invoke-interface {v10}, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlock;->getThenSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;

    move-result-object v11

    .line 113
    .local v11, "thenSuccessor":Lorg/checkerframework/dataflow/cfg/block/Block;
    nop

    .line 115
    invoke-interface {v10}, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlock;->getId()J

    move-result-wide v1

    .line 116
    invoke-interface {v11}, Lorg/checkerframework/dataflow/cfg/block/Block;->getId()J

    move-result-wide v3

    .line 117
    invoke-interface {v10}, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlock;->getThenFlowRule()Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;->toString()Ljava/lang/String;

    move-result-object v5

    .line 114
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->addEdge(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v6, v11, v7, v8}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->addBlock(Lorg/checkerframework/dataflow/cfg/block/Block;Ljava/util/Set;Ljava/util/Queue;)V

    .line 119
    invoke-interface {v10}, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlock;->getElseSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;

    move-result-object v12

    .line 120
    .local v12, "elseSuccessor":Lorg/checkerframework/dataflow/cfg/block/Block;
    nop

    .line 122
    invoke-interface {v10}, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlock;->getId()J

    move-result-wide v1

    .line 123
    invoke-interface {v12}, Lorg/checkerframework/dataflow/cfg/block/Block;->getId()J

    move-result-wide v3

    .line 124
    invoke-interface {v10}, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlock;->getElseFlowRule()Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;->toString()Ljava/lang/String;

    move-result-object v5

    .line 121
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->addEdge(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v6, v12, v7, v8}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->addBlock(Lorg/checkerframework/dataflow/cfg/block/Block;Ljava/util/Set;Ljava/util/Queue;)V

    .line 126
    .end local v10    # "ccur":Lorg/checkerframework/dataflow/cfg/block/ConditionalBlock;
    .end local v11    # "thenSuccessor":Lorg/checkerframework/dataflow/cfg/block/Block;
    .end local v12    # "elseSuccessor":Lorg/checkerframework/dataflow/cfg/block/Block;
    goto :goto_0

    .line 127
    :cond_0
    move-object/from16 v10, p1

    check-cast v10, Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlock;

    .line 128
    .local v10, "sscur":Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlock;
    invoke-interface {v10}, Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlock;->getSuccessor()Lorg/checkerframework/dataflow/cfg/block/Block;

    move-result-object v11

    .line 129
    .local v11, "succ":Lorg/checkerframework/dataflow/cfg/block/Block;
    if-eqz v11, :cond_1

    .line 130
    invoke-interface/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/block/Block;->getId()J

    move-result-wide v1

    invoke-interface {v11}, Lorg/checkerframework/dataflow/cfg/block/Block;->getId()J

    move-result-wide v3

    invoke-interface {v10}, Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlock;->getFlowRule()Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/Store$FlowRule;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->addEdge(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v6, v11, v7, v8}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->addBlock(Lorg/checkerframework/dataflow/cfg/block/Block;Ljava/util/Set;Ljava/util/Queue;)V

    .line 134
    .end local v10    # "sscur":Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlock;
    .end local v11    # "succ":Lorg/checkerframework/dataflow/cfg/block/Block;
    :cond_1
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/block/Block;->getType()Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->EXCEPTION_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    if-ne v0, v1, :cond_5

    .line 135
    move-object/from16 v10, p1

    check-cast v10, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;

    .line 136
    .local v10, "ecur":Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;
    invoke-interface {v10}, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;->getExceptionalSuccessors()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/util/Map$Entry;

    .line 137
    .local v12, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeMirror;Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/block/Block;>;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljavax/lang/model/type/TypeMirror;

    .line 138
    .local v13, "cause":Ljavax/lang/model/type/TypeMirror;
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "exception":Ljava/lang/String;
    const-string v1, "java.lang."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_2

    .line 139
    :cond_2
    move-object v14, v0

    .line 142
    .end local v0    # "exception":Ljava/lang/String;
    .local v14, "exception":Ljava/lang/String;
    :goto_2
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/checkerframework/dataflow/cfg/block/Block;

    .line 143
    .local v5, "b":Lorg/checkerframework/dataflow/cfg/block/Block;
    invoke-interface/range {p1 .. p1}, Lorg/checkerframework/dataflow/cfg/block/Block;->getId()J

    move-result-wide v1

    invoke-interface {v5}, Lorg/checkerframework/dataflow/cfg/block/Block;->getId()J

    move-result-wide v3

    move-object/from16 v0, p0

    move-object/from16 v16, v10

    move-object v10, v5

    .end local v5    # "b":Lorg/checkerframework/dataflow/cfg/block/Block;
    .local v10, "b":Lorg/checkerframework/dataflow/cfg/block/Block;
    .local v16, "ecur":Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;
    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->addEdge(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v6, v10, v7, v8}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->addBlock(Lorg/checkerframework/dataflow/cfg/block/Block;Ljava/util/Set;Ljava/util/Queue;)V

    .line 145
    .end local v10    # "b":Lorg/checkerframework/dataflow/cfg/block/Block;
    move-object/from16 v10, v16

    goto :goto_3

    .line 142
    .end local v16    # "ecur":Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;
    .local v10, "ecur":Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;
    :cond_3
    move-object/from16 v16, v10

    .line 146
    .end local v10    # "ecur":Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;
    .end local v12    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeMirror;Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/block/Block;>;>;"
    .end local v13    # "cause":Ljavax/lang/model/type/TypeMirror;
    .end local v14    # "exception":Ljava/lang/String;
    .restart local v16    # "ecur":Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;
    goto :goto_1

    .line 136
    .end local v16    # "ecur":Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;
    .restart local v10    # "ecur":Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;
    :cond_4
    move-object/from16 v16, v10

    .line 148
    .end local v10    # "ecur":Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;
    :cond_5
    return-void
.end method

.method public init(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer<TA;TS;TT;>;"
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "verbose"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    .local v0, "verb":Ljava/lang/Object;
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 58
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    .line 59
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->verbose:Z

    .line 60
    return-void
.end method

.method protected loopOverBlockContents(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Analysis;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "bb"    # Lorg/checkerframework/dataflow/cfg/block/Block;
    .param p3, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            "Lorg/checkerframework/dataflow/analysis/Analysis<",
            "TA;TS;TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 228
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer<TA;TS;TT;>;"
    .local p2, "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->addBlockContent(Lorg/checkerframework/dataflow/cfg/block/Block;)Ljava/util/List;

    move-result-object v0

    .line 229
    .local v0, "contents":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    new-instance v1, Ljava/util/StringJoiner;

    invoke-direct {v1, p3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 230
    .local v1, "sjBlockContents":Ljava/util/StringJoiner;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 231
    .local v3, "t":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v3, p2}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->visualizeBlockNode(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/Analysis;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 232
    .end local v3    # "t":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected visualizeBlockHelper(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Analysis;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "bb"    # Lorg/checkerframework/dataflow/cfg/block/Block;
    .param p3, "escapeString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            "Lorg/checkerframework/dataflow/analysis/Analysis<",
            "TA;TS;TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 177
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer<TA;TS;TT;>;"
    .local p2, "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v0, "sbBlock":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->loopOverBlockContents(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Analysis;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const/4 v1, 0x0

    .line 182
    .local v1, "centered":Z
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 183
    invoke-interface {p1}, Lorg/checkerframework/dataflow/cfg/block/Block;->getType()Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->SPECIAL_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    if-ne v2, v3, :cond_0

    .line 184
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;

    invoke-virtual {p0, v2}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->visualizeSpecialBlock(Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const/4 v1, 0x1

    goto :goto_0

    .line 187
    :cond_0
    const-string v2, ""

    return-object v2

    .line 192
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 194
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->visualizeBlockTransferInput(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Analysis;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-boolean v2, p0, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->verbose:Z

    if-eqz v2, :cond_3

    .line 196
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->getLastNode(Lorg/checkerframework/dataflow/cfg/block/Block;)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    .line 197
    .local v2, "lastNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    if-eqz v2, :cond_3

    .line 198
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/analysis/Analysis;->getResult()Lorg/checkerframework/dataflow/analysis/AnalysisResult;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->getStoreAfter(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v3

    .line 199
    .local v3, "store":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v4, "sbStore":Ljava/lang/StringBuilder;
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "~~~~~~~~~"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v5, "After: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    if-eqz v3, :cond_2

    .line 203
    invoke-virtual {p0, v3}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->visualizeStore(Lorg/checkerframework/dataflow/analysis/Store;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 205
    :cond_2
    const-string v5, "null store"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 211
    .end local v2    # "lastNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v3    # "store":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    .end local v4    # "sbStore":Ljava/lang/StringBuilder;
    :cond_3
    if-nez v1, :cond_4

    .line 212
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected visualizeBlockTransferInputHelper(Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Analysis;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "bb"    # Lorg/checkerframework/dataflow/cfg/block/Block;
    .param p3, "escapeString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            "Lorg/checkerframework/dataflow/analysis/Analysis<",
            "TA;TS;TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 269
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer<TA;TS;TT;>;"
    .local p2, "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    if-eqz p2, :cond_2

    .line 272
    invoke-virtual {p2, p1}, Lorg/checkerframework/dataflow/analysis/Analysis;->getInput(Lorg/checkerframework/dataflow/cfg/block/Block;)Lorg/checkerframework/dataflow/analysis/TransferInput;

    move-result-object v0

    .line 273
    .local v0, "input":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    if-eqz v0, :cond_1

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .local v1, "sbStore":Ljava/lang/StringBuilder;
    const-string v2, "Before: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferInput;->containsTwoStores()Z

    move-result v2

    if-nez v2, :cond_0

    .line 280
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v2

    .line 281
    .local v2, "regularStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    invoke-virtual {p0, v2}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->visualizeStore(Lorg/checkerframework/dataflow/analysis/Store;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .end local v2    # "regularStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v2

    .line 284
    .local v2, "thenStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    const-string v3, "then="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {p0, v2}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->visualizeStore(Lorg/checkerframework/dataflow/analysis/Store;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v3

    .line 287
    .local v3, "elseStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    const-string v4, ", else="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {p0, v3}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->visualizeStore(Lorg/checkerframework/dataflow/analysis/Store;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .end local v2    # "thenStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    .end local v3    # "elseStore":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    :goto_0
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "~~~~~~~~~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 273
    .end local v1    # "sbStore":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "@AssumeAssertion(nullness): well-behaved analysis"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 269
    .end local v0    # "input":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "analysis should be non-null when visualizing the transfer input of a block."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method protected visualizeGraph(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Analysis;)Ljava/lang/String;
    .locals 2
    .param p1, "cfg"    # Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    .param p2, "entry"    # Lorg/checkerframework/dataflow/cfg/block/Block;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            "Lorg/checkerframework/dataflow/analysis/Analysis<",
            "TA;TS;TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 72
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer<TA;TS;TT;>;"
    .local p3, "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->visualizeGraphHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->visualizeGraphWithoutHeaderAndFooter(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Analysis;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->visualizeGraphFooter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    return-object v0
.end method

.method protected abstract visualizeGraphFooter()Ljava/lang/String;
.end method

.method protected abstract visualizeGraphHeader()Ljava/lang/String;
.end method

.method protected visualizeGraphWithoutHeaderAndFooter(Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/Analysis;)Ljava/lang/String;
    .locals 5
    .param p1, "cfg"    # Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    .param p2, "entry"    # Lorg/checkerframework/dataflow/cfg/block/Block;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            "Lorg/checkerframework/dataflow/analysis/Analysis<",
            "TA;TS;TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer<TA;TS;TT;>;"
    .local p3, "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;TT;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 88
    .local v0, "visited":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/block/Block;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v1, "sbGraph":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 90
    .local v2, "workList":Ljava/util/Queue;, "Ljava/util/Queue<Lorg/checkerframework/dataflow/cfg/block/Block;>;"
    move-object v3, p2

    .line 91
    .local v3, "cur":Lorg/checkerframework/dataflow/cfg/block/Block;
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    :goto_0
    if-eqz v3, :cond_0

    .line 93
    invoke-virtual {p0, v3, v0, v2, v1}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->handleSuccessorsHelper(Lorg/checkerframework/dataflow/cfg/block/Block;Ljava/util/Set;Ljava/util/Queue;Ljava/lang/StringBuilder;)V

    .line 94
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lorg/checkerframework/dataflow/cfg/block/Block;

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0, v0, p1, p3}, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;->visualizeNodes(Ljava/util/Set;Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;Lorg/checkerframework/dataflow/analysis/Analysis;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected abstract visualizeNodes(Ljava/util/Set;Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;Lorg/checkerframework/dataflow/analysis/Analysis;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            ">;",
            "Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;",
            "Lorg/checkerframework/dataflow/analysis/Analysis<",
            "TA;TS;TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected visualizeSpecialBlockHelper(Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sbb"    # Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;
    .param p2, "separator"    # Ljava/lang/String;

    .line 302
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer<TA;TS;TT;>;"
    sget-object v0, Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer$1;->$SwitchMap$org$checkerframework$dataflow$cfg$block$SpecialBlock$SpecialBlockType:[I

    invoke-interface {p1}, Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;->getSpecialType()Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 310
    const-string v0, ""

    return-object v0

    .line 308
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<exceptional-exit>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 306
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<exit>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 304
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<entry>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visualizeStore(Lorg/checkerframework/dataflow/analysis/Store;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 352
    .local p0, "this":Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer;, "Lorg/checkerframework/dataflow/cfg/AbstractCFGVisualizer<TA;TS;TT;>;"
    .local p1, "store":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    invoke-interface {p1, p0}, Lorg/checkerframework/dataflow/analysis/Store;->visualize(Lorg/checkerframework/dataflow/cfg/CFGVisualizer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
