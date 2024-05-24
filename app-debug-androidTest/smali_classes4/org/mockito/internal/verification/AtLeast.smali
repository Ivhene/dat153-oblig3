.class public Lorg/mockito/internal/verification/AtLeast;
.super Ljava/lang/Object;
.source "AtLeast.java"

# interfaces
.implements Lorg/mockito/internal/verification/api/VerificationInOrderMode;
.implements Lorg/mockito/verification/VerificationMode;


# instance fields
.field final wantedCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "wantedNumberOfInvocations"    # I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-ltz p1, :cond_0

    .line 24
    iput p1, p0, Lorg/mockito/internal/verification/AtLeast;->wantedCount:I

    .line 25
    return-void

    .line 22
    :cond_0
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    const-string v1, "Negative value is not allowed here"

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wanted invocations count: at least "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/mockito/internal/verification/AtLeast;->wantedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify(Lorg/mockito/internal/verification/api/VerificationData;)V
    .locals 3
    .param p1, "data"    # Lorg/mockito/internal/verification/api/VerificationData;

    .line 29
    iget v0, p0, Lorg/mockito/internal/verification/AtLeast;->wantedCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 30
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationData;->getAllInvocations()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationData;->getTarget()Lorg/mockito/invocation/MatchableInvocation;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mockito/internal/verification/checkers/MissingInvocationChecker;->checkMissingInvocation(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)V

    .line 32
    :cond_0
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationData;->getAllInvocations()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationData;->getTarget()Lorg/mockito/invocation/MatchableInvocation;

    move-result-object v1

    iget v2, p0, Lorg/mockito/internal/verification/AtLeast;->wantedCount:I

    invoke-static {v0, v1, v2}, Lorg/mockito/internal/verification/checkers/AtLeastXNumberOfInvocationsChecker;->checkAtLeastNumberOfInvocations(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;I)V

    .line 33
    return-void
.end method

.method public verifyInOrder(Lorg/mockito/internal/verification/api/VerificationDataInOrder;)V
    .locals 4
    .param p1, "data"    # Lorg/mockito/internal/verification/api/VerificationDataInOrder;

    .line 37
    iget v0, p0, Lorg/mockito/internal/verification/AtLeast;->wantedCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 38
    nop

    .line 39
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationDataInOrder;->getAllInvocations()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationDataInOrder;->getWanted()Lorg/mockito/invocation/MatchableInvocation;

    move-result-object v1

    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationDataInOrder;->getOrderingContext()Lorg/mockito/internal/verification/api/InOrderContext;

    move-result-object v2

    .line 38
    invoke-static {v0, v1, v2}, Lorg/mockito/internal/verification/checkers/MissingInvocationChecker;->checkMissingInvocation(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;Lorg/mockito/internal/verification/api/InOrderContext;)V

    .line 41
    :cond_0
    nop

    .line 42
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationDataInOrder;->getAllInvocations()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationDataInOrder;->getWanted()Lorg/mockito/invocation/MatchableInvocation;

    move-result-object v1

    iget v2, p0, Lorg/mockito/internal/verification/AtLeast;->wantedCount:I

    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationDataInOrder;->getOrderingContext()Lorg/mockito/internal/verification/api/InOrderContext;

    move-result-object v3

    .line 41
    invoke-static {v0, v1, v2, v3}, Lorg/mockito/internal/verification/checkers/AtLeastXNumberOfInvocationsChecker;->checkAtLeastNumberOfInvocations(Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;ILorg/mockito/internal/verification/api/InOrderContext;)V

    .line 43
    return-void
.end method
