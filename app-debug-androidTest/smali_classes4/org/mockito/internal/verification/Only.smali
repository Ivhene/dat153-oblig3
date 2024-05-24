.class public Lorg/mockito/internal/verification/Only;
.super Ljava/lang/Object;
.source "Only.java"

# interfaces
.implements Lorg/mockito/verification/VerificationMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Lorg/mockito/internal/verification/api/VerificationData;)V
    .locals 5
    .param p1, "data"    # Lorg/mockito/internal/verification/api/VerificationData;

    .line 25
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationData;->getTarget()Lorg/mockito/invocation/MatchableInvocation;

    move-result-object v0

    .line 26
    .local v0, "target":Lorg/mockito/invocation/MatchableInvocation;
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationData;->getAllInvocations()Ljava/util/List;

    move-result-object v1

    .line 27
    .local v1, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-static {v1, v0}, Lorg/mockito/internal/invocation/InvocationsFinder;->findInvocations(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)Ljava/util/List;

    move-result-object v2

    .line 28
    .local v2, "chunk":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-static {v1}, Lorg/mockito/internal/invocation/InvocationsFinder;->findFirstUnverified(Ljava/util/List;)Lorg/mockito/invocation/Invocation;

    move-result-object v3

    .line 30
    .local v3, "unverified":Lorg/mockito/invocation/Invocation;
    invoke-static {v3, v1}, Lorg/mockito/internal/exceptions/Reporter;->noMoreInteractionsWanted(Lorg/mockito/invocation/Invocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object v4

    throw v4

    .line 32
    .end local v3    # "unverified":Lorg/mockito/invocation/Invocation;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 35
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mockito/invocation/Invocation;

    invoke-static {v3, v0}, Lorg/mockito/internal/invocation/InvocationMarker;->markVerified(Lorg/mockito/invocation/Invocation;Lorg/mockito/invocation/MatchableInvocation;)V

    .line 36
    return-void

    .line 33
    :cond_2
    invoke-static {v0}, Lorg/mockito/internal/exceptions/Reporter;->wantedButNotInvoked(Lorg/mockito/invocation/DescribedInvocation;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object v3

    throw v3
.end method
