.class public Lorg/mockito/internal/invocation/UnusedStubsFinder;
.super Ljava/lang/Object;
.source "UnusedStubsFinder.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public find(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 23
    .local p1, "mocks":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 24
    .local v0, "unused":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 25
    .local v2, "mock":Ljava/lang/Object;
    nop

    .line 26
    invoke-static {v2}, Lorg/mockito/internal/util/MockUtil;->getInvocationContainer(Ljava/lang/Object;)Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->getStubbingsDescending()Ljava/util/List;

    move-result-object v3

    .line 27
    .local v3, "fromSingleMock":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/stubbing/Stubbing;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mockito/stubbing/Stubbing;

    .line 28
    .local v5, "s":Lorg/mockito/stubbing/Stubbing;
    invoke-interface {v5}, Lorg/mockito/stubbing/Stubbing;->wasUsed()Z

    move-result v6

    if-nez v6, :cond_0

    .line 29
    invoke-interface {v5}, Lorg/mockito/stubbing/Stubbing;->getInvocation()Lorg/mockito/invocation/Invocation;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .end local v5    # "s":Lorg/mockito/stubbing/Stubbing;
    :cond_0
    goto :goto_1

    .line 32
    .end local v2    # "mock":Ljava/lang/Object;
    .end local v3    # "fromSingleMock":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/stubbing/Stubbing;>;"
    :cond_1
    goto :goto_0

    .line 33
    :cond_2
    return-object v0
.end method
