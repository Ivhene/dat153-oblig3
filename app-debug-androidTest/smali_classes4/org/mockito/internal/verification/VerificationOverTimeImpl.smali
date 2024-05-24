.class public Lorg/mockito/internal/verification/VerificationOverTimeImpl;
.super Ljava/lang/Object;
.source "VerificationOverTimeImpl.java"

# interfaces
.implements Lorg/mockito/verification/VerificationMode;


# instance fields
.field private final delegate:Lorg/mockito/verification/VerificationMode;

.field private final pollingPeriodMillis:J

.field private final returnOnSuccess:Z

.field private final timer:Lorg/mockito/internal/util/Timer;


# direct methods
.method public constructor <init>(JJLorg/mockito/verification/VerificationMode;Z)V
    .locals 6
    .param p1, "pollingPeriodMillis"    # J
    .param p3, "durationMillis"    # J
    .param p5, "delegate"    # Lorg/mockito/verification/VerificationMode;
    .param p6, "returnOnSuccess"    # Z

    .line 40
    new-instance v5, Lorg/mockito/internal/util/Timer;

    invoke-direct {v5, p3, p4}, Lorg/mockito/internal/util/Timer;-><init>(J)V

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p5

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;-><init>(JLorg/mockito/verification/VerificationMode;ZLorg/mockito/internal/util/Timer;)V

    .line 41
    return-void
.end method

.method public constructor <init>(JLorg/mockito/verification/VerificationMode;ZLorg/mockito/internal/util/Timer;)V
    .locals 0
    .param p1, "pollingPeriodMillis"    # J
    .param p3, "delegate"    # Lorg/mockito/verification/VerificationMode;
    .param p4, "returnOnSuccess"    # Z
    .param p5, "timer"    # Lorg/mockito/internal/util/Timer;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-wide p1, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->pollingPeriodMillis:J

    .line 60
    iput-object p3, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->delegate:Lorg/mockito/verification/VerificationMode;

    .line 61
    iput-boolean p4, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->returnOnSuccess:Z

    .line 62
    iput-object p5, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->timer:Lorg/mockito/internal/util/Timer;

    .line 63
    return-void
.end method

.method private handleVerifyException(Ljava/lang/AssertionError;)Ljava/lang/AssertionError;
    .locals 2
    .param p1, "e"    # Ljava/lang/AssertionError;

    .line 105
    iget-object v0, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->delegate:Lorg/mockito/verification/VerificationMode;

    invoke-virtual {p0, v0}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->canRecoverFromFailure(Lorg/mockito/verification/VerificationMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-wide v0, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->pollingPeriodMillis:J

    invoke-direct {p0, v0, v1}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->sleep(J)V

    .line 107
    return-object p1

    .line 109
    :cond_0
    throw p1
.end method

.method private sleep(J)V
    .locals 3
    .param p1, "sleep"    # J

    .line 125
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    nop

    .line 129
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "ie":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Thread sleep has been interrupted"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected canRecoverFromFailure(Lorg/mockito/verification/VerificationMode;)Z
    .locals 1
    .param p1, "verificationMode"    # Lorg/mockito/verification/VerificationMode;

    .line 114
    instance-of v0, p1, Lorg/mockito/internal/verification/AtMost;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/mockito/internal/verification/NoMoreInteractions;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public copyWithVerificationMode(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/internal/verification/VerificationOverTimeImpl;
    .locals 8
    .param p1, "verificationMode"    # Lorg/mockito/verification/VerificationMode;

    .line 119
    new-instance v7, Lorg/mockito/internal/verification/VerificationOverTimeImpl;

    iget-wide v1, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->pollingPeriodMillis:J

    iget-object v0, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->timer:Lorg/mockito/internal/util/Timer;

    .line 120
    invoke-virtual {v0}, Lorg/mockito/internal/util/Timer;->duration()J

    move-result-wide v3

    iget-boolean v6, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->returnOnSuccess:Z

    move-object v0, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;-><init>(JJLorg/mockito/verification/VerificationMode;Z)V

    .line 119
    return-object v7
.end method

.method public getDelegate()Lorg/mockito/verification/VerificationMode;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->delegate:Lorg/mockito/verification/VerificationMode;

    return-object v0
.end method

.method public getPollingPeriodMillis()J
    .locals 2

    .line 136
    iget-wide v0, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->pollingPeriodMillis:J

    return-wide v0
.end method

.method public getTimer()Lorg/mockito/internal/util/Timer;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->timer:Lorg/mockito/internal/util/Timer;

    return-object v0
.end method

.method public isReturnOnSuccess()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->returnOnSuccess:Z

    return v0
.end method

.method public verify(Lorg/mockito/internal/verification/api/VerificationData;)V
    .locals 2
    .param p1, "data"    # Lorg/mockito/internal/verification/api/VerificationData;

    .line 82
    const/4 v0, 0x0

    .line 84
    .local v0, "error":Ljava/lang/AssertionError;
    iget-object v1, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->timer:Lorg/mockito/internal/util/Timer;

    invoke-virtual {v1}, Lorg/mockito/internal/util/Timer;->start()V

    .line 85
    :goto_0
    iget-object v1, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->timer:Lorg/mockito/internal/util/Timer;

    invoke-virtual {v1}, Lorg/mockito/internal/util/Timer;->isCounting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    :try_start_0
    iget-object v1, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->delegate:Lorg/mockito/verification/VerificationMode;

    invoke-interface {v1, p1}, Lorg/mockito/verification/VerificationMode;->verify(Lorg/mockito/internal/verification/api/VerificationData;)V

    .line 89
    iget-boolean v1, p0, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->returnOnSuccess:Z
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 90
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/AssertionError;
    invoke-direct {p0, v1}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->handleVerifyException(Ljava/lang/AssertionError;)Ljava/lang/AssertionError;

    move-result-object v0

    .line 96
    .end local v1    # "e":Ljava/lang/AssertionError;
    :goto_1
    goto :goto_0

    .line 99
    :cond_1
    if-nez v0, :cond_2

    .line 102
    return-void

    .line 100
    :cond_2
    throw v0
.end method
