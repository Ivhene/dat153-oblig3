.class public Lorg/mockito/internal/runners/StrictRunner;
.super Ljava/lang/Object;
.source "StrictRunner.java"

# interfaces
.implements Lorg/mockito/internal/runners/InternalRunner;


# instance fields
.field private filterRequested:Z

.field private final runner:Lorg/mockito/internal/runners/InternalRunner;

.field private final testClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mockito/internal/runners/InternalRunner;Ljava/lang/Class;)V
    .locals 0
    .param p1, "runner"    # Lorg/mockito/internal/runners/InternalRunner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/runners/InternalRunner;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 25
    .local p2, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/mockito/internal/runners/StrictRunner;->runner:Lorg/mockito/internal/runners/InternalRunner;

    .line 27
    iput-object p2, p0, Lorg/mockito/internal/runners/StrictRunner;->testClass:Ljava/lang/Class;

    .line 28
    return-void
.end method


# virtual methods
.method public filter(Lorg/junit/runner/manipulation/Filter;)V
    .locals 1
    .param p1, "filter"    # Lorg/junit/runner/manipulation/Filter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/manipulation/NoTestsRemainException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mockito/internal/runners/StrictRunner;->filterRequested:Z

    .line 65
    iget-object v0, p0, Lorg/mockito/internal/runners/StrictRunner;->runner:Lorg/mockito/internal/runners/InternalRunner;

    invoke-interface {v0, p1}, Lorg/mockito/internal/runners/InternalRunner;->filter(Lorg/junit/runner/manipulation/Filter;)V

    .line 66
    return-void
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/mockito/internal/runners/StrictRunner;->runner:Lorg/mockito/internal/runners/InternalRunner;

    invoke-interface {v0}, Lorg/mockito/internal/runners/InternalRunner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    return-object v0
.end method

.method public run(Lorg/junit/runner/notification/RunNotifier;)V
    .locals 4
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .line 34
    new-instance v0, Lorg/mockito/internal/junit/UnnecessaryStubbingsReporter;

    invoke-direct {v0}, Lorg/mockito/internal/junit/UnnecessaryStubbingsReporter;-><init>()V

    .line 35
    .local v0, "reporter":Lorg/mockito/internal/junit/UnnecessaryStubbingsReporter;
    new-instance v1, Lorg/mockito/internal/runners/util/FailureDetector;

    invoke-direct {v1}, Lorg/mockito/internal/runners/util/FailureDetector;-><init>()V

    .line 37
    .local v1, "listener":Lorg/mockito/internal/runners/util/FailureDetector;
    invoke-static {}, Lorg/mockito/Mockito;->framework()Lorg/mockito/MockitoFramework;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/mockito/MockitoFramework;->addListener(Lorg/mockito/listeners/MockitoListener;)Lorg/mockito/MockitoFramework;

    .line 40
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/junit/runner/notification/RunNotifier;->addListener(Lorg/junit/runner/notification/RunListener;)V

    .line 41
    iget-object v2, p0, Lorg/mockito/internal/runners/StrictRunner;->runner:Lorg/mockito/internal/runners/InternalRunner;

    invoke-interface {v2, p1}, Lorg/mockito/internal/runners/InternalRunner;->run(Lorg/junit/runner/notification/RunNotifier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-static {}, Lorg/mockito/Mockito;->framework()Lorg/mockito/MockitoFramework;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/mockito/MockitoFramework;->removeListener(Lorg/mockito/listeners/MockitoListener;)Lorg/mockito/MockitoFramework;

    .line 44
    nop

    .line 46
    iget-boolean v2, p0, Lorg/mockito/internal/runners/StrictRunner;->filterRequested:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/mockito/internal/runners/util/FailureDetector;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    iget-object v2, p0, Lorg/mockito/internal/runners/StrictRunner;->testClass:Ljava/lang/Class;

    invoke-virtual {v0, v2, p1}, Lorg/mockito/internal/junit/UnnecessaryStubbingsReporter;->validateUnusedStubs(Ljava/lang/Class;Lorg/junit/runner/notification/RunNotifier;)V

    .line 55
    :cond_0
    return-void

    .line 43
    :catchall_0
    move-exception v2

    invoke-static {}, Lorg/mockito/Mockito;->framework()Lorg/mockito/MockitoFramework;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/mockito/MockitoFramework;->removeListener(Lorg/mockito/listeners/MockitoListener;)Lorg/mockito/MockitoFramework;

    throw v2
.end method
