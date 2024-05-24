.class public abstract Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Delegator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator$Matchable;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 11306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assureReadEdgeFromAndTo(Ljava/lang/instrument/Instrumentation;Ljava/util/Collection;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .param p1, "instrumentation"    # Ljava/lang/instrument/Instrumentation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/utility/JavaModule;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder;"
        }
    .end annotation

    .line 11480
    .local p2, "modules":Ljava/util/Collection;, "Ljava/util/Collection<+Lnet/bytebuddy/utility/JavaModule;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder;->assureReadEdgeFromAndTo(Ljava/lang/instrument/Instrumentation;Ljava/util/Collection;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs assureReadEdgeFromAndTo(Ljava/lang/instrument/Instrumentation;[Ljava/lang/Class;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .param p1, "instrumentation"    # Ljava/lang/instrument/Instrumentation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder;"
        }
    .end annotation

    .line 11466
    .local p2, "type":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder;->assureReadEdgeFromAndTo(Ljava/lang/instrument/Instrumentation;[Ljava/lang/Class;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs assureReadEdgeFromAndTo(Ljava/lang/instrument/Instrumentation;[Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .param p1, "instrumentation"    # Ljava/lang/instrument/Instrumentation;
    .param p2, "module"    # [Lnet/bytebuddy/utility/JavaModule;

    .line 11473
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder;->assureReadEdgeFromAndTo(Ljava/lang/instrument/Instrumentation;[Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public assureReadEdgeTo(Ljava/lang/instrument/Instrumentation;Ljava/util/Collection;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .param p1, "instrumentation"    # Ljava/lang/instrument/Instrumentation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/utility/JavaModule;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder;"
        }
    .end annotation

    .line 11459
    .local p2, "modules":Ljava/util/Collection;, "Ljava/util/Collection<+Lnet/bytebuddy/utility/JavaModule;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder;->assureReadEdgeTo(Ljava/lang/instrument/Instrumentation;Ljava/util/Collection;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs assureReadEdgeTo(Ljava/lang/instrument/Instrumentation;[Ljava/lang/Class;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .param p1, "instrumentation"    # Ljava/lang/instrument/Instrumentation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder;"
        }
    .end annotation

    .line 11445
    .local p2, "type":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder;->assureReadEdgeTo(Ljava/lang/instrument/Instrumentation;[Ljava/lang/Class;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs assureReadEdgeTo(Ljava/lang/instrument/Instrumentation;[Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .param p1, "instrumentation"    # Ljava/lang/instrument/Instrumentation;
    .param p2, "module"    # [Lnet/bytebuddy/utility/JavaModule;

    .line 11452
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder;->assureReadEdgeTo(Ljava/lang/instrument/Instrumentation;[Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public disableClassFormatChanges()Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 11438
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder;->disableClassFormatChanges()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public disableNativeMethodPrefix()Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1

    .line 11431
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder;->disableNativeMethodPrefix()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public enableNativeMethodPrefix(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .line 11424
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->enableNativeMethodPrefix(Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public ignore(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;
    .locals 1
    .param p1, "rawMatcher"    # Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    .line 11540
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->ignore(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;

    move-result-object v0

    return-object v0
.end method

.method public ignore(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;"
        }
    .end annotation

    .line 11517
    .local p1, "ignoredTypes":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/type/TypeDescription;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->ignore(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;

    move-result-object v0

    return-object v0
.end method

.method public ignore(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;"
        }
    .end annotation

    .line 11524
    .local p1, "ignoredTypes":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/type/TypeDescription;>;"
    .local p2, "ignoredClassLoaders":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Ljava/lang/ClassLoader;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder;->ignore(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;

    move-result-object v0

    return-object v0
.end method

.method public ignore(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/utility/JavaModule;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;"
        }
    .end annotation

    .line 11533
    .local p1, "typeMatcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/type/TypeDescription;>;"
    .local p2, "classLoaderMatcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Ljava/lang/ClassLoader;>;"
    .local p3, "moduleMatcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/utility/JavaModule;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lnet/bytebuddy/agent/builder/AgentBuilder;->ignore(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Ignored;

    move-result-object v0

    return-object v0
.end method

.method public installOn(Ljava/lang/instrument/Instrumentation;)Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;
    .locals 1
    .param p1, "instrumentation"    # Ljava/lang/instrument/Instrumentation;

    .line 11554
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->installOn(Ljava/lang/instrument/Instrumentation;)Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    move-result-object v0

    return-object v0
.end method

.method public installOnByteBuddyAgent()Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;
    .locals 1

    .line 11561
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder;->installOnByteBuddyAgent()Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    move-result-object v0

    return-object v0
.end method

.method public makeRaw()Ljava/lang/instrument/ClassFileTransformer;
    .locals 1

    .line 11547
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder;->makeRaw()Ljava/lang/instrument/ClassFileTransformer;

    move-result-object v0

    return-object v0
.end method

.method protected abstract materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;
.end method

.method public patchOn(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;
    .locals 1
    .param p1, "instrumentation"    # Ljava/lang/instrument/Instrumentation;
    .param p2, "classFileTransformer"    # Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    .line 11568
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder;->patchOn(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    move-result-object v0

    return-object v0
.end method

.method public patchOnByteBuddyAgent(Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;
    .locals 1
    .param p1, "classFileTransformer"    # Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    .line 11575
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->patchOnByteBuddyAgent(Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;)Lnet/bytebuddy/agent/builder/ResettableClassFileTransformer;

    move-result-object v0

    return-object v0
.end method

.method public type(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;
    .locals 1
    .param p1, "matcher"    # Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    .line 11510
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->type(Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;

    move-result-object v0

    return-object v0
.end method

.method public type(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;"
        }
    .end annotation

    .line 11487
    .local p1, "typeMatcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/type/TypeDescription;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->type(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;

    move-result-object v0

    return-object v0
.end method

.method public type(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;"
        }
    .end annotation

    .line 11494
    .local p1, "typeMatcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/type/TypeDescription;>;"
    .local p2, "classLoaderMatcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Ljava/lang/ClassLoader;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder;->type(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;

    move-result-object v0

    return-object v0
.end method

.method public type(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Ljava/lang/ClassLoader;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/utility/JavaModule;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;"
        }
    .end annotation

    .line 11503
    .local p1, "typeMatcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/type/TypeDescription;>;"
    .local p2, "classLoaderMatcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Ljava/lang/ClassLoader;>;"
    .local p3, "moduleMatcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/utility/JavaModule;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lnet/bytebuddy/agent/builder/AgentBuilder;->type(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/agent/builder/AgentBuilder$Identified$Narrowable;

    move-result-object v0

    return-object v0
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithoutBatchStrategy;
    .locals 1
    .param p1, "redefinitionStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;

    .line 11368
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder$RedefinitionListenable$WithoutBatchStrategy;

    move-result-object v0

    return-object v0
.end method

.method public with(Lnet/bytebuddy/ByteBuddy;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .param p1, "byteBuddy"    # Lnet/bytebuddy/ByteBuddy;

    .line 11319
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/ByteBuddy;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .param p1, "circularityLock"    # Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;

    .line 11333
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$CircularityLock;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .param p1, "classFileBufferStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;

    .line 11396
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$ClassFileBufferStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .param p1, "descriptionStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;

    .line 11382
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$DescriptionStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .param p1, "fallbackStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;

    .line 11389
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$FallbackStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .param p1, "initializationStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;

    .line 11361
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$InitializationStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .param p1, "injectionStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy;

    .line 11410
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$InjectionStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .param p1, "installationListener"    # Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;

    .line 11403
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$InstallationListener;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .param p1, "lambdaInstrumentationStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;

    .line 11375
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$LambdaInstrumentationStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .param p1, "listener"    # Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;

    .line 11326
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$Listener;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .param p1, "locationStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    .line 11354
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .param p1, "poolStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    .line 11347
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .param p1, "transformerDecorator"    # Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator;

    .line 11417
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$TransformerDecorator;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;
    .locals 1
    .param p1, "typeStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;

    .line 11340
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Delegator;->materialize()Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder;->with(Lnet/bytebuddy/agent/builder/AgentBuilder$TypeStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder;

    move-result-object v0

    return-object v0
.end method
