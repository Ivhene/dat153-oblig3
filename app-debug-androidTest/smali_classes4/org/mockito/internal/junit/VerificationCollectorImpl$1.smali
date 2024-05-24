.class Lorg/mockito/internal/junit/VerificationCollectorImpl$1;
.super Lorg/junit/runners/model/Statement;
.source "VerificationCollectorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/junit/VerificationCollectorImpl;->apply(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mockito/internal/junit/VerificationCollectorImpl;

.field final synthetic val$base:Lorg/junit/runners/model/Statement;


# direct methods
.method constructor <init>(Lorg/mockito/internal/junit/VerificationCollectorImpl;Lorg/junit/runners/model/Statement;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mockito/internal/junit/VerificationCollectorImpl;

    .line 32
    iput-object p1, p0, Lorg/mockito/internal/junit/VerificationCollectorImpl$1;->this$0:Lorg/mockito/internal/junit/VerificationCollectorImpl;

    iput-object p2, p0, Lorg/mockito/internal/junit/VerificationCollectorImpl$1;->val$base:Lorg/junit/runners/model/Statement;

    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/junit/VerificationCollectorImpl$1;->this$0:Lorg/mockito/internal/junit/VerificationCollectorImpl;

    invoke-virtual {v0}, Lorg/mockito/internal/junit/VerificationCollectorImpl;->assertLazily()Lorg/mockito/junit/VerificationCollector;

    .line 37
    iget-object v0, p0, Lorg/mockito/internal/junit/VerificationCollectorImpl$1;->val$base:Lorg/junit/runners/model/Statement;

    invoke-virtual {v0}, Lorg/junit/runners/model/Statement;->evaluate()V

    .line 38
    iget-object v0, p0, Lorg/mockito/internal/junit/VerificationCollectorImpl$1;->this$0:Lorg/mockito/internal/junit/VerificationCollectorImpl;

    invoke-virtual {v0}, Lorg/mockito/internal/junit/VerificationCollectorImpl;->collectAndReport()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    .line 45
    invoke-static {}, Lorg/mockito/internal/progress/MockingProgressImpl;->getDefaultVerificationStrategy()Lorg/mockito/verification/VerificationStrategy;

    move-result-object v1

    .line 44
    invoke-interface {v0, v1}, Lorg/mockito/internal/progress/MockingProgress;->setVerificationStrategy(Lorg/mockito/verification/VerificationStrategy;)V

    .line 46
    nop

    .line 47
    return-void

    .line 43
    :catchall_0
    move-exception v0

    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v1

    .line 45
    invoke-static {}, Lorg/mockito/internal/progress/MockingProgressImpl;->getDefaultVerificationStrategy()Lorg/mockito/verification/VerificationStrategy;

    move-result-object v2

    .line 44
    invoke-interface {v1, v2}, Lorg/mockito/internal/progress/MockingProgress;->setVerificationStrategy(Lorg/mockito/verification/VerificationStrategy;)V

    throw v0
.end method
