.class Lorg/mockito/internal/junit/VerificationCollectorImpl$VerificationWrapper;
.super Ljava/lang/Object;
.source "VerificationCollectorImpl.java"

# interfaces
.implements Lorg/mockito/verification/VerificationMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/junit/VerificationCollectorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerificationWrapper"
.end annotation


# instance fields
.field private final delegate:Lorg/mockito/verification/VerificationMode;

.field final synthetic this$0:Lorg/mockito/internal/junit/VerificationCollectorImpl;


# direct methods
.method private constructor <init>(Lorg/mockito/internal/junit/VerificationCollectorImpl;Lorg/mockito/verification/VerificationMode;)V
    .locals 0
    .param p2, "delegate"    # Lorg/mockito/verification/VerificationMode;

    .line 96
    iput-object p1, p0, Lorg/mockito/internal/junit/VerificationCollectorImpl$VerificationWrapper;->this$0:Lorg/mockito/internal/junit/VerificationCollectorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p2, p0, Lorg/mockito/internal/junit/VerificationCollectorImpl$VerificationWrapper;->delegate:Lorg/mockito/verification/VerificationMode;

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Lorg/mockito/internal/junit/VerificationCollectorImpl;Lorg/mockito/verification/VerificationMode;Lorg/mockito/internal/junit/VerificationCollectorImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/mockito/internal/junit/VerificationCollectorImpl;
    .param p2, "x1"    # Lorg/mockito/verification/VerificationMode;
    .param p3, "x2"    # Lorg/mockito/internal/junit/VerificationCollectorImpl$1;

    .line 92
    invoke-direct {p0, p1, p2}, Lorg/mockito/internal/junit/VerificationCollectorImpl$VerificationWrapper;-><init>(Lorg/mockito/internal/junit/VerificationCollectorImpl;Lorg/mockito/verification/VerificationMode;)V

    return-void
.end method


# virtual methods
.method public description(Ljava/lang/String;)Lorg/mockito/verification/VerificationMode;
    .locals 2
    .param p1, "description"    # Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not fail in this mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verify(Lorg/mockito/internal/verification/api/VerificationData;)V
    .locals 3
    .param p1, "data"    # Lorg/mockito/internal/verification/api/VerificationData;

    .line 103
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/junit/VerificationCollectorImpl$VerificationWrapper;->delegate:Lorg/mockito/verification/VerificationMode;

    invoke-interface {v0, p1}, Lorg/mockito/verification/VerificationMode;->verify(Lorg/mockito/internal/verification/api/VerificationData;)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "error":Ljava/lang/AssertionError;
    iget-object v1, p0, Lorg/mockito/internal/junit/VerificationCollectorImpl$VerificationWrapper;->this$0:Lorg/mockito/internal/junit/VerificationCollectorImpl;

    invoke-virtual {v0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/mockito/internal/junit/VerificationCollectorImpl;->access$100(Lorg/mockito/internal/junit/VerificationCollectorImpl;Ljava/lang/String;)V

    .line 107
    .end local v0    # "error":Ljava/lang/AssertionError;
    :goto_0
    return-void
.end method
