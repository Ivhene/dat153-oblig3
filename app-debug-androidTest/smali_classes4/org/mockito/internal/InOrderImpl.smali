.class public Lorg/mockito/internal/InOrderImpl;
.super Ljava/lang/Object;
.source "InOrderImpl.java"

# interfaces
.implements Lorg/mockito/InOrder;
.implements Lorg/mockito/internal/verification/api/InOrderContext;


# instance fields
.field private final inOrderContext:Lorg/mockito/internal/verification/api/InOrderContext;

.field private final mockitoCore:Lorg/mockito/internal/MockitoCore;

.field private final mocksToBeVerifiedInOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 41
    .local p1, "mocksToBeVerifiedInOrder":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/mockito/internal/MockitoCore;

    invoke-direct {v0}, Lorg/mockito/internal/MockitoCore;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/InOrderImpl;->mockitoCore:Lorg/mockito/internal/MockitoCore;

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/InOrderImpl;->mocksToBeVerifiedInOrder:Ljava/util/List;

    .line 35
    new-instance v1, Lorg/mockito/internal/verification/InOrderContextImpl;

    invoke-direct {v1}, Lorg/mockito/internal/verification/InOrderContextImpl;-><init>()V

    iput-object v1, p0, Lorg/mockito/internal/InOrderImpl;->inOrderContext:Lorg/mockito/internal/verification/api/InOrderContext;

    .line 42
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 43
    return-void
.end method


# virtual methods
.method public getMocksToBeVerifiedInOrder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/mockito/internal/InOrderImpl;->mocksToBeVerifiedInOrder:Ljava/util/List;

    return-object v0
.end method

.method public isVerified(Lorg/mockito/invocation/Invocation;)Z
    .locals 1
    .param p1, "i"    # Lorg/mockito/invocation/Invocation;

    .line 74
    iget-object v0, p0, Lorg/mockito/internal/InOrderImpl;->inOrderContext:Lorg/mockito/internal/verification/api/InOrderContext;

    invoke-interface {v0, p1}, Lorg/mockito/internal/verification/api/InOrderContext;->isVerified(Lorg/mockito/invocation/Invocation;)Z

    move-result v0

    return v0
.end method

.method public markVerified(Lorg/mockito/invocation/Invocation;)V
    .locals 1
    .param p1, "i"    # Lorg/mockito/invocation/Invocation;

    .line 79
    iget-object v0, p0, Lorg/mockito/internal/InOrderImpl;->inOrderContext:Lorg/mockito/internal/verification/api/InOrderContext;

    invoke-interface {v0, p1}, Lorg/mockito/internal/verification/api/InOrderContext;->markVerified(Lorg/mockito/invocation/Invocation;)V

    .line 80
    return-void
.end method

.method public verify(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 47
    .local p1, "mock":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/mockito/internal/verification/VerificationModeFactory;->times(I)Lorg/mockito/internal/verification/Times;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/mockito/internal/InOrderImpl;->verify(Ljava/lang/Object;Lorg/mockito/verification/VerificationMode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public verify(Ljava/lang/Object;Lorg/mockito/verification/VerificationMode;)Ljava/lang/Object;
    .locals 4
    .param p2, "mode"    # Lorg/mockito/verification/VerificationMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/mockito/verification/VerificationMode;",
            ")TT;"
        }
    .end annotation

    .line 52
    .local p1, "mock":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_4

    .line 55
    invoke-static {p1}, Lorg/mockito/Mockito;->mockingDetails(Ljava/lang/Object;)Lorg/mockito/MockingDetails;

    move-result-object v0

    .line 56
    .local v0, "mockingDetails":Lorg/mockito/MockingDetails;
    invoke-interface {v0}, Lorg/mockito/MockingDetails;->isMock()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    iget-object v1, p0, Lorg/mockito/internal/InOrderImpl;->mocksToBeVerifiedInOrder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    instance-of v1, p2, Lorg/mockito/internal/verification/VerificationWrapper;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lorg/mockito/internal/InOrderImpl;->mockitoCore:Lorg/mockito/internal/MockitoCore;

    new-instance v2, Lorg/mockito/internal/verification/VerificationWrapperInOrderWrapper;

    move-object v3, p2

    check-cast v3, Lorg/mockito/internal/verification/VerificationWrapper;

    invoke-direct {v2, v3, p0}, Lorg/mockito/internal/verification/VerificationWrapperInOrderWrapper;-><init>(Lorg/mockito/internal/verification/VerificationWrapper;Lorg/mockito/internal/InOrderImpl;)V

    invoke-virtual {v1, p1, v2}, Lorg/mockito/internal/MockitoCore;->verify(Ljava/lang/Object;Lorg/mockito/verification/VerificationMode;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 65
    :cond_0
    instance-of v1, p2, Lorg/mockito/internal/verification/api/VerificationInOrderMode;

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lorg/mockito/internal/InOrderImpl;->mockitoCore:Lorg/mockito/internal/MockitoCore;

    new-instance v2, Lorg/mockito/internal/verification/InOrderWrapper;

    move-object v3, p2

    check-cast v3, Lorg/mockito/internal/verification/api/VerificationInOrderMode;

    invoke-direct {v2, v3, p0}, Lorg/mockito/internal/verification/InOrderWrapper;-><init>(Lorg/mockito/internal/verification/api/VerificationInOrderMode;Lorg/mockito/internal/InOrderImpl;)V

    invoke-virtual {v1, p1, v2}, Lorg/mockito/internal/MockitoCore;->verify(Ljava/lang/Object;Lorg/mockito/verification/VerificationMode;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 66
    :cond_1
    new-instance v1, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not implemented to work with InOrder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_2
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->inOrderRequiresFamiliarMock()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v1

    throw v1

    .line 57
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/exceptions/Reporter;->notAMockPassedToVerify(Ljava/lang/Class;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v1

    throw v1

    .line 53
    .end local v0    # "mockingDetails":Lorg/mockito/MockingDetails;
    :cond_4
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->nullPassedToVerify()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0
.end method

.method public verifyNoMoreInteractions()V
    .locals 2

    .line 84
    iget-object v0, p0, Lorg/mockito/internal/InOrderImpl;->mockitoCore:Lorg/mockito/internal/MockitoCore;

    iget-object v1, p0, Lorg/mockito/internal/InOrderImpl;->mocksToBeVerifiedInOrder:Ljava/util/List;

    invoke-virtual {v0, v1, p0}, Lorg/mockito/internal/MockitoCore;->verifyNoMoreInteractionsInOrder(Ljava/util/List;Lorg/mockito/internal/verification/api/InOrderContext;)V

    .line 85
    return-void
.end method
