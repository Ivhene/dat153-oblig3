.class Lorg/mockito/internal/progress/MockingProgressImpl$1;
.super Ljava/lang/Object;
.source "MockingProgressImpl.java"

# interfaces
.implements Lorg/mockito/verification/VerificationStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/progress/MockingProgressImpl;->getDefaultVerificationStrategy()Lorg/mockito/verification/VerificationStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public maybeVerifyLazily(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;
    .locals 0
    .param p1, "mode"    # Lorg/mockito/verification/VerificationMode;

    .line 48
    return-object p1
.end method
