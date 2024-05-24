.class public Lorg/mockito/internal/handler/MockHandlerImpl;
.super Ljava/lang/Object;
.source "MockHandlerImpl.java"

# interfaces
.implements Lorg/mockito/invocation/MockHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mockito/invocation/MockHandler<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x287e5c478e4e1055L


# instance fields
.field invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

.field matchersBinder:Lorg/mockito/internal/invocation/MatchersBinder;

.field private final mockSettings:Lorg/mockito/mock/MockCreationSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mockito/mock/MockCreationSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lorg/mockito/internal/handler/MockHandlerImpl;, "Lorg/mockito/internal/handler/MockHandlerImpl<TT;>;"
    .local p1, "mockSettings":Lorg/mockito/mock/MockCreationSettings;, "Lorg/mockito/mock/MockCreationSettings<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lorg/mockito/internal/invocation/MatchersBinder;

    invoke-direct {v0}, Lorg/mockito/internal/invocation/MatchersBinder;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->matchersBinder:Lorg/mockito/internal/invocation/MatchersBinder;

    .line 42
    iput-object p1, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->mockSettings:Lorg/mockito/mock/MockCreationSettings;

    .line 44
    new-instance v0, Lorg/mockito/internal/invocation/MatchersBinder;

    invoke-direct {v0}, Lorg/mockito/internal/invocation/MatchersBinder;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->matchersBinder:Lorg/mockito/internal/invocation/MatchersBinder;

    .line 45
    new-instance v0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-direct {v0, p1}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;-><init>(Lorg/mockito/mock/MockCreationSettings;)V

    iput-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    .line 46
    return-void
.end method


# virtual methods
.method public getInvocationContainer()Lorg/mockito/invocation/InvocationContainer;
    .locals 1

    .line 132
    .local p0, "this":Lorg/mockito/internal/handler/MockHandlerImpl;, "Lorg/mockito/internal/handler/MockHandlerImpl<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    return-object v0
.end method

.method public getMockSettings()Lorg/mockito/mock/MockCreationSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lorg/mockito/internal/handler/MockHandlerImpl;, "Lorg/mockito/internal/handler/MockHandlerImpl<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->mockSettings:Lorg/mockito/mock/MockCreationSettings;

    return-object v0
.end method

.method public handle(Lorg/mockito/invocation/Invocation;)Ljava/lang/Object;
    .locals 6
    .param p1, "invocation"    # Lorg/mockito/invocation/Invocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 50
    .local p0, "this":Lorg/mockito/internal/handler/MockHandlerImpl;, "Lorg/mockito/internal/handler/MockHandlerImpl<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->hasAnswersForStubbing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->matchersBinder:Lorg/mockito/internal/invocation/MatchersBinder;

    .line 54
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v2

    invoke-interface {v2}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v2

    .line 53
    invoke-virtual {v0, v2, p1}, Lorg/mockito/internal/invocation/MatchersBinder;->bindMatchers(Lorg/mockito/internal/progress/ArgumentMatcherStorage;Lorg/mockito/invocation/Invocation;)Lorg/mockito/internal/invocation/InvocationMatcher;

    move-result-object v0

    .line 55
    .local v0, "invocationMatcher":Lorg/mockito/internal/invocation/InvocationMatcher;
    iget-object v2, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-virtual {v2, v0}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->setMethodForStubbing(Lorg/mockito/invocation/MatchableInvocation;)V

    .line 56
    return-object v1

    .line 58
    .end local v0    # "invocationMatcher":Lorg/mockito/internal/invocation/InvocationMatcher;
    :cond_0
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->pullVerificationMode()Lorg/mockito/verification/VerificationMode;

    move-result-object v0

    .line 60
    .local v0, "verificationMode":Lorg/mockito/verification/VerificationMode;
    iget-object v2, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->matchersBinder:Lorg/mockito/internal/invocation/MatchersBinder;

    .line 62
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v3

    invoke-interface {v3}, Lorg/mockito/internal/progress/MockingProgress;->getArgumentMatcherStorage()Lorg/mockito/internal/progress/ArgumentMatcherStorage;

    move-result-object v3

    .line 61
    invoke-virtual {v2, v3, p1}, Lorg/mockito/internal/invocation/MatchersBinder;->bindMatchers(Lorg/mockito/internal/progress/ArgumentMatcherStorage;Lorg/mockito/invocation/Invocation;)Lorg/mockito/internal/invocation/InvocationMatcher;

    move-result-object v2

    .line 64
    .local v2, "invocationMatcher":Lorg/mockito/internal/invocation/InvocationMatcher;
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v3

    invoke-interface {v3}, Lorg/mockito/internal/progress/MockingProgress;->validateState()V

    .line 67
    if-eqz v0, :cond_2

    .line 70
    move-object v3, v0

    check-cast v3, Lorg/mockito/internal/verification/MockAwareVerificationMode;

    .line 71
    invoke-virtual {v3}, Lorg/mockito/internal/verification/MockAwareVerificationMode;->getMock()Ljava/lang/Object;

    move-result-object v3

    .line 72
    invoke-interface {p1}, Lorg/mockito/invocation/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v4

    .line 70
    invoke-static {v3, v4}, Lorg/mockito/internal/util/MockUtil;->areSameMocks(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    new-instance v3, Lorg/mockito/internal/verification/VerificationDataImpl;

    iget-object v4, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-direct {v3, v4, v2}, Lorg/mockito/internal/verification/VerificationDataImpl;-><init>(Lorg/mockito/internal/stubbing/InvocationContainerImpl;Lorg/mockito/internal/invocation/InvocationMatcher;)V

    .line 75
    .local v3, "data":Lorg/mockito/internal/verification/VerificationDataImpl;
    invoke-interface {v0, v3}, Lorg/mockito/verification/VerificationMode;->verify(Lorg/mockito/internal/verification/api/VerificationData;)V

    .line 76
    return-object v1

    .line 81
    .end local v3    # "data":Lorg/mockito/internal/verification/VerificationDataImpl;
    :cond_1
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/mockito/internal/progress/MockingProgress;->verificationStarted(Lorg/mockito/verification/VerificationMode;)V

    .line 86
    :cond_2
    iget-object v1, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-virtual {v1, v2}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->setInvocationForPotentialStubbing(Lorg/mockito/invocation/MatchableInvocation;)V

    .line 87
    new-instance v1, Lorg/mockito/internal/stubbing/OngoingStubbingImpl;

    iget-object v3, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-direct {v1, v3}, Lorg/mockito/internal/stubbing/OngoingStubbingImpl;-><init>(Lorg/mockito/internal/stubbing/InvocationContainerImpl;)V

    .line 88
    .local v1, "ongoingStubbing":Lorg/mockito/internal/stubbing/OngoingStubbingImpl;, "Lorg/mockito/internal/stubbing/OngoingStubbingImpl<TT;>;"
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/mockito/internal/progress/MockingProgress;->reportOngoingStubbing(Lorg/mockito/stubbing/OngoingStubbing;)V

    .line 91
    iget-object v3, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-virtual {v3, p1}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->findAnswerFor(Lorg/mockito/invocation/Invocation;)Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;

    move-result-object v3

    .line 93
    .local v3, "stubbing":Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;
    iget-object v4, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    .line 96
    invoke-virtual {v4}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->getStubbingsAscending()Ljava/util/Collection;

    move-result-object v4

    iget-object v5, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->mockSettings:Lorg/mockito/mock/MockCreationSettings;

    check-cast v5, Lorg/mockito/internal/creation/settings/CreationSettings;

    .line 93
    invoke-static {p1, v3, v4, v5}, Lorg/mockito/internal/listeners/StubbingLookupNotifier;->notifyStubbedAnswerLookup(Lorg/mockito/invocation/Invocation;Lorg/mockito/stubbing/Stubbing;Ljava/util/Collection;Lorg/mockito/internal/creation/settings/CreationSettings;)V

    .line 99
    if-eqz v3, :cond_3

    .line 100
    invoke-virtual {v3, p1}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->captureArgumentsFrom(Lorg/mockito/invocation/Invocation;)V

    .line 103
    :try_start_0
    invoke-virtual {v3, p1}, Lorg/mockito/internal/stubbing/StubbedInvocationMatcher;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v5

    invoke-interface {v5, v1}, Lorg/mockito/internal/progress/MockingProgress;->reportOngoingStubbing(Lorg/mockito/stubbing/OngoingStubbing;)V

    .line 103
    return-object v4

    .line 107
    :catchall_0
    move-exception v4

    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v5

    invoke-interface {v5, v1}, Lorg/mockito/internal/progress/MockingProgress;->reportOngoingStubbing(Lorg/mockito/stubbing/OngoingStubbing;)V

    throw v4

    .line 110
    :cond_3
    iget-object v4, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->mockSettings:Lorg/mockito/mock/MockCreationSettings;

    invoke-interface {v4}, Lorg/mockito/mock/MockCreationSettings;->getDefaultAnswer()Lorg/mockito/stubbing/Answer;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/mockito/stubbing/Answer;->answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;

    move-result-object v4

    .line 111
    .local v4, "ret":Ljava/lang/Object;
    invoke-static {p1, v4}, Lorg/mockito/internal/stubbing/answers/DefaultAnswerValidator;->validateReturnValueFor(Lorg/mockito/invocation/InvocationOnMock;Ljava/lang/Object;)V

    .line 120
    iget-object v5, p0, Lorg/mockito/internal/handler/MockHandlerImpl;->invocationContainer:Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    invoke-virtual {v5, v2}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->resetInvocationForPotentialStubbing(Lorg/mockito/invocation/MatchableInvocation;)V

    .line 121
    return-object v4
.end method
