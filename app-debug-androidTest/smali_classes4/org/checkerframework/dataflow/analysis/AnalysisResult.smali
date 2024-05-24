.class public Lorg/checkerframework/dataflow/analysis/AnalysisResult;
.super Ljava/lang/Object;
.source "AnalysisResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lorg/checkerframework/dataflow/analysis/AbstractValue<",
        "TA;>;S::",
        "Lorg/checkerframework/dataflow/analysis/Store<",
        "TS;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final analysisCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TA;TS;>;",
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TA;TS;>;>;>;"
        }
    .end annotation
.end field

.field protected final finalLocalValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljavax/lang/model/element/Element;",
            "TA;>;"
        }
    .end annotation
.end field

.field protected final nodeValues:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "TA;>;"
        }
    .end annotation
.end field

.field protected final stores:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TA;TS;>;>;"
        }
    .end annotation
.end field

.field protected final treeLookup:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/sun/source/tree/Tree;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final unaryAssignNodeLookup:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/sun/source/tree/UnaryTree;",
            "Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TA;TS;>;",
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TA;TS;>;>;>;)V"
        }
    .end annotation

    .line 87
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/AnalysisResult;, "Lorg/checkerframework/dataflow/analysis/AnalysisResult<TA;TS;>;"
    .local p1, "analysisCaches":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;>;>;"
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-direct {v3}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v4, Ljava/util/IdentityHashMap;

    invoke-direct {v4}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/dataflow/analysis/AnalysisResult;-><init>(Ljava/util/Map;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/HashMap;Ljava/util/Map;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "TA;>;",
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TA;TS;>;>;",
            "Ljava/util/IdentityHashMap<",
            "Lcom/sun/source/tree/Tree;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;>;",
            "Ljava/util/IdentityHashMap<",
            "Lcom/sun/source/tree/UnaryTree;",
            "Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljavax/lang/model/element/Element;",
            "TA;>;)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/AnalysisResult;, "Lorg/checkerframework/dataflow/analysis/AnalysisResult<TA;TS;>;"
    .local p1, "nodeValues":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/dataflow/cfg/node/Node;TA;>;"
    .local p2, "stores":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;>;"
    .local p3, "treeLookup":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/sun/source/tree/Tree;Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/node/Node;>;>;"
    .local p4, "unaryAssignNodeLookup":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/sun/source/tree/UnaryTree;Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;>;"
    .local p5, "finalLocalValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljavax/lang/model/element/Element;TA;>;"
    new-instance v6, Ljava/util/IdentityHashMap;

    invoke-direct {v6}, Ljava/util/IdentityHashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/dataflow/analysis/AnalysisResult;-><init>(Ljava/util/Map;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/HashMap;Ljava/util/Map;)V

    .line 82
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/HashMap;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "TA;>;",
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/dataflow/cfg/block/Block;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TA;TS;>;>;",
            "Ljava/util/IdentityHashMap<",
            "Lcom/sun/source/tree/Tree;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;>;",
            "Ljava/util/IdentityHashMap<",
            "Lcom/sun/source/tree/UnaryTree;",
            "Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljavax/lang/model/element/Element;",
            "TA;>;",
            "Ljava/util/Map<",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TA;TS;>;",
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TA;TS;>;>;>;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/AnalysisResult;, "Lorg/checkerframework/dataflow/analysis/AnalysisResult<TA;TS;>;"
    .local p1, "nodeValues":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/dataflow/cfg/node/Node;TA;>;"
    .local p2, "stores":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/block/Block;Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;>;"
    .local p3, "treeLookup":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/sun/source/tree/Tree;Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/node/Node;>;>;"
    .local p4, "unaryAssignNodeLookup":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/sun/source/tree/UnaryTree;Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;>;"
    .local p5, "finalLocalValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljavax/lang/model/element/Element;TA;>;"
    .local p6, "analysisCaches":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0, p1}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->nodeValues:Ljava/util/IdentityHashMap;

    .line 60
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0, p3}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->treeLookup:Ljava/util/IdentityHashMap;

    .line 61
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0, p4}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->unaryAssignNodeLookup:Ljava/util/IdentityHashMap;

    .line 63
    iput-object p2, p0, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->stores:Ljava/util/IdentityHashMap;

    .line 64
    iput-object p5, p0, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->finalLocalValues:Ljava/util/HashMap;

    .line 65
    iput-object p6, p0, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->analysisCaches:Ljava/util/Map;

    .line 66
    return-void
.end method

.method private static mergeTreeLookup(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/IdentityHashMap<",
            "Lcom/sun/source/tree/Tree;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;>;",
            "Ljava/util/IdentityHashMap<",
            "Lcom/sun/source/tree/Tree;",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;>;)V"
        }
    .end annotation

    .line 109
    .local p0, "treeLookup":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/sun/source/tree/Tree;Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/node/Node;>;>;"
    .local p1, "otherTreeLookup":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/sun/source/tree/Tree;Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/node/Node;>;>;"
    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 110
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sun/source/tree/Tree;Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/node/Node;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 111
    .local v2, "hit":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    if-nez v2, :cond_0

    .line 112
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/Tree;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-virtual {p0, v3, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 114
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 116
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sun/source/tree/Tree;Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/node/Node;>;>;"
    .end local v2    # "hit":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    :goto_1
    goto :goto_0

    .line 117
    :cond_1
    return-void
.end method

.method public static runAnalysisFor(Lorg/checkerframework/dataflow/cfg/node/Node;ZLorg/checkerframework/dataflow/analysis/TransferInput;Ljava/util/IdentityHashMap;Ljava/util/Map;)Lorg/checkerframework/dataflow/analysis/Store;
    .locals 16
    .param p0, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p1, "before"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lorg/checkerframework/dataflow/analysis/AbstractValue<",
            "TA;>;S::",
            "Lorg/checkerframework/dataflow/analysis/Store<",
            "TS;>;>(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Z",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TA;TS;>;",
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "TA;>;",
            "Ljava/util/Map<",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "TA;TS;>;",
            "Ljava/util/IdentityHashMap<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "TA;TS;>;>;>;)TS;"
        }
    .end annotation

    .line 263
    .local p2, "transferInput":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    .local p3, "nodeValues":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/node/Node;TA;>;"
    .local p4, "analysisCaches":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;>;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    if-eqz v1, :cond_d

    .line 264
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/dataflow/cfg/node/Node;->getBlock()Lorg/checkerframework/dataflow/cfg/block/Block;

    move-result-object v4

    .line 265
    .local v4, "block":Lorg/checkerframework/dataflow/cfg/block/Block;
    const-string v0, "@AssumeAssertion(nullness): invariant"

    if-eqz v4, :cond_c

    .line 266
    if-eqz v2, :cond_b

    .line 267
    iget-object v5, v2, Lorg/checkerframework/dataflow/analysis/TransferInput;->analysis:Lorg/checkerframework/dataflow/analysis/Analysis;

    .line 268
    .local v5, "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;*>;"
    iget-object v6, v5, Lorg/checkerframework/dataflow/analysis/Analysis;->currentNode:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 272
    .local v6, "oldCurrentNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    if-eqz v3, :cond_0

    .line 273
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/IdentityHashMap;

    .line 274
    .local v7, "cache":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;>;"
    if-nez v7, :cond_1

    .line 275
    new-instance v8, Ljava/util/IdentityHashMap;

    invoke-direct {v8}, Ljava/util/IdentityHashMap;-><init>()V

    move-object v7, v8

    .line 276
    invoke-interface {v3, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 279
    .end local v7    # "cache":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;>;"
    :cond_0
    const/4 v7, 0x0

    .line 282
    .restart local v7    # "cache":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;>;"
    :cond_1
    :goto_0
    iget-boolean v8, v5, Lorg/checkerframework/dataflow/analysis/Analysis;->isRunning:Z

    if-eqz v8, :cond_3

    .line 283
    iget-object v8, v5, Lorg/checkerframework/dataflow/analysis/Analysis;->currentInput:Lorg/checkerframework/dataflow/analysis/TransferInput;

    if-eqz v8, :cond_2

    .line 284
    iget-object v0, v5, Lorg/checkerframework/dataflow/analysis/Analysis;->currentInput:Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    return-object v0

    .line 283
    :cond_2
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 286
    :cond_3
    move-object/from16 v8, p3

    invoke-virtual {v5, v8}, Lorg/checkerframework/dataflow/analysis/Analysis;->setNodeValues(Ljava/util/IdentityHashMap;)V

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, v5, Lorg/checkerframework/dataflow/analysis/Analysis;->isRunning:Z

    .line 289
    const/4 v9, 0x0

    :try_start_0
    sget-object v0, Lorg/checkerframework/dataflow/analysis/AnalysisResult$1;->$SwitchMap$org$checkerframework$dataflow$cfg$block$Block$BlockType:[I

    invoke-interface {v4}, Lorg/checkerframework/dataflow/cfg/block/Block;->getType()Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    move-result-object v10

    invoke-virtual {v10}, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->ordinal()I

    move-result v10

    aget v0, v0, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v10, "Unexpected code"

    packed-switch v0, :pswitch_data_0

    .line 339
    :try_start_1
    new-instance v0, Lorg/checkerframework/javacutil/BugInCF;

    goto/16 :goto_3

    .line 324
    :pswitch_0
    move-object v0, v4

    check-cast v0, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;

    .line 327
    .local v0, "eb":Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;
    invoke-interface {v0}, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;->getNode()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v10

    if-ne v10, v1, :cond_5

    .line 328
    if-eqz p1, :cond_4

    .line 329
    invoke-virtual/range {p2 .. p2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    iput-object v6, v5, Lorg/checkerframework/dataflow/analysis/Analysis;->currentNode:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 343
    iput-boolean v9, v5, Lorg/checkerframework/dataflow/analysis/Analysis;->isRunning:Z

    .line 329
    return-object v10

    .line 331
    :cond_4
    :try_start_2
    iput-object v1, v5, Lorg/checkerframework/dataflow/analysis/Analysis;->currentNode:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 332
    nop

    .line 333
    invoke-virtual {v5, v1, v2}, Lorg/checkerframework/dataflow/analysis/Analysis;->callTransferFunction(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v10

    .line 334
    .local v10, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;"
    invoke-virtual {v10}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 342
    iput-object v6, v5, Lorg/checkerframework/dataflow/analysis/Analysis;->currentNode:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 343
    iput-boolean v9, v5, Lorg/checkerframework/dataflow/analysis/Analysis;->isRunning:Z

    .line 334
    return-object v11

    .line 327
    .end local v10    # "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;"
    :cond_5
    :try_start_3
    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    .end local v4    # "block":Lorg/checkerframework/dataflow/cfg/block/Block;
    .end local v5    # "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;*>;"
    .end local v6    # "oldCurrentNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v7    # "cache":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;>;"
    .end local p0    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local p1    # "before":Z
    .end local p2    # "transferInput":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    .end local p3    # "nodeValues":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/node/Node;TA;>;"
    .end local p4    # "analysisCaches":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;>;>;"
    throw v10

    .line 292
    .end local v0    # "eb":Lorg/checkerframework/dataflow/cfg/block/ExceptionBlock;
    .restart local v4    # "block":Lorg/checkerframework/dataflow/cfg/block/Block;
    .restart local v5    # "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;*>;"
    .restart local v6    # "oldCurrentNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .restart local v7    # "cache":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;>;"
    .restart local p0    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    .restart local p1    # "before":Z
    .restart local p2    # "transferInput":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    .restart local p3    # "nodeValues":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/node/Node;TA;>;"
    .restart local p4    # "analysisCaches":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;>;>;"
    :pswitch_1
    move-object v0, v4

    check-cast v0, Lorg/checkerframework/dataflow/cfg/block/RegularBlock;

    .line 296
    .local v0, "rb":Lorg/checkerframework/dataflow/cfg/block/RegularBlock;
    move-object/from16 v11, p2

    .line 297
    .local v11, "store":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    const/4 v12, 0x0

    .line 298
    .local v12, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;"
    invoke-interface {v0}, Lorg/checkerframework/dataflow/cfg/block/RegularBlock;->getContents()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 299
    .local v14, "n":Lorg/checkerframework/dataflow/cfg/node/Node;
    iput-object v14, v5, Lorg/checkerframework/dataflow/analysis/Analysis;->currentNode:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 300
    if-ne v14, v1, :cond_6

    if-eqz p1, :cond_6

    .line 301
    invoke-virtual {v11}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 342
    iput-object v6, v5, Lorg/checkerframework/dataflow/analysis/Analysis;->currentNode:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 343
    iput-boolean v9, v5, Lorg/checkerframework/dataflow/analysis/Analysis;->isRunning:Z

    .line 301
    return-object v10

    .line 303
    :cond_6
    if-eqz v7, :cond_7

    :try_start_4
    invoke-virtual {v7, v14}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 304
    invoke-virtual {v7, v14}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-object v12, v15

    goto :goto_2

    .line 307
    :cond_7
    invoke-virtual {v11}, Lorg/checkerframework/dataflow/analysis/TransferInput;->copy()Lorg/checkerframework/dataflow/analysis/TransferInput;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Lorg/checkerframework/dataflow/analysis/Analysis;->callTransferFunction(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v15

    move-object v12, v15

    .line 308
    if-eqz v7, :cond_8

    .line 309
    invoke-virtual {v7, v14, v12}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_8
    :goto_2
    if-ne v14, v1, :cond_9

    .line 313
    invoke-virtual {v12}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 342
    iput-object v6, v5, Lorg/checkerframework/dataflow/analysis/Analysis;->currentNode:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 343
    iput-boolean v9, v5, Lorg/checkerframework/dataflow/analysis/Analysis;->isRunning:Z

    .line 313
    return-object v10

    .line 315
    :cond_9
    :try_start_5
    new-instance v15, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-direct {v15, v14, v5, v12}, Lorg/checkerframework/dataflow/analysis/TransferInput;-><init>(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/Analysis;Lorg/checkerframework/dataflow/analysis/TransferResult;)V

    move-object v11, v15

    .line 316
    .end local v14    # "n":Lorg/checkerframework/dataflow/cfg/node/Node;
    goto :goto_1

    .line 319
    :cond_a
    new-instance v13, Lorg/checkerframework/javacutil/BugInCF;

    invoke-direct {v13, v10}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    .end local v4    # "block":Lorg/checkerframework/dataflow/cfg/block/Block;
    .end local v5    # "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;*>;"
    .end local v6    # "oldCurrentNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v7    # "cache":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;>;"
    .end local p0    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local p1    # "before":Z
    .end local p2    # "transferInput":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    .end local p3    # "nodeValues":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/node/Node;TA;>;"
    .end local p4    # "analysisCaches":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;>;>;"
    throw v13

    .line 339
    .end local v0    # "rb":Lorg/checkerframework/dataflow/cfg/block/RegularBlock;
    .end local v11    # "store":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    .end local v12    # "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;"
    .restart local v4    # "block":Lorg/checkerframework/dataflow/cfg/block/Block;
    .restart local v5    # "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;*>;"
    .restart local v6    # "oldCurrentNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .restart local v7    # "cache":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;>;"
    .restart local p0    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    .restart local p1    # "before":Z
    .restart local p2    # "transferInput":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    .restart local p3    # "nodeValues":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/node/Node;TA;>;"
    .restart local p4    # "analysisCaches":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;>;>;"
    :goto_3
    invoke-direct {v0, v10}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    .end local v4    # "block":Lorg/checkerframework/dataflow/cfg/block/Block;
    .end local v5    # "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;*>;"
    .end local v6    # "oldCurrentNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v7    # "cache":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;>;"
    .end local p0    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local p1    # "before":Z
    .end local p2    # "transferInput":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    .end local p3    # "nodeValues":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/node/Node;TA;>;"
    .end local p4    # "analysisCaches":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;>;>;"
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 342
    .restart local v4    # "block":Lorg/checkerframework/dataflow/cfg/block/Block;
    .restart local v5    # "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;*>;"
    .restart local v6    # "oldCurrentNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .restart local v7    # "cache":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;>;"
    .restart local p0    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    .restart local p1    # "before":Z
    .restart local p2    # "transferInput":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    .restart local p3    # "nodeValues":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/node/Node;TA;>;"
    .restart local p4    # "analysisCaches":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;>;>;"
    :catchall_0
    move-exception v0

    iput-object v6, v5, Lorg/checkerframework/dataflow/analysis/Analysis;->currentNode:Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 343
    iput-boolean v9, v5, Lorg/checkerframework/dataflow/analysis/Analysis;->isRunning:Z

    throw v0

    .line 266
    .end local v5    # "analysis":Lorg/checkerframework/dataflow/analysis/Analysis;, "Lorg/checkerframework/dataflow/analysis/Analysis<TA;TS;*>;"
    .end local v6    # "oldCurrentNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v7    # "cache":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferResult<TA;TS;>;>;"
    :cond_b
    move-object/from16 v8, p3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 265
    :cond_c
    move-object/from16 v8, p3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 263
    .end local v4    # "block":Lorg/checkerframework/dataflow/cfg/block/Block;
    :cond_d
    move-object/from16 v8, p3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public combine(Lorg/checkerframework/dataflow/analysis/AnalysisResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/AnalysisResult<",
            "TA;TS;>;)V"
        }
    .end annotation

    .line 98
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/AnalysisResult;, "Lorg/checkerframework/dataflow/analysis/AnalysisResult<TA;TS;>;"
    .local p1, "other":Lorg/checkerframework/dataflow/analysis/AnalysisResult;, "Lorg/checkerframework/dataflow/analysis/AnalysisResult<TA;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->nodeValues:Ljava/util/IdentityHashMap;

    iget-object v1, p1, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->nodeValues:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    .line 99
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->treeLookup:Ljava/util/IdentityHashMap;

    iget-object v1, p1, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->treeLookup:Ljava/util/IdentityHashMap;

    invoke-static {v0, v1}, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->mergeTreeLookup(Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V

    .line 100
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->unaryAssignNodeLookup:Ljava/util/IdentityHashMap;

    iget-object v1, p1, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->unaryAssignNodeLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    .line 101
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->stores:Ljava/util/IdentityHashMap;

    iget-object v1, p1, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->stores:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    .line 102
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->finalLocalValues:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->finalLocalValues:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 103
    return-void
.end method

.method public getAssignForUnaryTree(Lcom/sun/source/tree/UnaryTree;)Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;
    .locals 3
    .param p1, "tree"    # Lcom/sun/source/tree/UnaryTree;

    .line 179
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/AnalysisResult;, "Lorg/checkerframework/dataflow/analysis/AnalysisResult<TA;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->unaryAssignNodeLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->unaryAssignNodeLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/AssignmentNode;

    return-object v0

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in unaryAssignNodeLookup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getFinalLocalValues()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljavax/lang/model/element/Element;",
            "TA;>;"
        }
    .end annotation

    .line 121
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/AnalysisResult;, "Lorg/checkerframework/dataflow/analysis/AnalysisResult<TA;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->finalLocalValues:Ljava/util/HashMap;

    return-object v0
.end method

.method public getNodesForTree(Lcom/sun/source/tree/Tree;)Ljava/util/Set;
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            ")",
            "Ljava/util/Set<",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ">;"
        }
    .end annotation

    .line 174
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/AnalysisResult;, "Lorg/checkerframework/dataflow/analysis/AnalysisResult<TA;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->treeLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getStoreAfter(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/dataflow/analysis/Store;
    .locals 5
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            ")TS;"
        }
    .end annotation

    .line 208
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/AnalysisResult;, "Lorg/checkerframework/dataflow/analysis/AnalysisResult<TA;TS;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->getNodesForTree(Lcom/sun/source/tree/Tree;)Ljava/util/Set;

    move-result-object v0

    .line 209
    .local v0, "nodes":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    if-nez v0, :cond_0

    .line 210
    const/4 v1, 0x0

    return-object v1

    .line 212
    :cond_0
    const/4 v1, 0x0

    .line 213
    .local v1, "merged":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 214
    .local v3, "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v3}, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->getStoreAfter(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v4

    .line 215
    .local v4, "s":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    if-nez v1, :cond_1

    .line 216
    move-object v1, v4

    goto :goto_1

    .line 217
    :cond_1
    if-eqz v4, :cond_2

    .line 218
    invoke-interface {v1, v4}, Lorg/checkerframework/dataflow/analysis/Store;->leastUpperBound(Lorg/checkerframework/dataflow/analysis/Store;)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    .line 220
    .end local v3    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v4    # "s":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    :cond_2
    :goto_1
    goto :goto_0

    .line 221
    :cond_3
    return-object v1
.end method

.method public getStoreAfter(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/Store;
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ")TS;"
        }
    .end annotation

    .line 226
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/AnalysisResult;, "Lorg/checkerframework/dataflow/analysis/AnalysisResult<TA;TS;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->runAnalysisFor(Lorg/checkerframework/dataflow/cfg/node/Node;Z)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    return-object v0
.end method

.method public getStoreBefore(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/dataflow/analysis/Store;
    .locals 5
    .param p1, "tree"    # Lcom/sun/source/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            ")TS;"
        }
    .end annotation

    .line 185
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/AnalysisResult;, "Lorg/checkerframework/dataflow/analysis/AnalysisResult<TA;TS;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->getNodesForTree(Lcom/sun/source/tree/Tree;)Ljava/util/Set;

    move-result-object v0

    .line 186
    .local v0, "nodes":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    if-nez v0, :cond_0

    .line 187
    const/4 v1, 0x0

    return-object v1

    .line 189
    :cond_0
    const/4 v1, 0x0

    .line 190
    .local v1, "merged":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 191
    .local v3, "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v3}, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->getStoreBefore(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v4

    .line 192
    .local v4, "s":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    if-nez v1, :cond_1

    .line 193
    move-object v1, v4

    goto :goto_1

    .line 194
    :cond_1
    if-eqz v4, :cond_2

    .line 195
    invoke-interface {v1, v4}, Lorg/checkerframework/dataflow/analysis/Store;->leastUpperBound(Lorg/checkerframework/dataflow/analysis/Store;)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    .line 197
    .end local v3    # "node":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v4    # "s":Lorg/checkerframework/dataflow/analysis/Store;, "TS;"
    :cond_2
    :goto_1
    goto :goto_0

    .line 198
    :cond_3
    return-object v1
.end method

.method public getStoreBefore(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/Store;
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ")TS;"
        }
    .end annotation

    .line 203
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/AnalysisResult;, "Lorg/checkerframework/dataflow/analysis/AnalysisResult<TA;TS;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->runAnalysisFor(Lorg/checkerframework/dataflow/cfg/node/Node;Z)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/dataflow/analysis/AbstractValue;
    .locals 5
    .param p1, "t"    # Lcom/sun/source/tree/Tree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/Tree;",
            ")TA;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/AnalysisResult;, "Lorg/checkerframework/dataflow/analysis/AnalysisResult<TA;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->treeLookup:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 139
    .local v0, "nodes":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/node/Node;>;"
    if-nez v0, :cond_0

    .line 140
    const/4 v1, 0x0

    return-object v1

    .line 142
    :cond_0
    const/4 v1, 0x0

    .line 143
    .local v1, "merged":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 144
    .local v3, "aNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {p0, v3}, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->getValue(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v4

    .line 145
    .local v4, "a":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    if-nez v1, :cond_1

    .line 146
    move-object v1, v4

    goto :goto_1

    .line 147
    :cond_1
    if-eqz v4, :cond_2

    .line 148
    invoke-interface {v1, v4}, Lorg/checkerframework/dataflow/analysis/AbstractValue;->leastUpperBound(Lorg/checkerframework/dataflow/analysis/AbstractValue;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v1

    .line 150
    .end local v3    # "aNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v4    # "a":Lorg/checkerframework/dataflow/analysis/AbstractValue;, "TA;"
    :cond_2
    :goto_1
    goto :goto_0

    .line 151
    :cond_3
    return-object v1
.end method

.method public getValue(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ")TA;"
        }
    .end annotation

    .line 129
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/AnalysisResult;, "Lorg/checkerframework/dataflow/analysis/AnalysisResult<TA;TS;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->nodeValues:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/AbstractValue;

    return-object v0
.end method

.method protected runAnalysisFor(Lorg/checkerframework/dataflow/cfg/node/Node;Z)Lorg/checkerframework/dataflow/analysis/Store;
    .locals 4
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "before"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Z)TS;"
        }
    .end annotation

    .line 238
    .local p0, "this":Lorg/checkerframework/dataflow/analysis/AnalysisResult;, "Lorg/checkerframework/dataflow/analysis/AnalysisResult<TA;TS;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getBlock()Lorg/checkerframework/dataflow/cfg/block/Block;

    move-result-object v0

    .line 239
    .local v0, "block":Lorg/checkerframework/dataflow/cfg/block/Block;
    if-eqz v0, :cond_1

    .line 240
    iget-object v1, p0, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->stores:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/dataflow/analysis/TransferInput;

    .line 241
    .local v1, "transferInput":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    if-nez v1, :cond_0

    .line 242
    const/4 v2, 0x0

    return-object v2

    .line 244
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->nodeValues:Ljava/util/IdentityHashMap;

    iget-object v3, p0, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->analysisCaches:Ljava/util/Map;

    invoke-static {p1, p2, v1, v2, v3}, Lorg/checkerframework/dataflow/analysis/AnalysisResult;->runAnalysisFor(Lorg/checkerframework/dataflow/cfg/node/Node;ZLorg/checkerframework/dataflow/analysis/TransferInput;Ljava/util/IdentityHashMap;Ljava/util/Map;)Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v2

    return-object v2

    .line 239
    .end local v1    # "transferInput":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<TA;TS;>;"
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "@AssumeAssertion(nullness): invariant"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
