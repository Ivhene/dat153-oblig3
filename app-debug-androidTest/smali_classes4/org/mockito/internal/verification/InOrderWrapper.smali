.class public Lorg/mockito/internal/verification/InOrderWrapper;
.super Ljava/lang/Object;
.source "InOrderWrapper.java"

# interfaces
.implements Lorg/mockito/verification/VerificationMode;


# instance fields
.field private final inOrder:Lorg/mockito/internal/InOrderImpl;

.field private final mode:Lorg/mockito/internal/verification/api/VerificationInOrderMode;


# direct methods
.method public constructor <init>(Lorg/mockito/internal/verification/api/VerificationInOrderMode;Lorg/mockito/internal/InOrderImpl;)V
    .locals 0
    .param p1, "mode"    # Lorg/mockito/internal/verification/api/VerificationInOrderMode;
    .param p2, "inOrder"    # Lorg/mockito/internal/InOrderImpl;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/mockito/internal/verification/InOrderWrapper;->mode:Lorg/mockito/internal/verification/api/VerificationInOrderMode;

    .line 24
    iput-object p2, p0, Lorg/mockito/internal/verification/InOrderWrapper;->inOrder:Lorg/mockito/internal/InOrderImpl;

    .line 25
    return-void
.end method


# virtual methods
.method public verify(Lorg/mockito/internal/verification/api/VerificationData;)V
    .locals 4
    .param p1, "data"    # Lorg/mockito/internal/verification/api/VerificationData;

    .line 29
    iget-object v0, p0, Lorg/mockito/internal/verification/InOrderWrapper;->inOrder:Lorg/mockito/internal/InOrderImpl;

    .line 30
    invoke-virtual {v0}, Lorg/mockito/internal/InOrderImpl;->getMocksToBeVerifiedInOrder()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/invocation/finder/VerifiableInvocationsFinder;->find(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 31
    .local v0, "invocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    new-instance v1, Lorg/mockito/internal/verification/api/VerificationDataInOrderImpl;

    iget-object v2, p0, Lorg/mockito/internal/verification/InOrderWrapper;->inOrder:Lorg/mockito/internal/InOrderImpl;

    .line 32
    invoke-interface {p1}, Lorg/mockito/internal/verification/api/VerificationData;->getTarget()Lorg/mockito/invocation/MatchableInvocation;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/mockito/internal/verification/api/VerificationDataInOrderImpl;-><init>(Lorg/mockito/internal/verification/api/InOrderContext;Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)V

    .line 33
    .local v1, "dataInOrder":Lorg/mockito/internal/verification/api/VerificationDataInOrderImpl;
    iget-object v2, p0, Lorg/mockito/internal/verification/InOrderWrapper;->mode:Lorg/mockito/internal/verification/api/VerificationInOrderMode;

    invoke-interface {v2, v1}, Lorg/mockito/internal/verification/api/VerificationInOrderMode;->verifyInOrder(Lorg/mockito/internal/verification/api/VerificationDataInOrder;)V

    .line 34
    return-void
.end method
