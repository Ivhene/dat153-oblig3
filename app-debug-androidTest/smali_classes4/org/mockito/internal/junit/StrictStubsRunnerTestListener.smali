.class public Lorg/mockito/internal/junit/StrictStubsRunnerTestListener;
.super Ljava/lang/Object;
.source "StrictStubsRunnerTestListener.java"

# interfaces
.implements Lorg/mockito/internal/junit/MockitoTestListener;


# instance fields
.field private final stubbingLookupListener:Lorg/mockito/internal/junit/DefaultStubbingLookupListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;

    sget-object v1, Lorg/mockito/quality/Strictness;->STRICT_STUBS:Lorg/mockito/quality/Strictness;

    invoke-direct {v0, v1}, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;-><init>(Lorg/mockito/quality/Strictness;)V

    iput-object v0, p0, Lorg/mockito/internal/junit/StrictStubsRunnerTestListener;->stubbingLookupListener:Lorg/mockito/internal/junit/DefaultStubbingLookupListener;

    return-void
.end method


# virtual methods
.method public onMockCreated(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 2
    .param p1, "mock"    # Ljava/lang/Object;
    .param p2, "settings"    # Lorg/mockito/mock/MockCreationSettings;

    .line 27
    invoke-interface {p2}, Lorg/mockito/mock/MockCreationSettings;->getStubbingLookupListeners()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/junit/StrictStubsRunnerTestListener;->stubbingLookupListener:Lorg/mockito/internal/junit/DefaultStubbingLookupListener;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public testFinished(Lorg/mockito/internal/junit/TestFinishedEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/mockito/internal/junit/TestFinishedEvent;

    .line 19
    return-void
.end method
