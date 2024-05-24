.class public Lorg/mockito/verification/After;
.super Lorg/mockito/internal/verification/VerificationWrapper;
.source "After.java"

# interfaces
.implements Lorg/mockito/verification/VerificationAfterDelay;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mockito/internal/verification/VerificationWrapper<",
        "Lorg/mockito/internal/verification/VerificationOverTimeImpl;",
        ">;",
        "Lorg/mockito/verification/VerificationAfterDelay;"
    }
.end annotation


# direct methods
.method constructor <init>(JJLorg/mockito/verification/VerificationMode;)V
    .locals 8
    .param p1, "pollingPeriod"    # J
    .param p3, "delayMillis"    # J
    .param p5, "verificationMode"    # Lorg/mockito/verification/VerificationMode;

    .line 30
    new-instance v7, Lorg/mockito/internal/verification/VerificationOverTimeImpl;

    const/4 v6, 0x0

    move-object v0, v7

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;-><init>(JJLorg/mockito/verification/VerificationMode;Z)V

    invoke-direct {p0, v7}, Lorg/mockito/verification/After;-><init>(Lorg/mockito/internal/verification/VerificationOverTimeImpl;)V

    .line 31
    return-void
.end method

.method public constructor <init>(JLorg/mockito/verification/VerificationMode;)V
    .locals 6
    .param p1, "delayMillis"    # J
    .param p3, "verificationMode"    # Lorg/mockito/verification/VerificationMode;

    .line 26
    const-wide/16 v1, 0xa

    move-object v0, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/mockito/verification/After;-><init>(JJLorg/mockito/verification/VerificationMode;)V

    .line 27
    return-void
.end method

.method constructor <init>(Lorg/mockito/internal/verification/VerificationOverTimeImpl;)V
    .locals 0
    .param p1, "verificationOverTime"    # Lorg/mockito/internal/verification/VerificationOverTimeImpl;

    .line 34
    invoke-direct {p0, p1}, Lorg/mockito/internal/verification/VerificationWrapper;-><init>(Lorg/mockito/verification/VerificationMode;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected copySelfWithNewVerificationMode(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;
    .locals 2
    .param p1, "verificationMode"    # Lorg/mockito/verification/VerificationMode;

    .line 39
    new-instance v0, Lorg/mockito/verification/After;

    iget-object v1, p0, Lorg/mockito/verification/After;->wrappedVerification:Lorg/mockito/verification/VerificationMode;

    check-cast v1, Lorg/mockito/internal/verification/VerificationOverTimeImpl;

    invoke-virtual {v1, p1}, Lorg/mockito/internal/verification/VerificationOverTimeImpl;->copyWithVerificationMode(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/internal/verification/VerificationOverTimeImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/verification/After;-><init>(Lorg/mockito/internal/verification/VerificationOverTimeImpl;)V

    return-object v0
.end method
