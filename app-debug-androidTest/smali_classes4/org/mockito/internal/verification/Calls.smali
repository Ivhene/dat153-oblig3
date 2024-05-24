.class public Lorg/mockito/internal/verification/Calls;
.super Ljava/lang/Object;
.source "Calls.java"

# interfaces
.implements Lorg/mockito/verification/VerificationMode;
.implements Lorg/mockito/internal/verification/api/VerificationInOrderMode;


# instance fields
.field final wantedCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "wantedNumberOfInvocations"    # I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-lez p1, :cond_0

    .line 28
    iput p1, p0, Lorg/mockito/internal/verification/Calls;->wantedCount:I

    .line 29
    return-void

    .line 26
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "Negative and zero values are not allowed here"

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wanted invocations count (non-greedy): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/mockito/internal/verification/Calls;->wantedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify(Lorg/mockito/internal/verification/api/VerificationData;)V
    .locals 2
    .param p1, "data"    # Lorg/mockito/internal/verification/api/VerificationData;

    .line 33
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "calls is only intended to work with InOrder"

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyInOrder(Lorg/mockito/internal/verification/api/VerificationDataInOrder;)V
    .locals 4
    .param p1, "data"    # Lorg/mockito/internal/verification/api/VerificationDataInOrder;

    .line 38
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationDataInOrder;->getAllInvocations()Ljava/util/List;

    move-result-object v0

    .line 39
    .local v0, "allInvocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationDataInOrder;->getWanted()Lorg/mockito/invocation/MatchableInvocation;

    move-result-object v1

    .line 41
    .local v1, "wanted":Lorg/mockito/invocation/MatchableInvocation;
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationDataInOrder;->getOrderingContext()Lorg/mockito/internal/verification/api/InOrderContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/mockito/internal/verification/checkers/MissingInvocationChecker;->checkMissingInvocation(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/verification/api/InOrderContext;)V

    .line 42
    iget v2, p0, Lorg/mockito/internal/verification/Calls;->wantedCount:I

    .line 43
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationDataInOrder;->getOrderingContext()Lorg/mockito/internal/verification/api/InOrderContext;

    move-result-object v3

    .line 42
    invoke-static {v0, v1, v2, v3}, Lorg/mockito/internal/verification/checkers/NumberOfInvocationsChecker;->checkNumberOfInvocationsNonGreedy(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;ILorg/mockito/internal/verification/api/InOrderContext;)V

    .line 44
    return-void
.end method
