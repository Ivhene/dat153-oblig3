.class public Lorg/mockito/internal/verification/checkers/MissingInvocationChecker;
.super Ljava/lang/Object;
.source "MissingInvocationChecker.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMissingInvocation(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)V
    .locals 7
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

    .line 31
    .local p0, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-static {p0, p1}, Lorg/mockito/internal/invocation/InvocationsFinder;->findInvocations(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)Ljava/util/List;

    move-result-object v0

    .line 33
    .local v0, "actualInvocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    return-void

    .line 37
    :cond_0
    invoke-static {p0, p1}, Lorg/mockito/internal/invocation/InvocationsFinder;->findSimilarInvocation(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)Lorg/mockito/invocation/Invocation;

    move-result-object v1

    .line 38
    .local v1, "similar":Lorg/mockito/invocation/Invocation;
    if-nez v1, :cond_1

    .line 39
    invoke-static {p1, p0}, Lorg/mockito/internal/exceptions/Reporter;->wantedButNotInvoked(Lorg/mockito/invocation/DescribedInvocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object v2

    throw v2

    .line 42
    :cond_1
    nop

    .line 43
    invoke-interface {p1}, Lorg/mockito/invocation/MatchableInvocation;->getMatchers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1}, Lorg/mockito/invocation/Invocation;->getArguments()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/mockito/internal/verification/argumentmatching/ArgumentMatchingTool;->getSuspiciouslyNotMatchingArgsIndexes(Ljava/util/List;[Ljava/lang/Object;)[Ljava/lang/Integer;

    move-result-object v2

    .line 44
    .local v2, "indexesOfSuspiciousArgs":[Ljava/lang/Integer;
    new-instance v3, Lorg/mockito/internal/reporting/SmartPrinter;

    invoke-direct {v3, p1, p0, v2}, Lorg/mockito/internal/reporting/SmartPrinter;-><init>(Lorg/mockito/invocation/MatchableInvocation;Ljava/util/List;[Ljava/lang/Integer;)V

    .line 45
    .local v3, "smartPrinter":Lorg/mockito/internal/reporting/SmartPrinter;
    new-instance v4, Lorg/mockito/internal/verification/checkers/MissingInvocationChecker$1;

    invoke-direct {v4}, Lorg/mockito/internal/verification/checkers/MissingInvocationChecker$1;-><init>()V

    .line 46
    invoke-static {p0, v4}, Lorg/mockito/internal/util/collections/ListUtil;->convert(Ljava/util/Collection;Lorg/mockito/internal/util/collections/ListUtil$Converter;)Ljava/util/LinkedList;

    move-result-object v4

    .line 55
    .local v4, "actualLocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Location;>;"
    nop

    .line 56
    invoke-virtual {v3}, Lorg/mockito/internal/reporting/SmartPrinter;->getWanted()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lorg/mockito/internal/reporting/SmartPrinter;->getActuals()Ljava/util/List;

    move-result-object v6

    .line 55
    invoke-static {v5, v6, v4}, Lorg/mockito/internal/exceptions/Reporter;->argumentsAreDifferent(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/AssertionError;

    move-result-object v5

    throw v5
.end method

.method public static checkMissingInvocation(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/verification/api/InOrderContext;)V
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
            ")V"
        }
    .end annotation

    .line 61
    .local p0, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-static {p0, p1, p2}, Lorg/mockito/internal/invocation/InvocationsFinder;->findAllMatchingUnverifiedChunks(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/verification/api/InOrderContext;)Ljava/util/List;

    move-result-object v0

    .line 63
    .local v0, "chunk":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    return-void

    .line 67
    :cond_0
    invoke-static {p0, p2}, Lorg/mockito/internal/invocation/InvocationsFinder;->findPreviousVerifiedInOrder(Ljava/util/List;Lorg/mockito/internal/verification/api/InOrderContext;)Lorg/mockito/invocation/Invocation;

    move-result-object v1

    .line 68
    .local v1, "previousInOrder":Lorg/mockito/invocation/Invocation;
    if-nez v1, :cond_1

    .line 72
    invoke-static {p0, p1}, Lorg/mockito/internal/verification/checkers/MissingInvocationChecker;->checkMissingInvocation(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)V

    .line 73
    return-void

    .line 69
    :cond_1
    invoke-static {p1, v1}, Lorg/mockito/internal/exceptions/Reporter;->wantedButNotInvokedInOrder(Lorg/mockito/invocation/DescribedInvocation;Lorg/mockito/invocation/DescribedInvocation;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object v2

    throw v2
.end method
