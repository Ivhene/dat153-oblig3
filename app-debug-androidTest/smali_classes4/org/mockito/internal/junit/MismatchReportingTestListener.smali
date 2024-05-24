.class public Lorg/mockito/internal/junit/MismatchReportingTestListener;
.super Ljava/lang/Object;
.source "MismatchReportingTestListener.java"

# interfaces
.implements Lorg/mockito/internal/junit/MockitoTestListener;


# instance fields
.field private final logger:Lorg/mockito/plugins/MockitoLogger;

.field private mocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mockito/plugins/MockitoLogger;)V
    .locals 1
    .param p1, "logger"    # Lorg/mockito/plugins/MockitoLogger;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/junit/MismatchReportingTestListener;->mocks:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lorg/mockito/internal/junit/MismatchReportingTestListener;->logger:Lorg/mockito/plugins/MockitoLogger;

    .line 24
    return-void
.end method


# virtual methods
.method public onMockCreated(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 1
    .param p1, "mock"    # Ljava/lang/Object;
    .param p2, "settings"    # Lorg/mockito/mock/MockCreationSettings;

    .line 46
    iget-object v0, p0, Lorg/mockito/internal/junit/MismatchReportingTestListener;->mocks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public testFinished(Lorg/mockito/internal/junit/TestFinishedEvent;)V
    .locals 4
    .param p1, "event"    # Lorg/mockito/internal/junit/TestFinishedEvent;

    .line 28
    iget-object v0, p0, Lorg/mockito/internal/junit/MismatchReportingTestListener;->mocks:Ljava/util/List;

    .line 33
    .local v0, "createdMocks":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/mockito/internal/junit/MismatchReportingTestListener;->mocks:Ljava/util/List;

    .line 35
    invoke-interface {p1}, Lorg/mockito/internal/junit/TestFinishedEvent;->getFailure()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 38
    new-instance v1, Lorg/mockito/internal/junit/ArgMismatchFinder;

    invoke-direct {v1}, Lorg/mockito/internal/junit/ArgMismatchFinder;-><init>()V

    .line 39
    invoke-virtual {v1, v0}, Lorg/mockito/internal/junit/ArgMismatchFinder;->getStubbingArgMismatches(Ljava/lang/Iterable;)Lorg/mockito/internal/junit/StubbingArgMismatches;

    move-result-object v1

    .line 40
    invoke-interface {p1}, Lorg/mockito/internal/junit/TestFinishedEvent;->getTestName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mockito/internal/junit/MismatchReportingTestListener;->logger:Lorg/mockito/plugins/MockitoLogger;

    invoke-virtual {v1, v2, v3}, Lorg/mockito/internal/junit/StubbingArgMismatches;->format(Ljava/lang/String;Lorg/mockito/plugins/MockitoLogger;)V

    .line 42
    :cond_0
    return-void
.end method
