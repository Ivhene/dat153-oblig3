.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;
.super Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer$AbstractBase;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ExecutingTransformer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$LegacyVmDispatcher;,
        Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory;
    }
.end annotation


# static fields
.field protected static final FACTORY:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory;


# instance fields
.field private final accessControlContext:Ljava/security/AccessControlContext;

.field private final byteBuddy:Lnet/bytebuddy/ByteBuddy;

.field private final circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

.field private final classFileBufferStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;

.field private final descriptionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;

.field private final fallbackStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;

.field private final ignoreMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

.field private final initializationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;

.field private final injectionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy;

.field private final installationListener:Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;

.field private final lambdaInstrumentationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

.field private final listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

.field private final locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

.field private final nativeMethodStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;

.field private final poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

.field private final resubmissionEnforcer:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionEnforcer;

.field private final transformations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;",
            ">;"
        }
    .end annotation
.end field

.field private final typeStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10575
    sget-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$CreationAction;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory$CreationAction;

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory;

    sput-object v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->FACTORY:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Factory;

    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/ByteBuddy;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionEnforcer;Ljava/util/List;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;)V
    .locals 16
    .param p1, "byteBuddy"    # Lnet/bytebuddy/ByteBuddy;
    .param p2, "listener"    # Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;
    .param p3, "poolStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;
    .param p4, "typeStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;
    .param p5, "locationStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;
    .param p6, "nativeMethodStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;
    .param p7, "initializationStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;
    .param p8, "injectionStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy;
    .param p9, "lambdaInstrumentationStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;
    .param p10, "descriptionStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;
    .param p11, "fallbackStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;
    .param p12, "classFileBufferStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;
    .param p13, "installationListener"    # Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;
    .param p14, "ignoreMatcher"    # Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;
    .param p15, "resubmissionEnforcer"    # Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionEnforcer;
    .param p17, "circularityLock"    # Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/ByteBuddy;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionEnforcer;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;",
            ">;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;",
            ")V"
        }
    .end annotation

    .line 10704
    .local p16, "transformations":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer$AbstractBase;-><init>()V

    .line 10705
    move-object/from16 v1, p1

    iput-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    .line 10706
    move-object/from16 v2, p4

    iput-object v2, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->typeStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;

    .line 10707
    move-object/from16 v3, p3

    iput-object v3, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    .line 10708
    move-object/from16 v4, p5

    iput-object v4, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    .line 10709
    move-object/from16 v5, p2

    iput-object v5, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    .line 10710
    move-object/from16 v6, p6

    iput-object v6, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->nativeMethodStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;

    .line 10711
    move-object/from16 v7, p7

    iput-object v7, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->initializationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;

    .line 10712
    move-object/from16 v8, p8

    iput-object v8, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->injectionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy;

    .line 10713
    move-object/from16 v9, p9

    iput-object v9, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->lambdaInstrumentationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    .line 10714
    move-object/from16 v10, p10

    iput-object v10, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->descriptionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;

    .line 10715
    move-object/from16 v11, p11

    iput-object v11, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->fallbackStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;

    .line 10716
    move-object/from16 v12, p12

    iput-object v12, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->classFileBufferStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;

    .line 10717
    move-object/from16 v13, p13

    iput-object v13, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->installationListener:Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;

    .line 10718
    move-object/from16 v14, p14

    iput-object v14, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->ignoreMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    .line 10719
    move-object/from16 v15, p15

    iput-object v15, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->resubmissionEnforcer:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionEnforcer;

    .line 10720
    move-object/from16 v1, p16

    iput-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->transformations:Ljava/util/List;

    .line 10721
    move-object/from16 v1, p17

    iput-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    .line 10722
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    iput-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->accessControlContext:Ljava/security/AccessControlContext;

    .line 10723
    return-void
.end method

.method static synthetic access$1600(Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B
    .locals 1
    .param p0, "x0"    # Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;
    .param p1, "x1"    # Lnet/bytebuddy/utility/JavaModule;
    .param p2, "x2"    # Ljava/lang/ClassLoader;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/Class;
    .param p5, "x5"    # Ljava/security/ProtectionDomain;
    .param p6, "x6"    # [B

    .line 10570
    invoke-direct/range {p0 .. p6}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->transform(Lnet/bytebuddy/utility/JavaModule;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B

    move-result-object v0

    return-object v0
.end method

.method private doTransform(Lnet/bytebuddy/utility/JavaModule;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;ZLjava/security/ProtectionDomain;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/dynamic/ClassFileLocator;)[B
    .locals 16
    .param p1, "module"    # Lnet/bytebuddy/utility/JavaModule;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "name"    # Ljava/lang/String;
    .param p5, "loaded"    # Z
    .param p6, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .param p7, "typePool"    # Lnet/bytebuddy/pool/TypePool;
    .param p8, "classFileLocator"    # Lnet/bytebuddy/dynamic/ClassFileLocator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/utility/JavaModule;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/security/ProtectionDomain;",
            "Lnet/bytebuddy/pool/TypePool;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ")[B"
        }
    .end annotation

    .line 10865
    .local p4, "classBeingRedefined":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->descriptionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;

    iget-object v5, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p7

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    invoke-interface/range {v1 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;->apply(Ljava/lang/String;Ljava/lang/Class;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v11

    .line 10866
    .local v11, "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v1

    .line 10867
    .local v12, "transformers":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;>;"
    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->ignoreMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    move-object v2, v11

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    invoke-interface/range {v1 .. v6}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;->matches(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10868
    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->transformations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;

    .line 10869
    .local v8, "transformation":Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;
    invoke-virtual {v8}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;->getMatcher()Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    move-result-object v1

    move-object v2, v11

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    invoke-interface/range {v1 .. v6}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;->matches(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10870
    invoke-virtual {v8}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;->getTransformers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10871
    invoke-virtual {v8}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;->isTerminal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10872
    goto :goto_1

    .line 10875
    .end local v8    # "transformation":Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;
    :cond_0
    goto :goto_0

    .line 10877
    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10878
    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    move/from16 v13, p5

    invoke-interface {v1, v11, v10, v9, v13}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onIgnored(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    .line 10879
    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;->access$1500()[B

    move-result-object v1

    return-object v1

    .line 10881
    :cond_2
    move/from16 v13, p5

    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->typeStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;

    iget-object v3, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->byteBuddy:Lnet/bytebuddy/ByteBuddy;

    iget-object v2, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->nativeMethodStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;

    .line 10884
    invoke-interface {v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$NativeMethodStrategy;->resolve()Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;

    move-result-object v5

    .line 10881
    move-object v2, v11

    move-object/from16 v4, p8

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    move-object/from16 v8, p6

    invoke-interface/range {v1 .. v8}, Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;->builder(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ByteBuddy;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/dynamic/scaffold/inline/MethodNameTransformer;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v1

    .line 10888
    .local v1, "builder":Lnet/bytebuddy/dynamic/DynamicType$Builder;, "Lnet/bytebuddy/dynamic/DynamicType$Builder<*>;"
    iget-object v2, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->initializationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;

    invoke-interface {v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;->dispatcher()Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Dispatcher;

    move-result-object v7

    .line 10889
    .local v7, "dispatcher":Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Dispatcher;
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v8, v1

    .end local v1    # "builder":Lnet/bytebuddy/dynamic/DynamicType$Builder;, "Lnet/bytebuddy/dynamic/DynamicType$Builder<*>;"
    .local v8, "builder":Lnet/bytebuddy/dynamic/DynamicType$Builder;, "Lnet/bytebuddy/dynamic/DynamicType$Builder<*>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    .line 10890
    .local v1, "transformer":Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;
    invoke-interface {v1, v8, v11, v10, v9}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;->transform(Lnet/bytebuddy/dynamic/DynamicType$Builder;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v8

    .line 10891
    .end local v1    # "transformer":Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;
    goto :goto_2

    .line 10892
    :cond_3
    invoke-interface {v7, v8}, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Dispatcher;->apply(Lnet/bytebuddy/dynamic/DynamicType$Builder;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v1

    sget-object v2, Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Disabled;->INSTANCE:Lnet/bytebuddy/dynamic/TypeResolutionStrategy$Disabled;

    move-object/from16 v14, p7

    invoke-interface {v1, v2, v14}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->make(Lnet/bytebuddy/dynamic/TypeResolutionStrategy;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/dynamic/DynamicType$Unloaded;

    move-result-object v15

    .line 10893
    .local v15, "dynamicType":Lnet/bytebuddy/dynamic/DynamicType$Unloaded;, "Lnet/bytebuddy/dynamic/DynamicType$Unloaded<*>;"
    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->injectionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy;

    move-object/from16 v6, p6

    invoke-interface {v7, v15, v10, v6, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy$Dispatcher;->register(Lnet/bytebuddy/dynamic/DynamicType;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy;)V

    .line 10894
    iget-object v1, v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    move-object v2, v11

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v5, p5

    move-object v6, v15

    invoke-interface/range {v1 .. v6}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onTransformation(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;ZLnet/bytebuddy/dynamic/DynamicType;)V

    .line 10895
    invoke-interface {v15}, Lnet/bytebuddy/dynamic/DynamicType$Unloaded;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private transform(Lnet/bytebuddy/utility/JavaModule;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B
    .locals 22
    .param p1, "module"    # Lnet/bytebuddy/utility/JavaModule;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "internalTypeName"    # Ljava/lang/String;
    .param p5, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .param p6, "binaryRepresentation"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/utility/JavaModule;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/ProtectionDomain;",
            "[B)[B"
        }
    .end annotation

    .line 10803
    .local p4, "classBeingRedefined":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    move-object/from16 v11, p4

    if-eqz v12, :cond_d

    iget-object v0, v15, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->lambdaInstrumentationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    invoke-virtual {v0, v11}, Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;->isInstrumented(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v21, v15

    move-object v15, v13

    move-object/from16 v13, v21

    goto/16 :goto_d

    .line 10806
    :cond_0
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 10808
    .local v10, "name":Ljava/lang/String;
    const/16 v18, 0x1

    const/16 v19, 0x0

    :try_start_0
    iget-object v0, v15, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->resubmissionEnforcer:Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionEnforcer;

    invoke-interface {v0, v10, v13, v14, v11}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$ResubmissionEnforcer;->isEnforced(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v0, :cond_1

    .line 10809
    :try_start_1
    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->access$1300()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 10811
    :catchall_0
    move-exception v0

    move-object v6, v0

    move-object v7, v10

    move-object/from16 v21, v15

    move-object v15, v13

    move-object/from16 v13, v21

    goto/16 :goto_9

    .line 10818
    :cond_1
    nop

    .line 10820
    :try_start_2
    iget-object v0, v15, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    if-eqz v11, :cond_2

    move/from16 v1, v18

    goto :goto_0

    :cond_2
    move/from16 v1, v19

    :goto_0
    invoke-interface {v0, v10, v13, v14, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onDiscovery(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    .line 10821
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;

    const/4 v1, 0x2

    new-array v7, v1, [Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v1, v15, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->classFileBufferStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;

    move-object v2, v10

    move-object/from16 v3, p6

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;->resolve(Ljava/lang/String;[BLjava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/security/ProtectionDomain;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v1

    aput-object v1, v7, v19

    iget-object v1, v15, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    .line 10825
    invoke-interface {v1, v13, v14}, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;->classFileLocator(Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v1

    aput-object v1, v7, v18

    invoke-direct {v0, v7}, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;-><init>([Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    move-object v9, v0

    .line 10826
    .local v9, "classFileLocator":Lnet/bytebuddy/dynamic/ClassFileLocator;
    iget-object v0, v15, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->classFileBufferStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;

    iget-object v1, v15, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    invoke-interface {v0, v1, v9, v13, v10}, Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;->typePool(Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/lang/ClassLoader;Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 10828
    .local v8, "typePool":Lnet/bytebuddy/pool/TypePool;
    if-eqz v11, :cond_3

    move/from16 v6, v18

    goto :goto_1

    :cond_3
    move/from16 v6, v19

    :goto_1
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v10

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v20, v9

    .end local v9    # "classFileLocator":Lnet/bytebuddy/dynamic/ClassFileLocator;
    .local v20, "classFileLocator":Lnet/bytebuddy/dynamic/ClassFileLocator;
    :try_start_3
    invoke-direct/range {v1 .. v9}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->doTransform(Lnet/bytebuddy/utility/JavaModule;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;ZLjava/security/ProtectionDomain;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/dynamic/ClassFileLocator;)[B

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 10840
    iget-object v1, v15, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    if-eqz v11, :cond_4

    move/from16 v2, v18

    goto :goto_2

    :cond_4
    move/from16 v2, v19

    :goto_2
    invoke-interface {v1, v10, v13, v14, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onComplete(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    .line 10828
    return-object v0

    .line 10829
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 10830
    .local v0, "throwable":Ljava/lang/Throwable;
    if-eqz v11, :cond_6

    :try_start_4
    iget-object v1, v15, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->descriptionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;

    invoke-interface {v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;->isLoadedFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v15, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->fallbackStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;

    invoke-interface {v1, v11, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;->isFallback(Ljava/lang/Class;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 10831
    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->access$1400()Ljava/lang/Class;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 v2, 0x1

    move-object/from16 v9, p0

    move-object v7, v10

    .end local v10    # "name":Ljava/lang/String;
    .local v7, "name":Ljava/lang/String;
    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object v12, v7

    move-object v5, v13

    move-object v13, v1

    move-object v4, v14

    move v14, v2

    move-object v3, v15

    move-object/from16 v15, p5

    move-object/from16 v16, v8

    move-object/from16 v17, v20

    :try_start_5
    invoke-direct/range {v9 .. v17}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->doTransform(Lnet/bytebuddy/utility/JavaModule;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;ZLjava/security/ProtectionDomain;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/dynamic/ClassFileLocator;)[B

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 10840
    iget-object v2, v3, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    if-eqz p4, :cond_5

    move/from16 v6, v18

    goto :goto_3

    :cond_5
    move/from16 v6, v19

    :goto_3
    invoke-interface {v2, v7, v5, v4, v6}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onComplete(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    .line 10831
    return-object v1

    .line 10830
    .end local v7    # "name":Ljava/lang/String;
    .restart local v10    # "name":Ljava/lang/String;
    :cond_6
    move-object v7, v10

    move-object v5, v13

    move-object v4, v14

    move-object v3, v15

    .line 10833
    .end local v10    # "name":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    nop

    .end local v7    # "name":Ljava/lang/String;
    .end local p1    # "module":Lnet/bytebuddy/utility/JavaModule;
    .end local p2    # "classLoader":Ljava/lang/ClassLoader;
    .end local p3    # "internalTypeName":Ljava/lang/String;
    .end local p4    # "classBeingRedefined":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p5    # "protectionDomain":Ljava/security/ProtectionDomain;
    .end local p6    # "binaryRepresentation":[B
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 10836
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v8    # "typePool":Lnet/bytebuddy/pool/TypePool;
    .end local v20    # "classFileLocator":Lnet/bytebuddy/dynamic/ClassFileLocator;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local p1    # "module":Lnet/bytebuddy/utility/JavaModule;
    .restart local p2    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p3    # "internalTypeName":Ljava/lang/String;
    .restart local p4    # "classBeingRedefined":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p5    # "protectionDomain":Ljava/security/ProtectionDomain;
    .restart local p6    # "binaryRepresentation":[B
    :catchall_2
    move-exception v0

    move-object v6, v0

    goto :goto_4

    .end local v7    # "name":Ljava/lang/String;
    .restart local v10    # "name":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object v7, v10

    move-object v5, v13

    move-object v4, v14

    move-object v3, v15

    move-object v6, v0

    .line 10837
    .end local v10    # "name":Ljava/lang/String;
    .local v6, "throwable":Ljava/lang/Throwable;
    .restart local v7    # "name":Ljava/lang/String;
    :goto_4
    :try_start_7
    iget-object v1, v3, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-eqz p4, :cond_7

    move/from16 v0, v18

    goto :goto_5

    :cond_7
    move/from16 v0, v19

    :goto_5
    move-object v2, v7

    move-object v13, v3

    move-object/from16 v3, p2

    move-object v14, v4

    move-object/from16 v4, p1

    move-object v15, v5

    move v5, v0

    :try_start_8
    invoke-interface/range {v1 .. v6}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onError(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;ZLjava/lang/Throwable;)V

    .line 10838
    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->access$1300()[B

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 10840
    iget-object v1, v13, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    if-eqz p4, :cond_8

    move/from16 v2, v18

    goto :goto_6

    :cond_8
    move/from16 v2, v19

    :goto_6
    invoke-interface {v1, v7, v15, v14, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onComplete(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    .line 10838
    return-object v0

    .line 10840
    .end local v6    # "throwable":Ljava/lang/Throwable;
    :catchall_4
    move-exception v0

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    :goto_7
    iget-object v1, v13, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    if-eqz p4, :cond_9

    move/from16 v2, v18

    goto :goto_8

    :cond_9
    move/from16 v2, v19

    :goto_8
    invoke-interface {v1, v7, v15, v14, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onComplete(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V

    .line 10841
    throw v0

    .line 10811
    .end local v7    # "name":Ljava/lang/String;
    .restart local v10    # "name":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move-object v7, v10

    move-object/from16 v21, v15

    move-object v15, v13

    move-object/from16 v13, v21

    move-object v6, v0

    .line 10813
    .end local v10    # "name":Ljava/lang/String;
    .restart local v6    # "throwable":Ljava/lang/Throwable;
    .restart local v7    # "name":Ljava/lang/String;
    :goto_9
    :try_start_9
    iget-object v0, v13, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    if-eqz p4, :cond_a

    move/from16 v1, v18

    goto :goto_a

    :cond_a
    move/from16 v1, v19

    :goto_a
    invoke-interface {v0, v7, v15, v14, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onDiscovery(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 10815
    iget-object v1, v13, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    if-eqz p4, :cond_b

    move/from16 v5, v18

    goto :goto_b

    :cond_b
    move/from16 v5, v19

    :goto_b
    move-object v2, v7

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    invoke-interface/range {v1 .. v6}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onError(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;ZLjava/lang/Throwable;)V

    .line 10816
    nop

    .line 10817
    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->access$1300()[B

    move-result-object v0

    return-object v0

    .line 10815
    :catchall_7
    move-exception v0

    iget-object v1, v13, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->listener:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    if-eqz p4, :cond_c

    move/from16 v11, v18

    goto :goto_c

    :cond_c
    move/from16 v11, v19

    :goto_c
    move-object v2, v7

    .end local v7    # "name":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    move-object v7, v1

    move-object v8, v2

    move-object/from16 v9, p2

    move-object/from16 v10, p1

    move-object v12, v6

    invoke-interface/range {v7 .. v12}, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;->onError(Ljava/lang/String;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;ZLjava/lang/Throwable;)V

    .line 10816
    throw v0

    .line 10803
    .end local v2    # "name":Ljava/lang/String;
    .end local v6    # "throwable":Ljava/lang/Throwable;
    :cond_d
    move-object/from16 v21, v15

    move-object v15, v13

    move-object/from16 v13, v21

    .line 10804
    :goto_d
    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->access$1300()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public iterator(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Ljava/util/Iterator;
    .locals 8
    .param p1, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "module"    # Lnet/bytebuddy/utility/JavaModule;
    .param p5, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/ClassLoader;",
            "Lnet/bytebuddy/utility/JavaModule;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/ProtectionDomain;",
            ")",
            "Ljava/util/Iterator<",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;",
            ">;"
        }
    .end annotation

    .line 10906
    .local p4, "classBeingRedefined":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->ignoreMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;->matches(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10907
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;

    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->transformations:Ljava/util/List;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;Ljava/util/List;)V

    .line 10906
    :goto_0
    return-object v0
.end method

.method public declared-synchronized reset(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;)Z
    .locals 15
    .param p1, "instrumentation"    # Ljava/lang/instrument/Instrumentation;
    .param p2, "classFileTransformer"    # Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;
    .param p3, "redefinitionStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;
    .param p4, "redefinitionDiscoveryStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;
    .param p5, "redefinitionBatchAllocator"    # Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;
    .param p6, "redefinitionListener"    # Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;

    move-object v1, p0

    monitor-enter p0

    .line 10920
    :try_start_0
    invoke-interface/range {p1 .. p2}, Ljava/lang/instrument/Instrumentation;->removeTransformer(Ljava/lang/instrument/ClassFileTransformer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10921
    iget-object v4, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v5, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v6, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->descriptionStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;

    iget-object v7, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->fallbackStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;

    iget-object v9, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->lambdaInstrumentationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    sget-object v10, Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$NoOp;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$Listener$NoOp;

    new-instance v12, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$SimpleMatcher;

    iget-object v0, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->ignoreMatcher:Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    iget-object v2, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->transformations:Ljava/util/List;

    invoke-direct {v12, v0, v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$SimpleMatcher;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Ljava/util/List;)V

    sget-object v14, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Inactive;->INSTANCE:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock$Inactive;

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move-object/from16 v8, p4

    move-object/from16 v11, p6

    move-object/from16 v13, p5

    invoke-virtual/range {v2 .. v14}, Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;->apply(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;)V

    .line 10933
    iget-object v0, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->installationListener:Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-interface {v0, v2, v3}, Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;->onReset(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10934
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 10936
    .end local p0    # "this":Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;
    :cond_0
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 10919
    .end local p1    # "instrumentation":Ljava/lang/instrument/Instrumentation;
    .end local p2    # "classFileTransformer":Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;
    .end local p3    # "redefinitionStrategy":Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;
    .end local p4    # "redefinitionDiscoveryStrategy":Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$DiscoveryStrategy;
    .end local p5    # "redefinitionBatchAllocator":Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$BatchAllocator;
    .end local p6    # "redefinitionListener":Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy$Listener;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public transform(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B
    .locals 8
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "internalTypeName"    # Ljava/lang/String;
    .param p4, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .param p5, "binaryRepresentation"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/ProtectionDomain;",
            "[B)[B"
        }
    .end annotation

    .line 10733
    .local p3, "classBeingRedefined":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    invoke-interface {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;->acquire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10735
    :try_start_0
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$LegacyVmDispatcher;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$LegacyVmDispatcher;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)V

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->accessControlContext:Ljava/security/AccessControlContext;

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10743
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    invoke-interface {v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;->release()V

    .line 10735
    return-object v0

    .line 10740
    :catchall_0
    move-exception v0

    .line 10741
    .local v0, "ignored":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->access$1300()[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10743
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    invoke-interface {v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;->release()V

    .line 10741
    return-object v1

    .line 10743
    .end local v0    # "ignored":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    invoke-interface {v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;->release()V

    .line 10744
    throw v0

    .line 10746
    :cond_0
    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->access$1300()[B

    move-result-object v0

    return-object v0
.end method

.method protected transform(Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B
    .locals 9
    .param p1, "rawModule"    # Ljava/lang/Object;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "internalTypeName"    # Ljava/lang/String;
    .param p5, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .param p6, "binaryRepresentation"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/ProtectionDomain;",
            "[B)[B"
        }
    .end annotation

    .line 10768
    .local p4, "classBeingRedefined":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    invoke-interface {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;->acquire()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10770
    :try_start_0
    new-instance v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer$Java9CapableVmDispatcher;-><init>(Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)V

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->accessControlContext:Ljava/security/AccessControlContext;

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10779
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    invoke-interface {v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;->release()V

    .line 10770
    return-object v0

    .line 10776
    :catchall_0
    move-exception v0

    .line 10777
    .local v0, "ignored":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->access$1300()[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10779
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    invoke-interface {v2}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;->release()V

    .line 10777
    return-object v1

    .line 10779
    .end local v0    # "ignored":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$ExecutingTransformer;->circularityLock:Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    invoke-interface {v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;->release()V

    .line 10780
    throw v0

    .line 10782
    :cond_0
    invoke-static {}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default;->access$1300()[B

    move-result-object v0

    return-object v0
.end method
