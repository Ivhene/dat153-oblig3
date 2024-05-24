.class public Lorg/mockito/internal/invocation/InvocationMarker;
.super Ljava/lang/Object;
.source "InvocationMarker.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static markVerified(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)V
    .locals 2
    .param p1, "wanted"    # Lorg/mockito/invocation/MatchableInvocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Lorg/mockito/invocation/MatchableInvocation;",
            ")V"
        }
    .end annotation

    .line 18
    .local p0, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/invocation/Invocation;

    .line 19
    .local v1, "invocation":Lorg/mockito/invocation/Invocation;
    invoke-static {v1, p1}, Lorg/mockito/internal/invocation/InvocationMarker;->markVerified(Lorg/mockito/invocation/Invocation;Lorg/mockito/invocation/MatchableInvocation;)V

    .line 20
    .end local v1    # "invocation":Lorg/mockito/invocation/Invocation;
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method public static markVerified(Lorg/mockito/invocation/Invocation;Lorg/mockito/invocation/MatchableInvocation;)V
    .locals 0
    .param p0, "invocation"    # Lorg/mockito/invocation/Invocation;
    .param p1, "wanted"    # Lorg/mockito/invocation/MatchableInvocation;

    .line 24
    invoke-interface {p0}, Lorg/mockito/invocation/Invocation;->markVerified()V

    .line 25
    invoke-interface {p1, p0}, Lorg/mockito/invocation/MatchableInvocation;->captureArgumentsFrom(Lorg/mockito/invocation/Invocation;)V

    .line 26
    return-void
.end method

.method public static markVerifiedInOrder(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/verification/api/InOrderContext;)V
    .locals 2
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
            ")V"
        }
    .end annotation

    .line 30
    .local p0, "chunk":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-static {p0, p1}, Lorg/mockito/internal/invocation/InvocationMarker;->markVerified(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)V

    .line 32
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/invocation/Invocation;

    .line 33
    .local v1, "i":Lorg/mockito/invocation/Invocation;
    invoke-interface {p2, v1}, Lorg/mockito/internal/verification/api/InOrderContext;->markVerified(Lorg/mockito/invocation/Invocation;)V

    .line 34
    .end local v1    # "i":Lorg/mockito/invocation/Invocation;
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method
