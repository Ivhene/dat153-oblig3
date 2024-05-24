.class public interface abstract Lorg/mockito/verification/VerificationMode;
.super Ljava/lang/Object;
.source "VerificationMode.java"


# virtual methods
.method public description(Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .line 46
    invoke-static {p0, p1}, Lorg/mockito/internal/verification/VerificationModeFactory;->description(Lorg/mockito/verification/VerificationMode;Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    return-object v0
.end method

.method public abstract verify(Lorg/mockito/internal/verification/api/VerificationData;)V
.end method
