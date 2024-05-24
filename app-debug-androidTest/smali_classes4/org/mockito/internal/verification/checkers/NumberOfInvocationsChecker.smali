.class public Lorg/mockito/internal/verification/checkers/NumberOfInvocationsChecker;
.super Ljava/lang/Object;
.source "NumberOfInvocationsChecker.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNumberOfInvocations(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;I)V
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

    .line 34
    .local p0, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-static {p0, p1}, Lorg/mockito/internal/invocation/InvocationsFinder;->findInvocations(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)Ljava/util/List;

    move-result-object v0

    .line 36
    .local v0, "actualInvocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 37
    .local v1, "actualCount":I
    if-gt p2, v1, :cond_3

    .line 42
    if-nez p2, :cond_1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p1, v0}, Lorg/mockito/internal/exceptions/Reporter;->neverWantedButInvoked(Lorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object v2

    throw v2

    .line 45
    :cond_1
    :goto_0
    if-lt p2, v1, :cond_2

    .line 50
    invoke-static {v0, p1}, Lorg/mockito/internal/invocation/InvocationMarker;->markVerified(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)V

    .line 51
    return-void

    .line 46
    :cond_2
    nop

    .line 47
    invoke-static {v0}, Lorg/mockito/internal/invocation/InvocationsFinder;->getAllLocations(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 46
    invoke-static {p2, v1, p1, v2}, Lorg/mockito/internal/exceptions/Reporter;->tooManyActualInvocations(IILorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object v2

    throw v2

    .line 38
    :cond_3
    invoke-static {v0}, Lorg/mockito/internal/invocation/InvocationsFinder;->getAllLocations(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 39
    .local v2, "allLocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Location;>;"
    new-instance v3, Lorg/mockito/internal/reporting/Discrepancy;

    invoke-direct {v3, p2, v1}, Lorg/mockito/internal/reporting/Discrepancy;-><init>(II)V

    invoke-static {v3, p1, v2}, Lorg/mockito/internal/exceptions/Reporter;->tooFewActualInvocations(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object v3

    throw v3
.end method

.method public static checkNumberOfInvocations(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;ILorg/mockito/internal/verification/api/InOrderContext;)V
    .locals 4
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
            ")V"
        }
    .end annotation

    .line 58
    .local p0, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-static {p0, p1, p2, p3}, Lorg/mockito/internal/invocation/InvocationsFinder;->findMatchingChunk(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;ILorg/mockito/internal/verification/api/InOrderContext;)Ljava/util/List;

    move-result-object v0

    .line 60
    .local v0, "chunk":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 62
    .local v1, "actualCount":I
    if-gt p2, v1, :cond_1

    .line 67
    if-lt p2, v1, :cond_0

    .line 72
    invoke-static {v0, p1, p3}, Lorg/mockito/internal/invocation/InvocationMarker;->markVerifiedInOrder(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/verification/api/InOrderContext;)V

    .line 73
    return-void

    .line 68
    :cond_0
    nop

    .line 69
    invoke-static {v0}, Lorg/mockito/internal/invocation/InvocationsFinder;->getAllLocations(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 68
    invoke-static {p2, v1, p1, v2}, Lorg/mockito/internal/exceptions/Reporter;->tooManyActualInvocationsInOrder(IILorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object v2

    throw v2

    .line 63
    :cond_1
    invoke-static {v0}, Lorg/mockito/internal/invocation/InvocationsFinder;->getAllLocations(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 64
    .local v2, "allLocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Location;>;"
    new-instance v3, Lorg/mockito/internal/reporting/Discrepancy;

    invoke-direct {v3, p2, v1}, Lorg/mockito/internal/reporting/Discrepancy;-><init>(II)V

    invoke-static {v3, p1, v2}, Lorg/mockito/internal/exceptions/Reporter;->tooFewActualInvocationsInOrder(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object v3

    throw v3
.end method

.method public static checkNumberOfInvocationsNonGreedy(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;ILorg/mockito/internal/verification/api/InOrderContext;)V
    .locals 6
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
            ")V"
        }
    .end annotation

    .line 80
    .local p0, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    const/4 v0, 0x0

    .line 81
    .local v0, "actualCount":I
    const/4 v1, 0x0

    .line 82
    .local v1, "lastLocation":Lorg/mockito/invocation/Location;
    :goto_0
    if-ge v0, p2, :cond_1

    .line 83
    invoke-static {p0, p1, p3}, Lorg/mockito/internal/invocation/InvocationsFinder;->findFirstMatchingUnverifiedInvocation(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/verification/api/InOrderContext;)Lorg/mockito/invocation/Invocation;

    move-result-object v2

    .line 84
    .local v2, "next":Lorg/mockito/invocation/Invocation;
    if-eqz v2, :cond_0

    .line 90
    invoke-static {v2, p1}, Lorg/mockito/internal/invocation/InvocationMarker;->markVerified(Lorg/mockito/invocation/Invocation;Lorg/mockito/invocation/MatchableInvocation;)V

    .line 91
    invoke-interface {p3, v2}, Lorg/mockito/internal/verification/api/InOrderContext;->markVerified(Lorg/mockito/invocation/Invocation;)V

    .line 92
    invoke-interface {v2}, Lorg/mockito/invocation/Invocation;->getLocation()Lorg/mockito/invocation/Location;

    move-result-object v1

    .line 93
    nop

    .end local v2    # "next":Lorg/mockito/invocation/Invocation;
    add-int/lit8 v0, v0, 0x1

    .line 94
    goto :goto_0

    .line 85
    .restart local v2    # "next":Lorg/mockito/invocation/Invocation;
    :cond_0
    new-instance v3, Lorg/mockito/internal/reporting/Discrepancy;

    invoke-direct {v3, p2, v0}, Lorg/mockito/internal/reporting/Discrepancy;-><init>(II)V

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/mockito/invocation/Location;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 88
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 85
    invoke-static {v3, p1, v4}, Lorg/mockito/internal/exceptions/Reporter;->tooFewActualInvocationsInOrder(Lorg/mockito/internal/reporting/Discrepancy;Lorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object v3

    throw v3

    .line 95
    .end local v2    # "next":Lorg/mockito/invocation/Invocation;
    :cond_1
    return-void
.end method
