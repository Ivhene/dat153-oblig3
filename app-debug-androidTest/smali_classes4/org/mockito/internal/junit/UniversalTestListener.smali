.class public Lorg/mockito/internal/junit/UniversalTestListener;
.super Ljava/lang/Object;
.source "UniversalTestListener.java"

# interfaces
.implements Lorg/mockito/internal/junit/MockitoTestListener;
.implements Lorg/mockito/internal/listeners/AutoCleanableListener;


# instance fields
.field private currentStrictness:Lorg/mockito/quality/Strictness;

.field private listenerDirty:Z

.field private final logger:Lorg/mockito/plugins/MockitoLogger;

.field private mocks:Ljava/util/IdentityHashMap;

.field private final stubbingLookupListener:Lorg/mockito/internal/junit/DefaultStubbingLookupListener;


# direct methods
.method public constructor <init>(Lorg/mockito/quality/Strictness;Lorg/mockito/plugins/MockitoLogger;)V
    .locals 2
    .param p1, "initialStrictness"    # Lorg/mockito/quality/Strictness;
    .param p2, "logger"    # Lorg/mockito/plugins/MockitoLogger;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/junit/UniversalTestListener;->mocks:Ljava/util/IdentityHashMap;

    .line 30
    iput-object p1, p0, Lorg/mockito/internal/junit/UniversalTestListener;->currentStrictness:Lorg/mockito/quality/Strictness;

    .line 31
    iput-object p2, p0, Lorg/mockito/internal/junit/UniversalTestListener;->logger:Lorg/mockito/plugins/MockitoLogger;

    .line 36
    new-instance v0, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;

    iget-object v1, p0, Lorg/mockito/internal/junit/UniversalTestListener;->currentStrictness:Lorg/mockito/quality/Strictness;

    invoke-direct {v0, v1}, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;-><init>(Lorg/mockito/quality/Strictness;)V

    iput-object v0, p0, Lorg/mockito/internal/junit/UniversalTestListener;->stubbingLookupListener:Lorg/mockito/internal/junit/DefaultStubbingLookupListener;

    .line 37
    return-void
.end method

.method private static emitWarnings(Lorg/mockito/plugins/MockitoLogger;Lorg/mockito/internal/junit/TestFinishedEvent;Ljava/util/Collection;)V
    .locals 2
    .param p0, "logger"    # Lorg/mockito/plugins/MockitoLogger;
    .param p1, "event"    # Lorg/mockito/internal/junit/TestFinishedEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/plugins/MockitoLogger;",
            "Lorg/mockito/internal/junit/TestFinishedEvent;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 74
    .local p2, "mocks":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-interface {p1}, Lorg/mockito/internal/junit/TestFinishedEvent;->getFailure()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lorg/mockito/internal/junit/ArgMismatchFinder;

    invoke-direct {v0}, Lorg/mockito/internal/junit/ArgMismatchFinder;-><init>()V

    .line 78
    invoke-virtual {v0, p2}, Lorg/mockito/internal/junit/ArgMismatchFinder;->getStubbingArgMismatches(Ljava/lang/Iterable;)Lorg/mockito/internal/junit/StubbingArgMismatches;

    move-result-object v0

    .line 79
    invoke-interface {p1}, Lorg/mockito/internal/junit/TestFinishedEvent;->getTestName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lorg/mockito/internal/junit/StubbingArgMismatches;->format(Ljava/lang/String;Lorg/mockito/plugins/MockitoLogger;)V

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Lorg/mockito/internal/junit/UnusedStubbingsFinder;

    invoke-direct {v0}, Lorg/mockito/internal/junit/UnusedStubbingsFinder;-><init>()V

    .line 84
    invoke-virtual {v0, p2}, Lorg/mockito/internal/junit/UnusedStubbingsFinder;->getUnusedStubbings(Ljava/lang/Iterable;)Lorg/mockito/internal/junit/UnusedStubbings;

    move-result-object v0

    .line 85
    invoke-interface {p1}, Lorg/mockito/internal/junit/TestFinishedEvent;->getTestName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lorg/mockito/internal/junit/UnusedStubbings;->format(Ljava/lang/String;Lorg/mockito/plugins/MockitoLogger;)V

    .line 87
    :goto_0
    return-void
.end method

.method private reportUnusedStubs(Lorg/mockito/internal/junit/TestFinishedEvent;Ljava/util/Collection;)V
    .locals 1
    .param p1, "event"    # Lorg/mockito/internal/junit/TestFinishedEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/junit/TestFinishedEvent;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p2, "mocks":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-interface {p1}, Lorg/mockito/internal/junit/TestFinishedEvent;->getFailure()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mockito/internal/junit/UniversalTestListener;->stubbingLookupListener:Lorg/mockito/internal/junit/DefaultStubbingLookupListener;

    invoke-virtual {v0}, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;->isMismatchesReported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lorg/mockito/internal/junit/UnusedStubbingsFinder;

    invoke-direct {v0}, Lorg/mockito/internal/junit/UnusedStubbingsFinder;-><init>()V

    invoke-virtual {v0, p2}, Lorg/mockito/internal/junit/UnusedStubbingsFinder;->getUnusedStubbings(Ljava/lang/Iterable;)Lorg/mockito/internal/junit/UnusedStubbings;

    move-result-object v0

    .line 68
    .local v0, "unused":Lorg/mockito/internal/junit/UnusedStubbings;
    invoke-virtual {v0}, Lorg/mockito/internal/junit/UnusedStubbings;->reportUnused()V

    .line 70
    .end local v0    # "unused":Lorg/mockito/internal/junit/UnusedStubbings;
    :cond_0
    return-void
.end method


# virtual methods
.method public isListenerDirty()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lorg/mockito/internal/junit/UniversalTestListener;->listenerDirty:Z

    return v0
.end method

.method public onMockCreated(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 2
    .param p1, "mock"    # Ljava/lang/Object;
    .param p2, "settings"    # Lorg/mockito/mock/MockCreationSettings;

    .line 91
    iget-object v0, p0, Lorg/mockito/internal/junit/UniversalTestListener;->mocks:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    move-object v0, p2

    check-cast v0, Lorg/mockito/internal/creation/settings/CreationSettings;

    invoke-virtual {v0}, Lorg/mockito/internal/creation/settings/CreationSettings;->getStubbingLookupListeners()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/mockito/internal/junit/UniversalTestListener;->stubbingLookupListener:Lorg/mockito/internal/junit/DefaultStubbingLookupListener;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public setListenerDirty()V
    .locals 1

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mockito/internal/junit/UniversalTestListener;->listenerDirty:Z

    .line 119
    return-void
.end method

.method public setStrictness(Lorg/mockito/quality/Strictness;)V
    .locals 1
    .param p1, "strictness"    # Lorg/mockito/quality/Strictness;

    .line 102
    iput-object p1, p0, Lorg/mockito/internal/junit/UniversalTestListener;->currentStrictness:Lorg/mockito/quality/Strictness;

    .line 103
    iget-object v0, p0, Lorg/mockito/internal/junit/UniversalTestListener;->stubbingLookupListener:Lorg/mockito/internal/junit/DefaultStubbingLookupListener;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/junit/DefaultStubbingLookupListener;->setCurrentStrictness(Lorg/mockito/quality/Strictness;)V

    .line 104
    return-void
.end method

.method public testFinished(Lorg/mockito/internal/junit/TestFinishedEvent;)V
    .locals 4
    .param p1, "event"    # Lorg/mockito/internal/junit/TestFinishedEvent;

    .line 41
    iget-object v0, p0, Lorg/mockito/internal/junit/UniversalTestListener;->mocks:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 47
    .local v0, "createdMocks":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v1, p0, Lorg/mockito/internal/junit/UniversalTestListener;->mocks:Ljava/util/IdentityHashMap;

    .line 49
    sget-object v1, Lorg/mockito/internal/junit/UniversalTestListener$1;->$SwitchMap$org$mockito$quality$Strictness:[I

    iget-object v2, p0, Lorg/mockito/internal/junit/UniversalTestListener;->currentStrictness:Lorg/mockito/quality/Strictness;

    invoke-virtual {v2}, Lorg/mockito/quality/Strictness;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 59
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown strictness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/mockito/internal/junit/UniversalTestListener;->currentStrictness:Lorg/mockito/quality/Strictness;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :pswitch_0
    goto :goto_0

    .line 54
    :pswitch_1
    invoke-direct {p0, p1, v0}, Lorg/mockito/internal/junit/UniversalTestListener;->reportUnusedStubs(Lorg/mockito/internal/junit/TestFinishedEvent;Ljava/util/Collection;)V

    .line 55
    goto :goto_0

    .line 51
    :pswitch_2
    iget-object v1, p0, Lorg/mockito/internal/junit/UniversalTestListener;->logger:Lorg/mockito/plugins/MockitoLogger;

    invoke-static {v1, p1, v0}, Lorg/mockito/internal/junit/UniversalTestListener;->emitWarnings(Lorg/mockito/plugins/MockitoLogger;Lorg/mockito/internal/junit/TestFinishedEvent;Ljava/util/Collection;)V

    .line 52
    nop

    .line 61
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
