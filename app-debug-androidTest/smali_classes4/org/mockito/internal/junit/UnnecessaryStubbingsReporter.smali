.class public Lorg/mockito/internal/junit/UnnecessaryStubbingsReporter;
.super Ljava/lang/Object;
.source "UnnecessaryStubbingsReporter.java"

# interfaces
.implements Lorg/mockito/listeners/MockCreationListener;


# instance fields
.field private final mocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/junit/UnnecessaryStubbingsReporter;->mocks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onMockCreated(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 1
    .param p1, "mock"    # Ljava/lang/Object;
    .param p2, "settings"    # Lorg/mockito/mock/MockCreationSettings;

    .line 44
    iget-object v0, p0, Lorg/mockito/internal/junit/UnnecessaryStubbingsReporter;->mocks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public validateUnusedStubs(Ljava/lang/Class;Lorg/junit/runner/notification/RunNotifier;)V
    .locals 4
    .param p2, "notifier"    # Lorg/junit/runner/notification/RunNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/junit/runner/notification/RunNotifier;",
            ")V"
        }
    .end annotation

    .line 27
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/mockito/internal/junit/UnusedStubbingsFinder;

    invoke-direct {v0}, Lorg/mockito/internal/junit/UnusedStubbingsFinder;-><init>()V

    iget-object v1, p0, Lorg/mockito/internal/junit/UnnecessaryStubbingsReporter;->mocks:Ljava/util/List;

    .line 28
    invoke-virtual {v0, v1}, Lorg/mockito/internal/junit/UnusedStubbingsFinder;->getUnusedStubbingsByLocation(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    .line 29
    .local v0, "unused":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    return-void

    .line 34
    :cond_0
    nop

    .line 35
    const-string v1, "unnecessary Mockito stubbings"

    invoke-static {p1, v1}, Lorg/junit/runner/Description;->createTestDescription(Ljava/lang/Class;Ljava/lang/String;)Lorg/junit/runner/Description;

    move-result-object v1

    .line 36
    .local v1, "unnecessaryStubbings":Lorg/junit/runner/Description;
    new-instance v2, Lorg/junit/runner/notification/Failure;

    .line 39
    invoke-static {p1, v0}, Lorg/mockito/internal/exceptions/Reporter;->formatUnncessaryStubbingException(Ljava/lang/Class;Ljava/util/Collection;)Lorg/mockito/exceptions/misusing/UnnecessaryStubbingException;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    .line 36
    invoke-virtual {p2, v2}, Lorg/junit/runner/notification/RunNotifier;->fireTestFailure(Lorg/junit/runner/notification/Failure;)V

    .line 40
    return-void
.end method
