.class Lorg/mockito/internal/junit/VerificationCollectorImpl$2;
.super Ljava/lang/Object;
.source "VerificationCollectorImpl.java"

# interfaces
.implements Lorg/mockito/verification/VerificationStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/junit/VerificationCollectorImpl;->assertLazily()Lorg/mockito/junit/VerificationCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/junit/VerificationCollectorImpl;


# direct methods
.method constructor <init>(Lorg/mockito/internal/junit/VerificationCollectorImpl;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mockito/internal/junit/VerificationCollectorImpl;

    .line 68
    iput-object p1, p0, Lorg/mockito/internal/junit/VerificationCollectorImpl$2;->this$0:Lorg/mockito/internal/junit/VerificationCollectorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public maybeVerifyLazily(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;
    .locals 3
    .param p1, "mode"    # Lorg/mockito/verification/VerificationMode;

    .line 71
    new-instance v0, Lorg/mockito/internal/junit/VerificationCollectorImpl$VerificationWrapper;

    iget-object v1, p0, Lorg/mockito/internal/junit/VerificationCollectorImpl$2;->this$0:Lorg/mockito/internal/junit/VerificationCollectorImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/mockito/internal/junit/VerificationCollectorImpl$VerificationWrapper;-><init>(Lorg/mockito/internal/junit/VerificationCollectorImpl;Lorg/mockito/verification/VerificationMode;Lorg/mockito/internal/junit/VerificationCollectorImpl$1;)V

    return-object v0
.end method
