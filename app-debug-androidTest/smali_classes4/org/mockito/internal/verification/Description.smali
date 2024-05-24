.class public Lorg/mockito/internal/verification/Description;
.super Ljava/lang/Object;
.source "Description.java"

# interfaces
.implements Lorg/mockito/verification/VerificationMode;


# instance fields
.field private final description:Ljava/lang/String;

.field private final verification:Lorg/mockito/verification/VerificationMode;


# direct methods
.method public constructor <init>(Lorg/mockito/verification/VerificationMode;Ljava/lang/String;)V
    .locals 0
    .param p1, "verification"    # Lorg/mockito/verification/VerificationMode;
    .param p2, "description"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/mockito/internal/verification/Description;->verification:Lorg/mockito/verification/VerificationMode;

    .line 29
    iput-object p2, p0, Lorg/mockito/internal/verification/Description;->description:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public verify(Lorg/mockito/internal/verification/api/VerificationData;)V
    .locals 3
    .param p1, "data"    # Lorg/mockito/internal/verification/api/VerificationData;

    .line 40
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/verification/Description;->verification:Lorg/mockito/verification/VerificationMode;

    invoke-interface {v0, p1}, Lorg/mockito/verification/VerificationMode;->verify(Lorg/mockito/internal/verification/api/VerificationData;)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    nop

    .line 45
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/AssertionError;
    new-instance v1, Lorg/mockito/exceptions/base/MockitoAssertionError;

    iget-object v2, p0, Lorg/mockito/internal/verification/Description;->description:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lorg/mockito/exceptions/base/MockitoAssertionError;-><init>(Ljava/lang/AssertionError;Ljava/lang/String;)V

    throw v1
.end method
