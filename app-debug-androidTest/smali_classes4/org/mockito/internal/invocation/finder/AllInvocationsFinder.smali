.class public Lorg/mockito/internal/invocation/finder/AllInvocationsFinder;
.super Ljava/lang/Object;
.source "AllInvocationsFinder.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static find(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 29
    .local p0, "mocks":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lorg/mockito/internal/invocation/InvocationComparator;

    invoke-direct {v1}, Lorg/mockito/internal/invocation/InvocationComparator;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 30
    .local v0, "invocationsInOrder":Ljava/util/Set;, "Ljava/util/Set<Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 31
    .local v2, "mock":Ljava/lang/Object;
    new-instance v3, Lorg/mockito/internal/util/DefaultMockingDetails;

    invoke-direct {v3, v2}, Lorg/mockito/internal/util/DefaultMockingDetails;-><init>(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v3}, Lorg/mockito/internal/util/DefaultMockingDetails;->getInvocations()Ljava/util/Collection;

    move-result-object v3

    .line 33
    .local v3, "fromSingleMock":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 34
    .end local v2    # "mock":Ljava/lang/Object;
    .end local v3    # "fromSingleMock":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/mockito/invocation/Invocation;>;"
    goto :goto_0

    .line 36
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static findStubbings(Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Ljava/util/Set<",
            "Lorg/mockito/stubbing/Stubbing;",
            ">;"
        }
    .end annotation

    .line 46
    .local p0, "mocks":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lorg/mockito/internal/stubbing/StubbingComparator;

    invoke-direct {v1}, Lorg/mockito/internal/stubbing/StubbingComparator;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 47
    .local v0, "stubbings":Ljava/util/Set;, "Ljava/util/Set<Lorg/mockito/stubbing/Stubbing;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 51
    .local v2, "mock":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 52
    goto :goto_0

    .line 54
    :cond_0
    new-instance v3, Lorg/mockito/internal/util/DefaultMockingDetails;

    invoke-direct {v3, v2}, Lorg/mockito/internal/util/DefaultMockingDetails;-><init>(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {v3}, Lorg/mockito/internal/util/DefaultMockingDetails;->getStubbings()Ljava/util/Collection;

    move-result-object v3

    .line 56
    .local v3, "fromSingleMock":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/mockito/stubbing/Stubbing;>;"
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 57
    .end local v2    # "mock":Ljava/lang/Object;
    .end local v3    # "fromSingleMock":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/mockito/stubbing/Stubbing;>;"
    goto :goto_0

    .line 59
    :cond_1
    return-object v0
.end method
