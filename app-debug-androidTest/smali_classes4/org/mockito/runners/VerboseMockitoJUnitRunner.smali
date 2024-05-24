.class public Lorg/mockito/runners/VerboseMockitoJUnitRunner;
.super Lorg/junit/runner/Runner;
.source "VerboseMockitoJUnitRunner.java"

# interfaces
.implements Lorg/junit/runner/manipulation/Filterable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final runner:Lorg/mockito/internal/runners/InternalRunner;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 34
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/mockito/internal/runners/RunnerFactory;

    invoke-direct {v0}, Lorg/mockito/internal/runners/RunnerFactory;-><init>()V

    invoke-virtual {v0, p1}, Lorg/mockito/internal/runners/RunnerFactory;->create(Ljava/lang/Class;)Lorg/mockito/internal/runners/InternalRunner;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mockito/runners/VerboseMockitoJUnitRunner;-><init>(Lorg/mockito/internal/runners/InternalRunner;)V

    .line 35
    return-void
.end method

.method constructor <init>(Lorg/mockito/internal/runners/InternalRunner;)V
    .locals 0
    .param p1, "runner"    # Lorg/mockito/internal/runners/InternalRunner;

    .line 37
    invoke-direct {p0}, Lorg/junit/runner/Runner;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/mockito/runners/VerboseMockitoJUnitRunner;->runner:Lorg/mockito/internal/runners/InternalRunner;

    .line 39
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

    .line 76
    iget-object v0, p0, Lorg/mockito/runners/VerboseMockitoJUnitRunner;->runner:Lorg/mockito/internal/runners/InternalRunner;

    invoke-interface {v0, p1}, Lorg/mockito/internal/runners/InternalRunner;->filter(Lorg/junit/runner/manipulation/Filter;)V

    .line 77
    return-void
.end method

.method public getDescription()Lorg/junit/runner/Description;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/mockito/runners/VerboseMockitoJUnitRunner;->runner:Lorg/mockito/internal/runners/InternalRunner;

    invoke-interface {v0}, Lorg/mockito/internal/runners/InternalRunner;->getDescription()Lorg/junit/runner/Description;

    move-result-object v0

    return-object v0
.end method

.method public run(Lorg/junit/runner/notification/RunNotifier;)V
    .locals 2
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .line 45
    new-instance v0, Lorg/mockito/runners/VerboseMockitoJUnitRunner$1;

    invoke-direct {v0, p0}, Lorg/mockito/runners/VerboseMockitoJUnitRunner$1;-><init>(Lorg/mockito/runners/VerboseMockitoJUnitRunner;)V

    .line 63
    .local v0, "listener":Lorg/junit/runner/notification/RunListener;
    invoke-virtual {p1, v0}, Lorg/junit/runner/notification/RunNotifier;->addFirstListener(Lorg/junit/runner/notification/RunListener;)V

    .line 65
    iget-object v1, p0, Lorg/mockito/runners/VerboseMockitoJUnitRunner;->runner:Lorg/mockito/internal/runners/InternalRunner;

    invoke-interface {v1, p1}, Lorg/mockito/internal/runners/InternalRunner;->run(Lorg/junit/runner/notification/RunNotifier;)V

    .line 66
    return-void
.end method
