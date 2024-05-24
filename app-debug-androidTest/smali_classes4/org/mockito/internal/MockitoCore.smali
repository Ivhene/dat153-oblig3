.class public Lorg/mockito/internal/MockitoCore;
.super Ljava/lang/Object;
.source "MockitoCore.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private assertMocksNotEmpty([Ljava/lang/Object;)V
    .locals 1
    .param p1, "mocks"    # [Ljava/lang/Object;

    .line 231
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 234
    return-void

    .line 232
    :cond_0
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->mocksHaveToBePassedToVerifyNoMoreInteractions()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0
.end method

.method private assertNotStubOnlyMock(Ljava/lang/Object;)V
    .locals 1
    .param p1, "mock"    # Ljava/lang/Object;

    .line 237
    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->getMockHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/invocation/MockHandler;->getMockSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/mock/MockCreationSettings;->isStubOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    return-void

    .line 238
    :cond_0
    invoke-static {p1}, Lorg/mockito/internal/exceptions/Reporter;->stubPassedToVerify(Ljava/lang/Object;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0
.end method

.method static synthetic lambda$mockConstruction$0(Ljava/util/function/Function;Ljava/lang/Class;Lorg/mockito/MockedConstruction$Context;)Lorg/mockito/mock/MockCreationSettings;
    .locals 4
    .param p0, "settingsFactory"    # Ljava/util/function/Function;
    .param p1, "typeToMock"    # Ljava/lang/Class;
    .param p2, "context"    # Lorg/mockito/MockedConstruction$Context;

    .line 111
    invoke-interface {p0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/MockSettings;

    .line 112
    .local v0, "value":Lorg/mockito/MockSettings;
    const-class v1, Lorg/mockito/internal/creation/MockSettingsImpl;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const-class v1, Lorg/mockito/internal/creation/MockSettingsImpl;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/internal/creation/MockSettingsImpl;

    .line 120
    .local v1, "impl":Lorg/mockito/internal/creation/MockSettingsImpl;
    invoke-virtual {v1, p1}, Lorg/mockito/internal/creation/MockSettingsImpl;->build(Ljava/lang/Class;)Lorg/mockito/mock/MockCreationSettings;

    move-result-object v2

    return-object v2

    .line 113
    .end local v1    # "impl":Lorg/mockito/internal/creation/MockSettingsImpl;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected implementation of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'\nAt the moment, you cannot provide your own implementations of that class."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public clearAllCaches()V
    .locals 0

    .line 307
    invoke-static {}, Lorg/mockito/internal/util/MockUtil;->clearAllCaches()V

    .line 308
    return-void
.end method

.method public varargs clearInvocations([Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    .line 176
    .local p1, "mocks":[Ljava/lang/Object;, "[TT;"
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    .line 177
    .local v0, "mockingProgress":Lorg/mockito/internal/progress/MockingProgress;
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->validateState()V

    .line 178
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->reset()V

    .line 179
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->resetOngoingStubbing()V

    .line 181
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 182
    .local v3, "m":Ljava/lang/Object;, "TT;"
    invoke-static {v3}, Lorg/mockito/internal/util/MockUtil;->getInvocationContainer(Ljava/lang/Object;)Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->clearInvocations()V

    .line 181
    .end local v3    # "m":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    :cond_0
    return-void
.end method

.method public getLastInvocation()Lorg/mockito/invocation/Invocation;
    .locals 3

    .line 280
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->pullOngoingStubbing()Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v0

    check-cast v0, Lorg/mockito/internal/stubbing/OngoingStubbingImpl;

    .line 281
    .local v0, "ongoingStubbing":Lorg/mockito/internal/stubbing/OngoingStubbingImpl;
    invoke-virtual {v0}, Lorg/mockito/internal/stubbing/OngoingStubbingImpl;->getRegisteredInvocations()Ljava/util/List;

    move-result-object v1

    .line 282
    .local v1, "allInvocations":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/invocation/Invocation;

    return-object v2
.end method

.method public varargs ignoreStubs([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8
    .param p1, "mocks"    # [Ljava/lang/Object;

    .line 286
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 287
    .local v2, "m":Ljava/lang/Object;
    invoke-static {v2}, Lorg/mockito/internal/util/MockUtil;->getInvocationContainer(Ljava/lang/Object;)Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    move-result-object v3

    .line 288
    .local v3, "container":Lorg/mockito/internal/stubbing/InvocationContainerImpl;
    invoke-virtual {v3}, Lorg/mockito/internal/stubbing/InvocationContainerImpl;->getInvocations()Ljava/util/List;

    move-result-object v4

    .line 289
    .local v4, "ins":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mockito/invocation/Invocation;

    .line 290
    .local v6, "in":Lorg/mockito/invocation/Invocation;
    invoke-interface {v6}, Lorg/mockito/invocation/Invocation;->stubInfo()Lorg/mockito/invocation/StubInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 291
    invoke-interface {v6}, Lorg/mockito/invocation/Invocation;->ignoreForVerification()V

    .line 293
    .end local v6    # "in":Lorg/mockito/invocation/Invocation;
    :cond_0
    goto :goto_1

    .line 286
    .end local v2    # "m":Ljava/lang/Object;
    .end local v3    # "container":Lorg/mockito/internal/stubbing/InvocationContainerImpl;
    .end local v4    # "ins":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/invocation/Invocation;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    :cond_2
    return-object p1
.end method

.method public varargs inOrder([Ljava/lang/Object;)Lorg/mockito/InOrder;
    .locals 4
    .param p1, "mocks"    # [Ljava/lang/Object;

    .line 243
    if-eqz p1, :cond_3

    array-length v0, p1

    if-eqz v0, :cond_3

    .line 246
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 247
    .local v2, "mock":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 250
    invoke-static {v2}, Lorg/mockito/internal/util/MockUtil;->isMock(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 253
    invoke-direct {p0, v2}, Lorg/mockito/internal/MockitoCore;->assertNotStubOnlyMock(Ljava/lang/Object;)V

    .line 246
    .end local v2    # "mock":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    .restart local v2    # "mock":Ljava/lang/Object;
    :cond_0
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->notAMockPassedWhenCreatingInOrder()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0

    .line 248
    :cond_1
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->nullPassedWhenCreatingInOrder()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0

    .line 255
    .end local v2    # "mock":Ljava/lang/Object;
    :cond_2
    new-instance v0, Lorg/mockito/internal/InOrderImpl;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/internal/InOrderImpl;-><init>(Ljava/util/List;)V

    return-object v0

    .line 244
    :cond_3
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->mocksHaveToBePassedWhenCreatingInOrder()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0
.end method

.method public isTypeMockable(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 71
    .local p1, "typeToMock":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->typeMockabilityOf(Ljava/lang/Class;)Lorg/mockito/plugins/MockMaker$TypeMockability;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/plugins/MockMaker$TypeMockability;->mockable()Z

    move-result v0

    return v0
.end method

.method public lenient()Lorg/mockito/stubbing/LenientStubber;
    .locals 1

    .line 303
    new-instance v0, Lorg/mockito/internal/stubbing/DefaultLenientStubber;

    invoke-direct {v0}, Lorg/mockito/internal/stubbing/DefaultLenientStubber;-><init>()V

    return-object v0
.end method

.method public mock(Ljava/lang/Class;Lorg/mockito/MockSettings;)Ljava/lang/Object;
    .locals 4
    .param p2, "settings"    # Lorg/mockito/MockSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/mockito/MockSettings;",
            ")TT;"
        }
    .end annotation

    .line 75
    .local p1, "typeToMock":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    instance-of v0, p2, Lorg/mockito/internal/creation/MockSettingsImpl;

    if-eqz v0, :cond_0

    .line 82
    move-object v0, p2

    check-cast v0, Lorg/mockito/internal/creation/MockSettingsImpl;

    .line 83
    .local v0, "impl":Lorg/mockito/internal/creation/MockSettingsImpl;
    invoke-virtual {v0, p1}, Lorg/mockito/internal/creation/MockSettingsImpl;->build(Ljava/lang/Class;)Lorg/mockito/mock/MockCreationSettings;

    move-result-object v1

    .line 84
    .local v1, "creationSettings":Lorg/mockito/mock/MockCreationSettings;, "Lorg/mockito/mock/MockCreationSettings<TT;>;"
    invoke-static {v1}, Lorg/mockito/internal/util/MockUtil;->createMock(Lorg/mockito/mock/MockCreationSettings;)Ljava/lang/Object;

    move-result-object v2

    .line 85
    .local v2, "mock":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lorg/mockito/internal/progress/MockingProgress;->mockingStarted(Ljava/lang/Object;Lorg/mockito/mock/MockCreationSettings;)V

    .line 86
    return-object v2

    .line 76
    .end local v0    # "impl":Lorg/mockito/internal/creation/MockSettingsImpl;
    .end local v1    # "creationSettings":Lorg/mockito/mock/MockCreationSettings;, "Lorg/mockito/mock/MockCreationSettings<TT;>;"
    .end local v2    # "mock":Ljava/lang/Object;, "TT;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected implementation of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 78
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'\nAt the moment, you cannot provide your own implementations of that class."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mockConstruction(Ljava/lang/Class;Ljava/util/function/Function;Lorg/mockito/MockedConstruction$MockInitializer;)Lorg/mockito/MockedConstruction;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "Lorg/mockito/MockedConstruction$Context;",
            "+",
            "Lorg/mockito/MockSettings;",
            ">;",
            "Lorg/mockito/MockedConstruction$MockInitializer<",
            "TT;>;)",
            "Lorg/mockito/MockedConstruction<",
            "TT;>;"
        }
    .end annotation

    .line 109
    .local p1, "typeToMock":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "settingsFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/mockito/MockedConstruction$Context;+Lorg/mockito/MockSettings;>;"
    .local p3, "mockInitializer":Lorg/mockito/MockedConstruction$MockInitializer;, "Lorg/mockito/MockedConstruction$MockInitializer<TT;>;"
    new-instance v0, Lorg/mockito/internal/MockitoCore$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Lorg/mockito/internal/MockitoCore$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Function;Ljava/lang/Class;)V

    .line 122
    .local v0, "creationSettings":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/mockito/MockedConstruction$Context;Lorg/mockito/mock/MockCreationSettings<TT;>;>;"
    nop

    .line 123
    invoke-static {p1, v0, p3}, Lorg/mockito/internal/util/MockUtil;->createConstructionMock(Ljava/lang/Class;Ljava/util/function/Function;Lorg/mockito/MockedConstruction$MockInitializer;)Lorg/mockito/plugins/MockMaker$ConstructionMockControl;

    move-result-object v1

    .line 124
    .local v1, "control":Lorg/mockito/plugins/MockMaker$ConstructionMockControl;, "Lorg/mockito/plugins/MockMaker$ConstructionMockControl<TT;>;"
    invoke-interface {v1}, Lorg/mockito/plugins/MockMaker$ConstructionMockControl;->enable()V

    .line 125
    new-instance v2, Lorg/mockito/internal/MockedConstructionImpl;

    invoke-direct {v2, v1}, Lorg/mockito/internal/MockedConstructionImpl;-><init>(Lorg/mockito/plugins/MockMaker$ConstructionMockControl;)V

    return-object v2
.end method

.method public mockStatic(Ljava/lang/Class;Lorg/mockito/MockSettings;)Lorg/mockito/MockedStatic;
    .locals 4
    .param p2, "settings"    # Lorg/mockito/MockSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/mockito/MockSettings;",
            ")",
            "Lorg/mockito/MockedStatic<",
            "TT;>;"
        }
    .end annotation

    .line 90
    .local p1, "classToMock":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lorg/mockito/internal/creation/MockSettingsImpl;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-class v0, Lorg/mockito/internal/creation/MockSettingsImpl;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/internal/creation/MockSettingsImpl;

    .line 98
    .local v0, "impl":Lorg/mockito/internal/creation/MockSettingsImpl;
    invoke-virtual {v0, p1}, Lorg/mockito/internal/creation/MockSettingsImpl;->buildStatic(Ljava/lang/Class;)Lorg/mockito/mock/MockCreationSettings;

    move-result-object v1

    .line 99
    .local v1, "creationSettings":Lorg/mockito/mock/MockCreationSettings;, "Lorg/mockito/mock/MockCreationSettings<TT;>;"
    invoke-static {p1, v1}, Lorg/mockito/internal/util/MockUtil;->createStaticMock(Ljava/lang/Class;Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/plugins/MockMaker$StaticMockControl;

    move-result-object v2

    .line 100
    .local v2, "control":Lorg/mockito/plugins/MockMaker$StaticMockControl;, "Lorg/mockito/plugins/MockMaker$StaticMockControl<TT;>;"
    invoke-interface {v2}, Lorg/mockito/plugins/MockMaker$StaticMockControl;->enable()V

    .line 101
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v3

    invoke-interface {v3, p1, v1}, Lorg/mockito/internal/progress/MockingProgress;->mockingStarted(Ljava/lang/Class;Lorg/mockito/mock/MockCreationSettings;)V

    .line 102
    new-instance v3, Lorg/mockito/internal/MockedStaticImpl;

    invoke-direct {v3, v2}, Lorg/mockito/internal/MockedStaticImpl;-><init>(Lorg/mockito/plugins/MockMaker$StaticMockControl;)V

    return-object v3

    .line 91
    .end local v0    # "impl":Lorg/mockito/internal/creation/MockSettingsImpl;
    .end local v1    # "creationSettings":Lorg/mockito/mock/MockCreationSettings;, "Lorg/mockito/mock/MockCreationSettings<TT;>;"
    .end local v2    # "control":Lorg/mockito/plugins/MockMaker$StaticMockControl;, "Lorg/mockito/plugins/MockMaker$StaticMockControl<TT;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected implementation of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 93
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'\nAt the moment, you cannot provide your own implementations of that class."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mockingDetails(Ljava/lang/Object;)Lorg/mockito/MockingDetails;
    .locals 1
    .param p1, "toInspect"    # Ljava/lang/Object;

    .line 299
    new-instance v0, Lorg/mockito/internal/util/DefaultMockingDetails;

    invoke-direct {v0, p1}, Lorg/mockito/internal/util/DefaultMockingDetails;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public varargs reset([Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    .line 165
    .local p1, "mocks":[Ljava/lang/Object;, "[TT;"
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    .line 166
    .local v0, "mockingProgress":Lorg/mockito/internal/progress/MockingProgress;
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->validateState()V

    .line 167
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->reset()V

    .line 168
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->resetOngoingStubbing()V

    .line 170
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 171
    .local v3, "m":Ljava/lang/Object;, "TT;"
    invoke-static {v3}, Lorg/mockito/internal/util/MockUtil;->resetMock(Ljava/lang/Object;)V

    .line 170
    .end local v3    # "m":Ljava/lang/Object;, "TT;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    :cond_0
    return-void
.end method

.method public stubber()Lorg/mockito/stubbing/Stubber;
    .locals 1

    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mockito/internal/MockitoCore;->stubber(Lorg/mockito/quality/Strictness;)Lorg/mockito/stubbing/Stubber;

    move-result-object v0

    return-object v0
.end method

.method public stubber(Lorg/mockito/quality/Strictness;)Lorg/mockito/stubbing/Stubber;
    .locals 2
    .param p1, "strictness"    # Lorg/mockito/quality/Strictness;

    .line 263
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    .line 264
    .local v0, "mockingProgress":Lorg/mockito/internal/progress/MockingProgress;
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->stubbingStarted()V

    .line 265
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->resetOngoingStubbing()V

    .line 266
    new-instance v1, Lorg/mockito/internal/stubbing/StubberImpl;

    invoke-direct {v1, p1}, Lorg/mockito/internal/stubbing/StubberImpl;-><init>(Lorg/mockito/quality/Strictness;)V

    return-object v1
.end method

.method public validateMockitoUsage()V
    .locals 1

    .line 270
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->validateState()V

    .line 271
    return-void
.end method

.method public verify(Ljava/lang/Object;Lorg/mockito/verification/VerificationMode;)Ljava/lang/Object;
    .locals 6
    .param p2, "mode"    # Lorg/mockito/verification/VerificationMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/mockito/verification/VerificationMode;",
            ")TT;"
        }
    .end annotation

    .line 141
    .local p1, "mock":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_1

    .line 144
    invoke-virtual {p0, p1}, Lorg/mockito/internal/MockitoCore;->mockingDetails(Ljava/lang/Object;)Lorg/mockito/MockingDetails;

    move-result-object v0

    .line 145
    .local v0, "mockingDetails":Lorg/mockito/MockingDetails;
    invoke-interface {v0}, Lorg/mockito/MockingDetails;->isMock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-direct {p0, p1}, Lorg/mockito/internal/MockitoCore;->assertNotStubOnlyMock(Ljava/lang/Object;)V

    .line 149
    invoke-interface {v0}, Lorg/mockito/MockingDetails;->getMockHandler()Lorg/mockito/invocation/MockHandler;

    move-result-object v1

    .line 150
    .local v1, "handler":Lorg/mockito/invocation/MockHandler;
    nop

    .line 153
    invoke-interface {v1}, Lorg/mockito/invocation/MockHandler;->getMockSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object v2

    invoke-interface {v2}, Lorg/mockito/mock/MockCreationSettings;->getVerificationStartedListeners()Ljava/util/List;

    move-result-object v2

    .line 152
    invoke-static {v2, v0}, Lorg/mockito/internal/listeners/VerificationStartedNotifier;->notifyVerificationStarted(Ljava/util/List;Lorg/mockito/MockingDetails;)Ljava/lang/Object;

    move-result-object p1

    .line 156
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v2

    .line 157
    .local v2, "mockingProgress":Lorg/mockito/internal/progress/MockingProgress;
    invoke-interface {v2, p2}, Lorg/mockito/internal/progress/MockingProgress;->maybeVerifyLazily(Lorg/mockito/verification/VerificationMode;)Lorg/mockito/verification/VerificationMode;

    move-result-object v3

    .line 158
    .local v3, "actualMode":Lorg/mockito/verification/VerificationMode;
    new-instance v4, Lorg/mockito/internal/verification/MockAwareVerificationMode;

    .line 160
    invoke-interface {v2}, Lorg/mockito/internal/progress/MockingProgress;->verificationListeners()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, p1, v3, v5}, Lorg/mockito/internal/verification/MockAwareVerificationMode;-><init>(Ljava/lang/Object;Lorg/mockito/verification/VerificationMode;Ljava/util/Set;)V

    .line 158
    invoke-interface {v2, v4}, Lorg/mockito/internal/progress/MockingProgress;->verificationStarted(Lorg/mockito/verification/VerificationMode;)V

    .line 161
    return-object p1

    .line 146
    .end local v1    # "handler":Lorg/mockito/invocation/MockHandler;
    .end local v2    # "mockingProgress":Lorg/mockito/internal/progress/MockingProgress;
    .end local v3    # "actualMode":Lorg/mockito/verification/VerificationMode;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/exceptions/Reporter;->notAMockPassedToVerify(Ljava/lang/Class;)Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v1

    throw v1

    .line 142
    .end local v0    # "mockingDetails":Lorg/mockito/MockingDetails;
    :cond_1
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->nullPassedToVerify()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    throw v0
.end method

.method public varargs verifyNoInteractions([Ljava/lang/Object;)V
    .locals 6
    .param p1, "mocks"    # [Ljava/lang/Object;

    .line 205
    invoke-direct {p0, p1}, Lorg/mockito/internal/MockitoCore;->assertMocksNotEmpty([Ljava/lang/Object;)V

    .line 206
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->validateState()V

    .line 207
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 209
    .local v2, "mock":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 212
    :try_start_0
    invoke-static {v2}, Lorg/mockito/internal/util/MockUtil;->getInvocationContainer(Ljava/lang/Object;)Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    move-result-object v3

    .line 213
    .local v3, "invocations":Lorg/mockito/internal/stubbing/InvocationContainerImpl;
    invoke-direct {p0, v2}, Lorg/mockito/internal/MockitoCore;->assertNotStubOnlyMock(Ljava/lang/Object;)V

    .line 214
    new-instance v4, Lorg/mockito/internal/verification/VerificationDataImpl;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lorg/mockito/internal/verification/VerificationDataImpl;-><init>(Lorg/mockito/internal/stubbing/InvocationContainerImpl;Lorg/mockito/internal/invocation/InvocationMatcher;)V

    .line 215
    .local v4, "data":Lorg/mockito/internal/verification/VerificationDataImpl;
    invoke-static {}, Lorg/mockito/internal/verification/VerificationModeFactory;->noInteractions()Lorg/mockito/internal/verification/NoInteractions;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/mockito/internal/verification/NoInteractions;->verify(Lorg/mockito/internal/verification/api/VerificationData;)V

    .line 218
    .end local v3    # "invocations":Lorg/mockito/internal/stubbing/InvocationContainerImpl;
    .end local v4    # "data":Lorg/mockito/internal/verification/VerificationDataImpl;
    nop

    .line 207
    .end local v2    # "mock":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .restart local v2    # "mock":Ljava/lang/Object;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 210
    :cond_0
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->nullPassedToVerifyNoMoreInteractions()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    .end local v2    # "mock":Ljava/lang/Object;
    .end local p1    # "mocks":[Ljava/lang/Object;
    throw v0
    :try_end_0
    .catch Lorg/mockito/exceptions/misusing/NotAMockException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .local v0, "e":Lorg/mockito/exceptions/misusing/NotAMockException;
    .restart local v2    # "mock":Ljava/lang/Object;
    .restart local p1    # "mocks":[Ljava/lang/Object;
    :goto_1
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->notAMockPassedToVerifyNoMoreInteractions()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v1

    throw v1

    .line 220
    .end local v0    # "e":Lorg/mockito/exceptions/misusing/NotAMockException;
    .end local v2    # "mock":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public varargs verifyNoMoreInteractions([Ljava/lang/Object;)V
    .locals 6
    .param p1, "mocks"    # [Ljava/lang/Object;

    .line 187
    invoke-direct {p0, p1}, Lorg/mockito/internal/MockitoCore;->assertMocksNotEmpty([Ljava/lang/Object;)V

    .line 188
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->validateState()V

    .line 189
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 191
    .local v2, "mock":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 194
    :try_start_0
    invoke-static {v2}, Lorg/mockito/internal/util/MockUtil;->getInvocationContainer(Ljava/lang/Object;)Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    move-result-object v3

    .line 195
    .local v3, "invocations":Lorg/mockito/internal/stubbing/InvocationContainerImpl;
    invoke-direct {p0, v2}, Lorg/mockito/internal/MockitoCore;->assertNotStubOnlyMock(Ljava/lang/Object;)V

    .line 196
    new-instance v4, Lorg/mockito/internal/verification/VerificationDataImpl;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lorg/mockito/internal/verification/VerificationDataImpl;-><init>(Lorg/mockito/internal/stubbing/InvocationContainerImpl;Lorg/mockito/internal/invocation/InvocationMatcher;)V

    .line 197
    .local v4, "data":Lorg/mockito/internal/verification/VerificationDataImpl;
    invoke-static {}, Lorg/mockito/internal/verification/VerificationModeFactory;->noMoreInteractions()Lorg/mockito/internal/verification/NoMoreInteractions;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/mockito/internal/verification/NoMoreInteractions;->verify(Lorg/mockito/internal/verification/api/VerificationData;)V

    .line 200
    .end local v3    # "invocations":Lorg/mockito/internal/stubbing/InvocationContainerImpl;
    .end local v4    # "data":Lorg/mockito/internal/verification/VerificationDataImpl;
    nop

    .line 189
    .end local v2    # "mock":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .restart local v2    # "mock":Ljava/lang/Object;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 192
    :cond_0
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->nullPassedToVerifyNoMoreInteractions()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v0

    .end local v2    # "mock":Ljava/lang/Object;
    .end local p1    # "mocks":[Ljava/lang/Object;
    throw v0
    :try_end_0
    .catch Lorg/mockito/exceptions/misusing/NotAMockException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .local v0, "e":Lorg/mockito/exceptions/misusing/NotAMockException;
    .restart local v2    # "mock":Ljava/lang/Object;
    .restart local p1    # "mocks":[Ljava/lang/Object;
    :goto_1
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->notAMockPassedToVerifyNoMoreInteractions()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v1

    throw v1

    .line 202
    .end local v0    # "e":Lorg/mockito/exceptions/misusing/NotAMockException;
    .end local v2    # "mock":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public verifyNoMoreInteractionsInOrder(Ljava/util/List;Lorg/mockito/internal/verification/api/InOrderContext;)V
    .locals 3
    .param p2, "inOrderContext"    # Lorg/mockito/internal/verification/api/InOrderContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/mockito/internal/verification/api/InOrderContext;",
            ")V"
        }
    .end annotation

    .line 223
    .local p1, "mocks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->validateState()V

    .line 224
    new-instance v0, Lorg/mockito/internal/verification/api/VerificationDataInOrderImpl;

    .line 226
    invoke-static {p1}, Lorg/mockito/internal/invocation/finder/VerifiableInvocationsFinder;->find(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v2}, Lorg/mockito/internal/verification/api/VerificationDataInOrderImpl;-><init>(Lorg/mockito/internal/verification/api/InOrderContext;Ljava/util/List;Lorg/mockito/invocation/MatchableInvocation;)V

    .line 227
    .local v0, "data":Lorg/mockito/internal/verification/api/VerificationDataInOrder;
    invoke-static {}, Lorg/mockito/internal/verification/VerificationModeFactory;->noMoreInteractions()Lorg/mockito/internal/verification/NoMoreInteractions;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/mockito/internal/verification/NoMoreInteractions;->verifyInOrder(Lorg/mockito/internal/verification/api/VerificationDataInOrder;)V

    .line 228
    return-void
.end method

.method public when(Ljava/lang/Object;)Lorg/mockito/stubbing/OngoingStubbing;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/mockito/stubbing/OngoingStubbing<",
            "TT;>;"
        }
    .end annotation

    .line 129
    .local p1, "methodCall":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    .line 130
    .local v0, "mockingProgress":Lorg/mockito/internal/progress/MockingProgress;
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->stubbingStarted()V

    .line 132
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->pullOngoingStubbing()Lorg/mockito/stubbing/OngoingStubbing;

    move-result-object v1

    .line 133
    .local v1, "stubbing":Lorg/mockito/stubbing/OngoingStubbing;, "Lorg/mockito/stubbing/OngoingStubbing<TT;>;"
    if-eqz v1, :cond_0

    .line 137
    return-object v1

    .line 134
    :cond_0
    invoke-interface {v0}, Lorg/mockito/internal/progress/MockingProgress;->reset()V

    .line 135
    invoke-static {}, Lorg/mockito/internal/exceptions/Reporter;->missingMethodInvocation()Lorg/mockito/exceptions/base/MockitoException;

    move-result-object v2

    throw v2
.end method
