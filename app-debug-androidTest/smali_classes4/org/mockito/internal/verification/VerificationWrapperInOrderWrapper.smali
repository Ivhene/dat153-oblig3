.class public Lorg/mockito/internal/verification/VerificationWrapperInOrderWrapper;
.super Ljava/lang/Object;
.source "VerificationWrapperInOrderWrapper.java"

# interfaces
.implements Lorg/mockito/verification/VerificationMode;


# instance fields
.field private final delegate:Lorg/mockito/verification/VerificationMode;


# direct methods
.method public constructor <init>(Lorg/mockito/internal/verification/VerificationWrapper;Lorg/mockito/internal/InOrderImpl;)V
    .locals 3
    .param p2, "inOrder"    # Lorg/mockito/internal/InOrderImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/verification/VerificationWrapper<",
            "*>;",
            "Lorg/mockito/internal/InOrderImpl;",
            ")V"
        }
    .end annotation

    .line 17
    .local p1, "verificationWrapper":Lorg/mockito/internal/verification/VerificationWrapper;, "Lorg/mockito/internal/verification/VerificationWrapper<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iget-object v0, p1, Lorg/mockito/internal/verification/VerificationWrapper;->wrappedVerification:Lorg/mockito/verification/VerificationMode;

    .line 20
    .local v0, "verificationMode":Lorg/mockito/verification/VerificationMode;
    nop

    .line 21
    invoke-direct {p0, p1, v0, p2}, Lorg/mockito/internal/verification/VerificationWrapperInOrderWrapper;->wrapInOrder(Lorg/mockito/internal/verification/VerificationWrapper;Lorg/mockito/verification/VerificationMode;Lorg/mockito/internal/InOrderImpl;)Lorg/mockito/verification/VerificationMode;

    move-result-object v1

    .line 23
    .local v1, "inOrderWrappedVerificationMode":Lorg/mockito/verification/VerificationMode;
    nop

    .line 24
    invoke-virtual {p1, v1}, Lorg/mockito/internal/verification/VerificationWrapper;->copySelfWithNewVerificationMode(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;

    move-result-object v2

    iput-object v2, p0, Lorg/mockito/internal/verification/VerificationWrapperInOrderWrapper;->delegate:Lorg/mockito/verification/VerificationMode;

    .line 25
    return-void
.end method

.method private wrapInOrder(Lorg/mockito/internal/verification/VerificationWrapper;Lorg/mockito/verification/VerificationMode;Lorg/mockito/internal/InOrderImpl;)Lorg/mockito/verification/VerificationMode;
    .locals 9
    .param p2, "verificationMode"    # Lorg/mockito/verification/VerificationMode;
    .param p3, "inOrder"    # Lorg/mockito/internal/InOrderImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/verification/VerificationWrapper<",
            "*>;",
            "Lorg/mockito/verification/VerificationMode;",
            "Lorg/mockito/internal/InOrderImpl;",
            ")",
            "Lorg/mockito/verification/VerificationMode;"
        }
    .end annotation

    .line 36
    .local p1, "verificationWrapper":Lorg/mockito/internal/verification/VerificationWrapper;, "Lorg/mockito/internal/verification/VerificationWrapper<*>;"
    instance-of v0, p2, Lorg/mockito/internal/verification/api/VerificationInOrderMode;

    if-eqz v0, :cond_0

    .line 37
    move-object v0, p2

    check-cast v0, Lorg/mockito/internal/verification/api/VerificationInOrderMode;

    .line 39
    .local v0, "verificationInOrderMode":Lorg/mockito/internal/verification/api/VerificationInOrderMode;
    new-instance v1, Lorg/mockito/internal/verification/InOrderWrapper;

    invoke-direct {v1, v0, p3}, Lorg/mockito/internal/verification/InOrderWrapper;-><init>(Lorg/mockito/internal/verification/api/VerificationInOrderMode;Lorg/mockito/internal/InOrderImpl;)V

    return-object v1

    .line 42
    .end local v0    # "verificationInOrderMode":Lorg/mockito/internal/verification/api/VerificationInOrderMode;
    :cond_0
    instance-of v0, p2, Lorg/mockito/internal/verification/VerificationOverTimeImpl;

    if-eqz v0, :cond_1

    .line 43
    move-object v0, p2

    check-cast v0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;

    .line 45
    .local v0, "verificationOverTime":Lorg/mockito/internal/verification/VerificationOverTimeImpl;
    invoke-virtual {v0}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->isReturnOnSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    new-instance v1, Lorg/mockito/internal/verification/VerificationOverTimeImpl;

    .line 47
    invoke-virtual {v0}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->getPollingPeriodMillis()J

    move-result-wide v3

    .line 48
    invoke-virtual {v0}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->getTimer()Lorg/mockito/internal/util/Timer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mockito/internal/util/Timer;->duration()J

    move-result-wide v5

    .line 50
    invoke-virtual {v0}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->getDelegate()Lorg/mockito/verification/VerificationMode;

    move-result-object v2

    .line 49
    invoke-direct {p0, p1, v2, p3}, Lorg/mockito/internal/verification/VerificationWrapperInOrderWrapper;->wrapInOrder(Lorg/mockito/internal/verification/VerificationWrapper;Lorg/mockito/verification/VerificationMode;Lorg/mockito/internal/InOrderImpl;)Lorg/mockito/verification/VerificationMode;

    move-result-object v7

    .line 51
    invoke-virtual {v0}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->isReturnOnSuccess()Z

    move-result v8

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;-><init>(JJLorg/mockito/verification/VerificationMode;Z)V

    .line 46
    return-object v1

    .line 56
    .end local v0    # "verificationOverTime":Lorg/mockito/internal/verification/VerificationOverTimeImpl;
    :cond_1
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not implemented to work with InOrder wrapped inside a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public verify(Lorg/mockito/internal/verification/api/VerificationData;)V
    .locals 1
    .param p1, "data"    # Lorg/mockito/internal/verification/api/VerificationData;

    .line 29
    iget-object v0, p0, Lorg/mockito/internal/verification/VerificationWrapperInOrderWrapper;->delegate:Lorg/mockito/verification/VerificationMode;

    invoke-interface {v0, p1}, Lorg/mockito/verification/VerificationMode;->verify(Lorg/mockito/internal/verification/api/VerificationData;)V

    .line 30
    return-void
.end method
