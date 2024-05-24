.class public Lorg/mockito/internal/verification/NoMoreInteractions;
.super Ljava/lang/Object;
.source "NoMoreInteractions.java"

# interfaces
.implements Lorg/mockito/verification/VerificationMode;
.implements Lorg/mockito/internal/verification/api/VerificationInOrderMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Lorg/mockito/internal/verification/api/VerificationData;)V
    .locals 2
    .param p1, "data"    # Lorg/mockito/internal/verification/api/VerificationData;

    .line 25
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationData;->getAllInvocations()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/invocation/InvocationsFinder;->findFirstUnverified(Ljava/util/List;)Lorg/mockito/invocation/Invocation;

    move-result-object v0

    .line 26
    .local v0, "unverified":Lorg/mockito/invocation/Invocation;
    if-nez v0, :cond_0

    .line 29
    return-void

    .line 27
    :cond_0
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationData;->getAllInvocations()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mockito/internal/exceptions/Reporter;->noMoreInteractionsWanted(Lorg/mockito/invocation/Invocation;Ljava/util/List;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object v1

    throw v1
.end method

.method public verifyInOrder(Lorg/mockito/internal/verification/api/VerificationDataInOrder;)V
    .locals 3
    .param p1, "data"    # Lorg/mockito/internal/verification/api/VerificationDataInOrder;

    .line 33
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationDataInOrder;->getAllInvocations()Ljava/util/List;

    move-result-object v0

    .line 34
    .local v0, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationDataInOrder;->getOrderingContext()Lorg/mockito/internal/verification/api/InOrderContext;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/mockito/internal/invocation/InvocationsFinder;->findFirstUnverifiedInOrder(Lorg/mockito/internal/verification/api/InOrderContext;Ljava/util/List;)Lorg/mockito/invocation/Invocation;

    move-result-object v1

    .line 36
    .local v1, "unverified":Lorg/mockito/invocation/Invocation;
    if-nez v1, :cond_0

    .line 39
    return-void

    .line 37
    :cond_0
    invoke-static {v1}, Lorg/mockito/internal/exceptions/Reporter;->noMoreInteractionsWantedInOrder(Lorg/mockito/invocation/Invocation;)Lorg/mockito/exceptions/base/MockitoAssertionError;

    move-result-object v2

    throw v2
.end method
