.class public final Lorg/mockito/internal/verification/VerificationModeFactory;
.super Ljava/lang/Object;
.source "VerificationModeFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static atLeast(I)Lorg/mockito/verification/VerificationMode;
    .locals 1
    .param p0, "minNumberOfInvocations"    # I

    .line 16
    new-instance v0, Lorg/mockito/internal/verification/AtLeast;

    invoke-direct {v0, p0}, Lorg/mockito/internal/verification/AtLeast;-><init>(I)V

    return-object v0
.end method

.method public static atLeastOnce()Lorg/mockito/verification/VerificationMode;
    .locals 1

    .line 12
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/mockito/internal/verification/VerificationModeFactory;->atLeast(I)Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    return-object v0
.end method

.method public static atMost(I)Lorg/mockito/verification/VerificationMode;
    .locals 1
    .param p0, "maxNumberOfInvocations"    # I

    .line 44
    new-instance v0, Lorg/mockito/internal/verification/AtMost;

    invoke-direct {v0, p0}, Lorg/mockito/internal/verification/AtMost;-><init>(I)V

    return-object v0
.end method

.method public static atMostOnce()Lorg/mockito/verification/VerificationMode;
    .locals 1

    .line 40
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/mockito/internal/verification/VerificationModeFactory;->atMost(I)Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    return-object v0
.end method

.method public static calls(I)Lorg/mockito/internal/verification/Calls;
    .locals 1
    .param p0, "wantedNumberOfInvocations"    # I

    .line 28
    new-instance v0, Lorg/mockito/internal/verification/Calls;

    invoke-direct {v0, p0}, Lorg/mockito/internal/verification/Calls;-><init>(I)V

    return-object v0
.end method

.method public static description(Lorg/mockito/verification/VerificationMode;Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;
    .locals 1
    .param p0, "mode"    # Lorg/mockito/verification/VerificationMode;
    .param p1, "description"    # Ljava/lang/String;

    .line 55
    new-instance v0, Lorg/mockito/internal/verification/Description;

    invoke-direct {v0, p0, p1}, Lorg/mockito/internal/verification/Description;-><init>(Lorg/mockito/verification/VerificationMode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static noInteractions()Lorg/mockito/internal/verification/NoInteractions;
    .locals 1

    .line 36
    new-instance v0, Lorg/mockito/internal/verification/NoInteractions;

    invoke-direct {v0}, Lorg/mockito/internal/verification/NoInteractions;-><init>()V

    return-object v0
.end method

.method public static noMoreInteractions()Lorg/mockito/internal/verification/NoMoreInteractions;
    .locals 1

    .line 32
    new-instance v0, Lorg/mockito/internal/verification/NoMoreInteractions;

    invoke-direct {v0}, Lorg/mockito/internal/verification/NoMoreInteractions;-><init>()V

    return-object v0
.end method

.method public static only()Lorg/mockito/verification/VerificationMode;
    .locals 1

    .line 20
    new-instance v0, Lorg/mockito/internal/verification/Only;

    invoke-direct {v0}, Lorg/mockito/internal/verification/Only;-><init>()V

    return-object v0
.end method

.method public static times(I)Lorg/mockito/internal/verification/Times;
    .locals 1
    .param p0, "wantedNumberOfInvocations"    # I

    .line 24
    new-instance v0, Lorg/mockito/internal/verification/Times;

    invoke-direct {v0, p0}, Lorg/mockito/internal/verification/Times;-><init>(I)V

    return-object v0
.end method
