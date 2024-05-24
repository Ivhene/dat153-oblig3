.class public Lorg/mockito/internal/junit/UnusedStubbingsFinder;
.super Ljava/lang/Object;
.source "UnusedStubbingsFinder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUnusedStubbings(Ljava/lang/Iterable;)Lorg/mockito/internal/junit/UnusedStubbings;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/mockito/internal/junit/UnusedStubbings;"
        }
    .end annotation

    .line 32
    .local p1, "mocks":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Object;>;"
    invoke-static {p1}, Lorg/mockito/internal/invocation/finder/AllInvocationsFinder;->findStubbings(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 34
    .local v0, "stubbings":Ljava/util/Set;, "Ljava/util/Set<Lorg/mockito/stubbing/Stubbing;>;"
    new-instance v1, Lorg/mockito/internal/junit/UnusedStubbingsFinder$1;

    invoke-direct {v1, p0}, Lorg/mockito/internal/junit/UnusedStubbingsFinder$1;-><init>(Lorg/mockito/internal/junit/UnusedStubbingsFinder;)V

    .line 35
    invoke-static {v0, v1}, Lorg/mockito/internal/util/collections/ListUtil;->filter(Ljava/util/Collection;Lorg/mockito/internal/util/collections/ListUtil$Filter;)Ljava/util/LinkedList;

    move-result-object v1

    .line 44
    .local v1, "unused":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/stubbing/Stubbing;>;"
    new-instance v2, Lorg/mockito/internal/junit/UnusedStubbings;

    invoke-direct {v2, v1}, Lorg/mockito/internal/junit/UnusedStubbings;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method

.method public getUnusedStubbingsByLocation(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Collection<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 58
    .local p1, "mocks":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Object;>;"
    invoke-static {p1}, Lorg/mockito/internal/invocation/finder/AllInvocationsFinder;->findStubbings(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 62
    .local v0, "stubbings":Ljava/util/Set;, "Ljava/util/Set<Lorg/mockito/stubbing/Stubbing;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 63
    .local v1, "locationsOfUsedStubbings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mockito/stubbing/Stubbing;

    .line 64
    .local v3, "s":Lorg/mockito/stubbing/Stubbing;
    invoke-static {v3}, Lorg/mockito/internal/stubbing/UnusedStubbingReporting;->shouldBeReported(Lorg/mockito/stubbing/Stubbing;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 65
    invoke-interface {v3}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v4

    invoke-interface {v4}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v4

    invoke-interface {v4}, Lorg/mockito/invocation/Location;->toString()Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, "location":Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v3    # "s":Lorg/mockito/stubbing/Stubbing;
    .end local v4    # "location":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 75
    :cond_1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 76
    .local v2, "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mockito/stubbing/Stubbing;

    .line 77
    .local v4, "s":Lorg/mockito/stubbing/Stubbing;
    invoke-interface {v4}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v5

    invoke-interface {v5}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v5

    invoke-interface {v5}, Lorg/mockito/invocation/Location;->toString()Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, "location":Ljava/lang/String;
    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 79
    invoke-interface {v4}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .end local v4    # "s":Lorg/mockito/stubbing/Stubbing;
    .end local v5    # "location":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 83
    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    return-object v3
.end method
