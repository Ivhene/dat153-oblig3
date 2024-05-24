.class public abstract Lorg/mockito/internal/verification/VerificationWrapper;
.super Ljava/lang/Object;
.source "VerificationWrapper.java"

# interfaces
.implements Lorg/mockito/verification/VerificationMode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<WrapperT::",
        "Lorg/mockito/verification/VerificationMode;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/verification/VerificationMode;"
    }
.end annotation


# instance fields
.field protected final wrappedVerification:Lorg/mockito/verification/VerificationMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TWrapperT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mockito/verification/VerificationMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWrapperT;)V"
        }
    .end annotation

    .line 15
    .local p0, "this":Lorg/mockito/internal/verification/VerificationWrapper;, "Lorg/mockito/internal/verification/VerificationWrapper<TWrapperT;>;"
    .local p1, "wrappedVerification":Lorg/mockito/verification/VerificationMode;, "TWrapperT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/mockito/internal/verification/VerificationWrapper;->wrappedVerification:Lorg/mockito/verification/VerificationMode;

    .line 17
    return-void
.end method


# virtual methods
.method public atLeast(I)Lorg/mockito/verification/VerificationMode;
    .locals 1
    .param p1, "minNumberOfInvocations"    # I

    .line 41
    .local p0, "this":Lorg/mockito/internal/verification/VerificationWrapper;, "Lorg/mockito/internal/verification/VerificationWrapper<TWrapperT;>;"
    nop

    .line 42
    invoke-static {p1}, Lorg/mockito/internal/verification/VerificationModeFactory;->atLeast(I)Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Lorg/mockito/internal/verification/VerificationWrapper;->copySelfWithNewVerificationMode(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    return-object v0
.end method

.method public atLeastOnce()Lorg/mockito/verification/VerificationMode;
    .locals 1

    .line 37
    .local p0, "this":Lorg/mockito/internal/verification/VerificationWrapper;, "Lorg/mockito/internal/verification/VerificationWrapper<TWrapperT;>;"
    invoke-static {}, Lorg/mockito/internal/verification/VerificationModeFactory;->atLeastOnce()Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mockito/internal/verification/VerificationWrapper;->copySelfWithNewVerificationMode(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    return-object v0
.end method

.method public atMost(I)Lorg/mockito/verification/VerificationMode;
    .locals 1
    .param p1, "maxNumberOfInvocations"    # I

    .line 50
    .local p0, "this":Lorg/mockito/internal/verification/VerificationWrapper;, "Lorg/mockito/internal/verification/VerificationWrapper<TWrapperT;>;"
    nop

    .line 51
    invoke-static {p1}, Lorg/mockito/internal/verification/VerificationModeFactory;->atMost(I)Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lorg/mockito/internal/verification/VerificationWrapper;->copySelfWithNewVerificationMode(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    return-object v0
.end method

.method public atMostOnce()Lorg/mockito/verification/VerificationMode;
    .locals 1

    .line 46
    .local p0, "this":Lorg/mockito/internal/verification/VerificationWrapper;, "Lorg/mockito/internal/verification/VerificationWrapper<TWrapperT;>;"
    invoke-static {}, Lorg/mockito/internal/verification/VerificationModeFactory;->atMostOnce()Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mockito/internal/verification/VerificationWrapper;->copySelfWithNewVerificationMode(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    return-object v0
.end method

.method protected abstract copySelfWithNewVerificationMode(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;
.end method

.method public never()Lorg/mockito/verification/VerificationMode;
    .locals 1

    .line 33
    .local p0, "this":Lorg/mockito/internal/verification/VerificationWrapper;, "Lorg/mockito/internal/verification/VerificationWrapper<TWrapperT;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/mockito/internal/verification/VerificationModeFactory;->atMost(I)Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mockito/internal/verification/VerificationWrapper;->copySelfWithNewVerificationMode(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    return-object v0
.end method

.method public only()Lorg/mockito/verification/VerificationMode;
    .locals 1

    .line 55
    .local p0, "this":Lorg/mockito/internal/verification/VerificationWrapper;, "Lorg/mockito/internal/verification/VerificationWrapper<TWrapperT;>;"
    invoke-static {}, Lorg/mockito/internal/verification/VerificationModeFactory;->only()Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mockito/internal/verification/VerificationWrapper;->copySelfWithNewVerificationMode(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    return-object v0
.end method

.method public times(I)Lorg/mockito/verification/VerificationMode;
    .locals 1
    .param p1, "wantedNumberOfInvocations"    # I

    .line 28
    .local p0, "this":Lorg/mockito/internal/verification/VerificationWrapper;, "Lorg/mockito/internal/verification/VerificationWrapper<TWrapperT;>;"
    nop

    .line 29
    invoke-static {p1}, Lorg/mockito/internal/verification/VerificationModeFactory;->times(I)Lorg/mockito/internal/verification/Times;

    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Lorg/mockito/internal/verification/VerificationWrapper;->copySelfWithNewVerificationMode(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    return-object v0
.end method

.method public verify(Lorg/mockito/internal/verification/api/VerificationData;)V
    .locals 1
    .param p1, "data"    # Lorg/mockito/internal/verification/api/VerificationData;

    .line 21
    .local p0, "this":Lorg/mockito/internal/verification/VerificationWrapper;, "Lorg/mockito/internal/verification/VerificationWrapper<TWrapperT;>;"
    iget-object v0, p0, Lorg/mockito/internal/verification/VerificationWrapper;->wrappedVerification:Lorg/mockito/verification/VerificationMode;

    invoke-interface {v0, p1}, Lorg/mockito/verification/VerificationMode;->verify(Lorg/mockito/internal/verification/api/VerificationData;)V

    .line 22
    return-void
.end method
