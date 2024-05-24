.class public Lorg/mockito/internal/invocation/InvocationsFinder;
.super Ljava/lang/Object;
.source "InvocationsFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/invocation/InvocationsFinder$RemoveUnverifiedInOrder;,
        Lorg/mockito/internal/invocation/InvocationsFinder$RemoveNotMatching;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findAllMatchingUnverifiedChunks(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/verification/api/InOrderContext;)Ljava/util/List;
    .locals 3
    .param p1, "wanted"    # Lorg/mockito/invocation/MatchableInvocation;
    .param p2, "orderingContext"    # Lorg/mockito/internal/verification/api/InOrderContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Lorg/mockito/invocation/MatchableInvocation;",
            "Lorg/mockito/internal/verification/api/InOrderContext;",
            ")",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 30
    .local p0, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-static {p0, p2}, Lorg/mockito/internal/invocation/InvocationsFinder;->removeVerifiedInOrder(Ljava/util/List;Lorg/mockito/internal/verification/api/InOrderContext;)Ljava/util/List;

    move-result-object v0

    .line 31
    .local v0, "unverified":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    new-instance v1, Lorg/mockito/internal/invocation/InvocationsFinder$RemoveNotMatching;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lorg/mockito/internal/invocation/InvocationsFinder$RemoveNotMatching;-><init>(Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/invocation/InvocationsFinder$1;)V

    invoke-static {v0, v1}, Lorg/mockito/internal/util/collections/ListUtil;->filter(Ljava/util/Collection;Lorg/mockito/internal/util/collections/ListUtil$Filter;)Ljava/util/LinkedList;

    move-result-object v1

    return-object v1
.end method

.method public static findFirstMatchingUnverifiedInvocation(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/verification/api/InOrderContext;)Lorg/mockito/invocation/Invocation;
    .locals 3
    .param p1, "wanted"    # Lorg/mockito/invocation/MatchableInvocation;
    .param p2, "context"    # Lorg/mockito/internal/verification/api/InOrderContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Lorg/mockito/invocation/MatchableInvocation;",
            "Lorg/mockito/internal/verification/api/InOrderContext;",
            ")",
            "Lorg/mockito/invocation/Invocation;"
        }
    .end annotation

    .line 79
    .local p0, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-static {p0, p2}, Lorg/mockito/internal/invocation/InvocationsFinder;->removeVerifiedInOrder(Ljava/util/List;Lorg/mockito/internal/verification/api/InOrderContext;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/invocation/Invocation;

    .line 80
    .local v1, "invocation":Lorg/mockito/invocation/Invocation;
    invoke-interface {p1, v1}, Lorg/mockito/invocation/MatchableInvocation;->matches(Lorg/mockito/invocation/Invocation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    return-object v1

    .line 83
    .end local v1    # "invocation":Lorg/mockito/invocation/Invocation;
    :cond_0
    goto :goto_0

    .line 84
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static findFirstUnverified(Ljava/util/List;)Lorg/mockito/invocation/Invocation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;)",
            "Lorg/mockito/invocation/Invocation;"
        }
    .end annotation

    .line 106
    .local p0, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/mockito/internal/invocation/InvocationsFinder;->findFirstUnverified(Ljava/util/List;Ljava/lang/Object;)Lorg/mockito/invocation/Invocation;

    move-result-object v0

    return-object v0
.end method

.method static findFirstUnverified(Ljava/util/List;Ljava/lang/Object;)Lorg/mockito/invocation/Invocation;
    .locals 4
    .param p1, "mock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/mockito/invocation/Invocation;"
        }
    .end annotation

    .line 110
    .local p0, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/invocation/Invocation;

    .line 111
    .local v1, "i":Lorg/mockito/invocation/Invocation;
    if-eqz p1, :cond_1

    invoke-interface {v1}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x1

    .line 112
    .local v2, "mockIsValid":Z
    :goto_2
    invoke-interface {v1}, Lorg/mockito/invocation/Invocation;->isVerified()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    .line 113
    return-object v1

    .line 115
    .end local v1    # "i":Lorg/mockito/invocation/Invocation;
    .end local v2    # "mockIsValid":Z
    :cond_2
    goto :goto_0

    .line 116
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static findFirstUnverifiedInOrder(Lorg/mockito/internal/verification/api/InOrderContext;Ljava/util/List;)Lorg/mockito/invocation/Invocation;
    .locals 4
    .param p0, "context"    # Lorg/mockito/internal/verification/api/InOrderContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/verification/api/InOrderContext;",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;)",
            "Lorg/mockito/invocation/Invocation;"
        }
    .end annotation

    .line 203
    .local p1, "orderedInvocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    const/4 v0, 0x0

    .line 204
    .local v0, "candidate":Lorg/mockito/invocation/Invocation;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/invocation/Invocation;

    .line 205
    .local v2, "i":Lorg/mockito/invocation/Invocation;
    invoke-interface {p0, v2}, Lorg/mockito/internal/verification/api/InOrderContext;->isVerified(Lorg/mockito/invocation/Invocation;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 206
    if-eqz v0, :cond_0

    move-object v3, v0

    goto :goto_1

    :cond_0
    move-object v3, v2

    :goto_1
    move-object v0, v3

    goto :goto_2

    .line 208
    :cond_1
    const/4 v0, 0x0

    .line 210
    .end local v2    # "i":Lorg/mockito/invocation/Invocation;
    :goto_2
    goto :goto_0

    .line 211
    :cond_2
    return-object v0
.end method

.method public static findInvocations(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)Ljava/util/List;
    .locals 2
    .param p1, "wanted"    # Lorg/mockito/invocation/MatchableInvocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Lorg/mockito/invocation/MatchableInvocation;",
            ")",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 23
    .local p0, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    new-instance v0, Lorg/mockito/internal/invocation/InvocationsFinder$RemoveNotMatching;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/mockito/internal/invocation/InvocationsFinder$RemoveNotMatching;-><init>(Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/invocation/InvocationsFinder$1;)V

    invoke-static {p0, v0}, Lorg/mockito/internal/util/collections/ListUtil;->filter(Ljava/util/Collection;Lorg/mockito/internal/util/collections/ListUtil$Filter;)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method public static findMatchingChunk(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;ILorg/mockito/internal/verification/api/InOrderContext;)Ljava/util/List;
    .locals 3
    .param p1, "wanted"    # Lorg/mockito/invocation/MatchableInvocation;
    .param p2, "wantedCount"    # I
    .param p3, "context"    # Lorg/mockito/internal/verification/api/InOrderContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Lorg/mockito/invocation/MatchableInvocation;",
            "I",
            "Lorg/mockito/internal/verification/api/InOrderContext;",
            ")",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 54
    .local p0, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-static {p0, p3}, Lorg/mockito/internal/invocation/InvocationsFinder;->removeVerifiedInOrder(Ljava/util/List;Lorg/mockito/internal/verification/api/InOrderContext;)Ljava/util/List;

    move-result-object v0

    .line 55
    .local v0, "unverified":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-static {p1, v0}, Lorg/mockito/internal/invocation/InvocationsFinder;->getFirstMatchingChunk(Lorg/mockito/invocation/MatchableInvocation;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 57
    .local v1, "firstChunk":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eq p2, v2, :cond_0

    .line 58
    invoke-static {p0, p1, p3}, Lorg/mockito/internal/invocation/InvocationsFinder;->findAllMatchingUnverifiedChunks(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/verification/api/InOrderContext;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 60
    :cond_0
    return-object v1
.end method

.method public static findPreviousVerifiedInOrder(Ljava/util/List;Lorg/mockito/internal/verification/api/InOrderContext;)Lorg/mockito/invocation/Invocation;
    .locals 2
    .param p1, "context"    # Lorg/mockito/internal/verification/api/InOrderContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Lorg/mockito/internal/verification/api/InOrderContext;",
            ")",
            "Lorg/mockito/invocation/Invocation;"
        }
    .end annotation

    .line 130
    .local p0, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    new-instance v0, Lorg/mockito/internal/invocation/InvocationsFinder$RemoveUnverifiedInOrder;

    invoke-direct {v0, p1}, Lorg/mockito/internal/invocation/InvocationsFinder$RemoveUnverifiedInOrder;-><init>(Lorg/mockito/internal/verification/api/InOrderContext;)V

    .line 131
    invoke-static {p0, v0}, Lorg/mockito/internal/util/collections/ListUtil;->filter(Ljava/util/Collection;Lorg/mockito/internal/util/collections/ListUtil$Filter;)Ljava/util/LinkedList;

    move-result-object v0

    .line 133
    .local v0, "verifiedOnly":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/mockito/invocation/Invocation;>;"
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const/4 v1, 0x0

    return-object v1

    .line 136
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/invocation/Invocation;

    return-object v1
.end method

.method public static findSimilarInvocation(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)Lorg/mockito/invocation/Invocation;
    .locals 4
    .param p1, "wanted"    # Lorg/mockito/invocation/MatchableInvocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Lorg/mockito/invocation/MatchableInvocation;",
            ")",
            "Lorg/mockito/invocation/Invocation;"
        }
    .end annotation

    .line 89
    .local p0, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    const/4 v0, 0x0

    .line 90
    .local v0, "firstSimilar":Lorg/mockito/invocation/Invocation;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/invocation/Invocation;

    .line 91
    .local v2, "invocation":Lorg/mockito/invocation/Invocation;
    invoke-interface {p1, v2}, Lorg/mockito/invocation/MatchableInvocation;->hasSimilarMethod(Lorg/mockito/invocation/Invocation;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    goto :goto_0

    .line 94
    :cond_0
    if-nez v0, :cond_1

    .line 95
    move-object v0, v2

    .line 97
    :cond_1
    invoke-interface {p1, v2}, Lorg/mockito/invocation/MatchableInvocation;->hasSameMethod(Lorg/mockito/invocation/Invocation;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 98
    return-object v2

    .line 100
    .end local v2    # "invocation":Lorg/mockito/invocation/Invocation;
    :cond_2
    goto :goto_0

    .line 102
    :cond_3
    return-object v0
.end method

.method public static getAllLocations(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Location;",
            ">;"
        }
    .end annotation

    .line 154
    .local p0, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 155
    .local v0, "locations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Location;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/invocation/Invocation;

    .line 156
    .local v2, "invocation":Lorg/mockito/invocation/Invocation;
    invoke-interface {v2}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    .end local v2    # "invocation":Lorg/mockito/invocation/Invocation;
    goto :goto_0

    .line 158
    :cond_0
    return-object v0
.end method

.method private static getFirstMatchingChunk(Lorg/mockito/invocation/MatchableInvocation;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p0, "wanted"    # Lorg/mockito/invocation/MatchableInvocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/invocation/MatchableInvocation;",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 66
    .local p1, "unverified":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 67
    .local v0, "firstChunk":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/invocation/Invocation;

    .line 68
    .local v2, "invocation":Lorg/mockito/invocation/Invocation;
    invoke-interface {p0, v2}, Lorg/mockito/invocation/MatchableInvocation;->matches(Lorg/mockito/invocation/Invocation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 70
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 71
    goto :goto_2

    .line 73
    .end local v2    # "invocation":Lorg/mockito/invocation/Invocation;
    :cond_1
    :goto_1
    goto :goto_0

    .line 74
    :cond_2
    :goto_2
    return-object v0
.end method

.method public static getLastLocation(Ljava/util/List;)Lorg/mockito/invocation/Location;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;)",
            "Lorg/mockito/invocation/Location;"
        }
    .end annotation

    .line 120
    .local p0, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x0

    return-object v0

    .line 123
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/invocation/Invocation;

    .line 124
    .local v0, "last":Lorg/mockito/invocation/Invocation;
    invoke-interface {v0}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v1

    return-object v1
.end method

.method private static removeVerifiedInOrder(Ljava/util/List;Lorg/mockito/internal/verification/api/InOrderContext;)Ljava/util/List;
    .locals 4
    .param p1, "orderingContext"    # Lorg/mockito/internal/verification/api/InOrderContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Lorg/mockito/internal/verification/api/InOrderContext;",
            ")",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;"
        }
    .end annotation

    .line 142
    .local p0, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 143
    .local v0, "unverified":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/invocation/Invocation;

    .line 144
    .local v2, "i":Lorg/mockito/invocation/Invocation;
    invoke-interface {p1, v2}, Lorg/mockito/internal/verification/api/InOrderContext;->isVerified(Lorg/mockito/invocation/Invocation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 147
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    .end local v2    # "i":Lorg/mockito/invocation/Invocation;
    :goto_1
    goto :goto_0

    .line 150
    :cond_1
    return-object v0
.end method
