.class Lorg/mockito/internal/runners/DefaultInternalRunner$1$2;
.super Lorg/junit/runner/notification/RunListener;
.source "DefaultInternalRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mockito/internal/runners/DefaultInternalRunner$1;->run(Lorg/junit/runner/notification/RunNotifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field failure:Ljava/lang/Throwable;

.field final synthetic this$1:Lorg/mockito/internal/runners/DefaultInternalRunner$1;

.field final synthetic val$notifier:Lorg/junit/runner/notification/RunNotifier;


# direct methods
.method constructor <init>(Lorg/mockito/internal/runners/DefaultInternalRunner$1;Lorg/junit/runner/notification/RunNotifier;)V
    .locals 0
    .param p1, "this$1"    # Lorg/mockito/internal/runners/DefaultInternalRunner$1;

    .line 67
    iput-object p1, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1$2;->this$1:Lorg/mockito/internal/runners/DefaultInternalRunner$1;

    iput-object p2, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1$2;->val$notifier:Lorg/junit/runner/notification/RunNotifier;

    invoke-direct {p0}, Lorg/junit/runner/notification/RunListener;-><init>()V

    return-void
.end method


# virtual methods
.method public testFailure(Lorg/junit/runner/notification/Failure;)V
    .locals 1
    .param p1, "failure"    # Lorg/junit/runner/notification/Failure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getException()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1$2;->failure:Ljava/lang/Throwable;

    .line 73
    return-void
.end method

.method public testFinished(Lorg/junit/runner/Description;)V
    .locals 5
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1$2;->this$1:Lorg/mockito/internal/runners/DefaultInternalRunner$1;

    invoke-static {v0}, Lorg/mockito/internal/runners/DefaultInternalRunner$1;->access$000(Lorg/mockito/internal/runners/DefaultInternalRunner$1;)Lorg/mockito/internal/junit/MockitoTestListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lorg/mockito/Mockito;->framework()Lorg/mockito/MockitoFramework;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1$2;->this$1:Lorg/mockito/internal/runners/DefaultInternalRunner$1;

    .line 81
    invoke-static {v1}, Lorg/mockito/internal/runners/DefaultInternalRunner$1;->access$000(Lorg/mockito/internal/runners/DefaultInternalRunner$1;)Lorg/mockito/internal/junit/MockitoTestListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mockito/MockitoFramework;->removeListener(Lorg/mockito/listeners/MockitoListener;)Lorg/mockito/MockitoFramework;

    .line 82
    iget-object v0, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1$2;->this$1:Lorg/mockito/internal/runners/DefaultInternalRunner$1;

    invoke-static {v0}, Lorg/mockito/internal/runners/DefaultInternalRunner$1;->access$000(Lorg/mockito/internal/runners/DefaultInternalRunner$1;)Lorg/mockito/internal/junit/MockitoTestListener;

    move-result-object v0

    new-instance v1, Lorg/mockito/internal/junit/DefaultTestFinishedEvent;

    iget-object v2, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1$2;->this$1:Lorg/mockito/internal/runners/DefaultInternalRunner$1;

    iget-object v2, v2, Lorg/mockito/internal/runners/DefaultInternalRunner$1;->target:Ljava/lang/Object;

    .line 85
    invoke-virtual {p1}, Lorg/junit/runner/Description;->getMethodName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1$2;->failure:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3, v4}, Lorg/mockito/internal/junit/DefaultTestFinishedEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    invoke-interface {v0, v1}, Lorg/mockito/internal/junit/MockitoTestListener;->testFinished(Lorg/mockito/internal/junit/TestFinishedEvent;)V

    .line 87
    iget-object v0, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1$2;->this$1:Lorg/mockito/internal/runners/DefaultInternalRunner$1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/mockito/internal/runners/DefaultInternalRunner$1;->access$002(Lorg/mockito/internal/runners/DefaultInternalRunner$1;Lorg/mockito/internal/junit/MockitoTestListener;)Lorg/mockito/internal/junit/MockitoTestListener;

    .line 89
    :cond_0
    invoke-static {}, Lorg/mockito/Mockito;->validateMockitoUsage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    .line 95
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/mockito/internal/runners/DefaultInternalRunner$1$2;->val$notifier:Lorg/junit/runner/notification/RunNotifier;

    new-instance v2, Lorg/junit/runner/notification/Failure;

    invoke-direct {v2, p1, v0}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lorg/junit/runner/notification/RunNotifier;->fireTestFailure(Lorg/junit/runner/notification/Failure;)V

    .line 97
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
