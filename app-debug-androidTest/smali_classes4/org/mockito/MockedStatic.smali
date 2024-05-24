.class public interface abstract Lorg/mockito/MockedStatic;
.super Ljava/lang/Object;
.source "MockedStatic.java"

# interfaces
.implements Lorg/mockito/ScopedMock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/MockedStatic$Verification;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/ScopedMock;"
    }
.end annotation

.annotation runtime Lorg/mockito/Incubating;
.end annotation


# virtual methods
.method public abstract clearInvocations()V
.end method

.method public abstract reset()V
.end method

.method public verify(Lorg/mockito/MockedStatic$Verification;)V
    .locals 1
    .param p1, "verification"    # Lorg/mockito/MockedStatic$Verification;

    .line 38
    .local p0, "this":Lorg/mockito/MockedStatic;, "Lorg/mockito/MockedStatic<TT;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/mockito/Mockito;->times(I)Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lorg/mockito/MockedStatic;->verify(Lorg/mockito/MockedStatic$Verification;Lorg/mockito/verification/VerificationMode;)V

    .line 39
    return-void
.end method

.method public abstract verify(Lorg/mockito/MockedStatic$Verification;Lorg/mockito/verification/VerificationMode;)V
.end method

.method public abstract verify(Lorg/mockito/verification/VerificationMode;Lorg/mockito/MockedStatic$Verification;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract verifyNoInteractions()V
.end method

.method public abstract verifyNoMoreInteractions()V
.end method

.method public abstract when(Lorg/mockito/MockedStatic$Verification;)Lorg/mockito/stubbing/OngoingStubbing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/MockedStatic$Verification;",
            ")",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TS;>;"
        }
    .end annotation
.end method
