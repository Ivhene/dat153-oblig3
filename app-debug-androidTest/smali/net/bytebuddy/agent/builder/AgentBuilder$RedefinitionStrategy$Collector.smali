.class public abstract Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;
.super Ljava/lang/Object;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Collector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$ForRetransformation;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$ForRedefinition;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$PrependableIterator;
    }
.end annotation


# instance fields
.field protected final circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

.field private final descriptionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;

.field private final fallbackStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;

.field protected final listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

.field protected final locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

.field private final matcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

.field private final poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

.field protected final types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;)V
    .locals 1
    .param p1, "matcher"    # Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;
    .param p2, "poolStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;
    .param p3, "locationStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;
    .param p4, "descriptionStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;
    .param p5, "listener"    # Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;
    .param p6, "fallbackStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;
    .param p7, "circularityLock"    # Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    .line 7506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7507
    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->matcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    .line 7508
    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    .line 7509
    iput-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    .line 7510
    iput-object p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->descriptionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;

    .line 7511
    iput-object p5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    .line 7512
    iput-object p6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->fallbackStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;

    .line 7513
    iput-object p7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    .line 7514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->types:Ljava/util/List;

    .line 7515
    return-void
.end method

.method private doConsider(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Class;Ljava/lang/Class;Lnet/bytebuddy/utility/JavaModule;Z)V
    .locals 14
    .param p1, "matcher"    # Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;
    .param p2, "listener"    # Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;
    .param p3, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p6, "module"    # Lnet/bytebuddy/utility/JavaModule;
    .param p7, "modifiable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lnet/bytebuddy/utility/JavaModule;",
            "Z)V"
        }
    .end annotation

    .line 7583
    .local p4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p5, "classBeingRedefined":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v7, p2

    move-object/from16 v8, p6

    if-eqz p7, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v6

    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p5

    invoke-interface/range {v1 .. v6}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;->matches(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v9, p0

    move-object/from16 v10, p4

    goto :goto_0

    .line 7597
    :cond_0
    move-object v9, p0

    iget-object v0, v9, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->types:Ljava/util/List;

    move-object/from16 v10, p4

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v13, p3

    goto/16 :goto_8

    .line 7583
    :cond_1
    move-object v9, p0

    move-object/from16 v10, p4

    .line 7586
    :goto_0
    const/4 v11, 0x1

    const/4 v12, 0x0

    :try_start_0
    invoke-static/range {p4 .. p4}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz p5, :cond_2

    move v2, v11

    goto :goto_1

    :cond_2
    move v2, v12

    :goto_1
    invoke-interface {v7, v0, v1, v8, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onDiscovery(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    .line 7587
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p5, :cond_3

    move v1, v11

    goto :goto_2

    :cond_3
    move v1, v12

    :goto_2
    move-object/from16 v13, p3

    :try_start_1
    invoke-interface {v7, v13, v0, v8, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onIgnored(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7591
    :try_start_2
    invoke-static/range {p4 .. p4}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz p5, :cond_4

    goto :goto_5

    :cond_4
    move v11, v12

    goto :goto_5

    .line 7588
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v13, p3

    :goto_3
    move-object v6, v0

    .line 7589
    .local v6, "throwable":Ljava/lang/Throwable;
    :try_start_3
    invoke-static/range {p4 .. p4}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-eqz p5, :cond_5

    move v5, v11

    goto :goto_4

    :cond_5
    move v5, v12

    :goto_4
    move-object/from16 v1, p2

    move-object/from16 v4, p6

    invoke-interface/range {v1 .. v6}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onError(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;ZLjava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 7591
    .end local v6    # "throwable":Ljava/lang/Throwable;
    :try_start_4
    invoke-static/range {p4 .. p4}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz p5, :cond_6

    goto :goto_5

    :cond_6
    move v11, v12

    :goto_5
    invoke-interface {v7, v0, v1, v8, v11}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onComplete(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    .line 7592
    goto :goto_7

    .line 7591
    :catchall_2
    move-exception v0

    invoke-static/range {p4 .. p4}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eqz p5, :cond_7

    goto :goto_6

    :cond_7
    move v11, v12

    :goto_6
    invoke-interface {v7, v1, v2, v8, v11}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onComplete(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    .line 7592
    nop

    .end local p1    # "matcher":Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;
    .end local p2    # "listener":Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;
    .end local p3    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    .end local p4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p5    # "classBeingRedefined":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p6    # "module":Lnet/bytebuddy/utility/JavaModule;
    .end local p7    # "modifiable":Z
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 7593
    .restart local p1    # "matcher":Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;
    .restart local p2    # "listener":Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;
    .restart local p3    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    .restart local p4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p5    # "classBeingRedefined":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p6    # "module":Lnet/bytebuddy/utility/JavaModule;
    .restart local p7    # "modifiable":Z
    :catchall_3
    move-exception v0

    .line 7595
    :goto_7
    nop

    .line 7599
    :goto_8
    return-void
.end method


# virtual methods
.method protected apply(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;I)I
    .locals 5
    .param p1, "instrumentation"    # Ljava/lang/instrument/Instrumentation;
    .param p2, "redefinitionBatchAllocator"    # Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;
    .param p3, "redefinitionListener"    # Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;
    .param p4, "batch"    # I

    .line 7614
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7615
    .local v0, "failures":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/List<Ljava/lang/Class<*>;>;Ljava/lang/Throwable;>;"
    new-instance v1, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$PrependableIterator;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->types:Ljava/util/List;

    invoke-interface {p2, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;->batch(Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$PrependableIterator;-><init>(Ljava/lang/Iterable;)V

    .line 7616
    .local v1, "prependableIterator":Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$PrependableIterator;
    :goto_0
    invoke-virtual {v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$PrependableIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7617
    invoke-virtual {v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$PrependableIterator;->next()Ljava/util/List;

    move-result-object v2

    .line 7618
    .local v2, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->types:Ljava/util/List;

    invoke-interface {p3, p4, v2, v3}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;->onBatch(ILjava/util/List;Ljava/util/List;)V

    .line 7620
    :try_start_0
    invoke-virtual {p0, p1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->doApply(Ljava/lang/instrument/Instrumentation;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7624
    goto :goto_1

    .line 7621
    :catchall_0
    move-exception v3

    .line 7622
    .local v3, "throwable":Ljava/lang/Throwable;
    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->types:Ljava/util/List;

    invoke-interface {p3, p4, v2, v3, v4}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;->onError(ILjava/util/List;Ljava/lang/Throwable;Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector$PrependableIterator;->prepend(Ljava/lang/Iterable;)V

    .line 7623
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7625
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :goto_1
    nop

    .end local v2    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    add-int/lit8 p4, p4, 0x1

    .line 7626
    goto :goto_0

    .line 7627
    :cond_0
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->types:Ljava/util/List;

    invoke-interface {p3, p4, v2, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;->onComplete(ILjava/util/List;Ljava/util/Map;)V

    .line 7628
    return p4
.end method

.method protected consider(Ljava/lang/Class;Z)V
    .locals 16
    .param p2, "modifiable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 7524
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v9, p0

    invoke-static/range {p1 .. p1}, Lnet/bytebuddy/utility/JavaModule;->ofType(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaModule;

    move-result-object v15

    .line 7526
    .local v15, "module":Lnet/bytebuddy/utility/JavaModule;
    :try_start_0
    iget-object v0, v9, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v1, v9, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-interface {v1, v2, v15}, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;->classFileLocator(Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;->typePool(Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/lang/ClassLoader;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v10, v0

    .line 7528
    .local v10, "typePool":Lnet/bytebuddy/pool/TypePool;
    :try_start_1
    iget-object v0, v9, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->matcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    iget-object v8, v9, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    iget-object v1, v9, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->descriptionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;

    .line 7530
    invoke-static/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v9, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object/from16 v3, p1

    move-object v4, v10

    move-object v7, v15

    invoke-interface/range {v1 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;->apply(Ljava/lang/String;Ljava/lang/Class;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    .line 7528
    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v8

    move-object/from16 v5, p1

    move-object/from16 v6, p1

    move-object v7, v15

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->doConsider(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Class;Ljava/lang/Class;Lnet/bytebuddy/utility/JavaModule;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7547
    move-object/from16 v14, p1

    goto :goto_0

    .line 7535
    :catchall_0
    move-exception v0

    .line 7536
    .local v0, "throwable":Ljava/lang/Throwable;
    :try_start_2
    iget-object v1, v9, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->descriptionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;

    invoke-interface {v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;->isLoadedFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v9, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->fallbackStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v14, p1

    :try_start_3
    invoke-interface {v1, v14, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;->isFallback(Ljava/lang/Class;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7537
    iget-object v2, v9, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->matcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    iget-object v3, v9, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    .line 7539
    invoke-static/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 7537
    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object v7, v15

    invoke-direct/range {v1 .. v8}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->doConsider(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Class;Ljava/lang/Class;Lnet/bytebuddy/utility/JavaModule;Z)V

    .line 7562
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v10    # "typePool":Lnet/bytebuddy/pool/TypePool;
    :goto_0
    move-object v1, v15

    goto/16 :goto_3

    .line 7536
    .restart local v0    # "throwable":Ljava/lang/Throwable;
    .restart local v10    # "typePool":Lnet/bytebuddy/pool/TypePool;
    :cond_0
    move-object/from16 v14, p1

    .line 7545
    :cond_1
    nop

    .end local v15    # "module":Lnet/bytebuddy/utility/JavaModule;
    .end local p1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p2    # "modifiable":Z
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7548
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v10    # "typePool":Lnet/bytebuddy/pool/TypePool;
    .restart local v15    # "module":Lnet/bytebuddy/utility/JavaModule;
    .restart local p1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p2    # "modifiable":Z
    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v14, p1

    :goto_1
    move-object v6, v0

    .line 7551
    .local v6, "throwable":Ljava/lang/Throwable;
    const/4 v7, 0x1

    :try_start_4
    iget-object v0, v9, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    invoke-static/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-interface {v0, v1, v2, v15, v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onDiscovery(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 7554
    :try_start_5
    iget-object v1, v9, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    invoke-static/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v5, 0x1

    move-object v4, v15

    invoke-interface/range {v1 .. v6}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onError(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;ZLjava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 7556
    :try_start_6
    iget-object v0, v9, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    invoke-static/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-interface {v0, v1, v2, v15, v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onComplete(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    .line 7557
    nop

    .line 7558
    nop

    .line 7561
    move-object v1, v15

    goto :goto_3

    .line 7556
    :catchall_3
    move-exception v0

    iget-object v1, v9, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    invoke-static/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-interface {v1, v2, v3, v15, v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onComplete(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    .line 7557
    nop

    .end local v6    # "throwable":Ljava/lang/Throwable;
    .end local v15    # "module":Lnet/bytebuddy/utility/JavaModule;
    .end local p1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p2    # "modifiable":Z
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 7559
    .restart local v6    # "throwable":Ljava/lang/Throwable;
    .restart local v15    # "module":Lnet/bytebuddy/utility/JavaModule;
    .restart local p1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p2    # "modifiable":Z
    :catchall_4
    move-exception v0

    move-object v1, v15

    goto :goto_3

    .line 7553
    :catchall_5
    move-exception v0

    .line 7554
    :try_start_7
    iget-object v10, v9, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    invoke-static/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    const/4 v1, 0x1

    move-object v13, v15

    move v14, v1

    move-object v1, v15

    .end local v15    # "module":Lnet/bytebuddy/utility/JavaModule;
    .local v1, "module":Lnet/bytebuddy/utility/JavaModule;
    move-object v15, v6

    :try_start_8
    invoke-interface/range {v10 .. v15}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onError(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;ZLjava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 7556
    :try_start_9
    iget-object v2, v9, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    invoke-static/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1, v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onComplete(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    .line 7557
    nop

    .line 7558
    nop

    .end local v1    # "module":Lnet/bytebuddy/utility/JavaModule;
    .end local v6    # "throwable":Ljava/lang/Throwable;
    .end local p1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p2    # "modifiable":Z
    throw v0

    .line 7556
    .restart local v1    # "module":Lnet/bytebuddy/utility/JavaModule;
    .restart local v6    # "throwable":Ljava/lang/Throwable;
    .restart local p1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p2    # "modifiable":Z
    :catchall_6
    move-exception v0

    goto :goto_2

    .end local v1    # "module":Lnet/bytebuddy/utility/JavaModule;
    .restart local v15    # "module":Lnet/bytebuddy/utility/JavaModule;
    :catchall_7
    move-exception v0

    move-object v1, v15

    .end local v15    # "module":Lnet/bytebuddy/utility/JavaModule;
    .restart local v1    # "module":Lnet/bytebuddy/utility/JavaModule;
    :goto_2
    iget-object v2, v9, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Collector;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    invoke-static/range {p1 .. p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1, v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onComplete(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    .line 7557
    nop

    .end local v1    # "module":Lnet/bytebuddy/utility/JavaModule;
    .end local v6    # "throwable":Ljava/lang/Throwable;
    .end local p1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p2    # "modifiable":Z
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 7559
    .restart local v1    # "module":Lnet/bytebuddy/utility/JavaModule;
    .restart local v6    # "throwable":Ljava/lang/Throwable;
    .restart local p1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p2    # "modifiable":Z
    :catchall_8
    move-exception v0

    .line 7563
    .end local v6    # "throwable":Ljava/lang/Throwable;
    :goto_3
    return-void
.end method

.method protected abstract doApply(Ljava/lang/instrument/Instrumentation;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/instrument/UnmodifiableClassException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method
