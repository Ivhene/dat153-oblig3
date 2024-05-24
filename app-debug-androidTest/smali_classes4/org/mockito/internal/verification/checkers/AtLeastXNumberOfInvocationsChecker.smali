.class public final Lorg/mockito/internal/verification/checkers/AtLeastXNumberOfInvocationsChecker;
.super Ljava/lang/Object;
.source "AtLeastXNumberOfInvocationsChecker.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAtLeastNumberOfInvocations(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;I)V
    .locals 4
    .param p1, "wanted"    # Lorg/mockito/invocation/MatchableInvocation;
    .param p2, "wantedCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Lorg/mockito/invocation/MatchableInvocation;",
            "I)V"
        }
    .end annotation

    .line 26
    .local p0, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-static {p0, p1}, Lorg/mockito/internal/invocation/InvocationsFinder;->findInvocations(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)Ljava/util/List;

    move-result-object v0

    .line 28
    .local v0, "actualInvocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 29
    .local v1, "actualCount":I
    if-gt p2, v1, :cond_0

    .line 35
    invoke-static {v0, p1}, Lorg/mockito/internal/invocation/InvocationMarker;->markVerified(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)V

    .line 36
    return-void

    .line 30
    :cond_0
    invoke-static {v0}, Lorg/mockito/internal/invocation/InvocationsFinder;->getAllLocations(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 31
    .local v2, "allLocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Location;>;"
    new-instance v3, Lorg/mockito/internal/verification/checkers/AtLeastDiscrepancy;

    invoke-direct {v3, p2, v1}, Lorg/mockito/internal/verification/checkers/AtLeastDiscrepancy;-><init>(II)V

    invoke-static {v3, p1, v2}, Lorg/mockito/internal/exceptions/Reporter;->tooFewActualInvocations(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object v3

    throw v3
.end method

.method public static checkAtLeastNumberOfInvocations(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;ILorg/mockito/internal/verification/api/InOrderContext;)V
    .locals 4
    .param p1, "wanted"    # Lorg/mockito/invocation/MatchableInvocation;
    .param p2, "wantedCount"    # I
    .param p3, "orderingContext"    # Lorg/mockito/internal/verification/api/InOrderContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mockito/invocation/Invocation;",
            ">;",
            "Lorg/mockito/invocation/MatchableInvocation;",
            "I",
            "Lorg/mockito/internal/verification/api/InOrderContext;",
            ")V"
        }
    .end annotation

    .line 43
    .local p0, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    nop

    .line 44
    invoke-static {p0, p1, p3}, Lorg/mockito/internal/invocation/InvocationsFinder;->findAllMatchingUnverifiedChunks(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/verification/api/InOrderContext;)Ljava/util/List;

    move-result-object v0

    .line 46
    .local v0, "chunk":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 48
    .local v1, "actualCount":I
    if-gt p2, v1, :cond_0

    .line 54
    invoke-static {v0, p1, p3}, Lorg/mockito/internal/invocation/InvocationMarker;->markVerifiedInOrder(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/verification/api/InOrderContext;)V

    .line 55
    return-void

    .line 49
    :cond_0
    invoke-static {v0}, Lorg/mockito/internal/invocation/InvocationsFinder;->getAllLocations(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 50
    .local v2, "allLocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Location;>;"
    new-instance v3, Lorg/mockito/internal/verification/checkers/AtLeastDiscrepancy;

    invoke-direct {v3, p2, v1}, Lorg/mockito/internal/verification/checkers/AtLeastDiscrepancy;-><init>(II)V

    invoke-static {v3, p1, v2}, Lorg/mockito/internal/exceptions/Reporter;->tooFewActualInvocationsInOrder(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object v3

    throw v3
.end method
