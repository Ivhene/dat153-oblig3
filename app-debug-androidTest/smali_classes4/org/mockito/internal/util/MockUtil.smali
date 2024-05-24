.class public Lorg/mockito/internal/util/MockUtil;
.super Ljava/lang/Object;
.source "MockUtil.java"


# static fields
.field private static final mockMaker:Lorg/mockito/plugins/MockMaker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getMockMaker()Lorg/mockito/plugins/MockMaker;

    move-result-object v0

    sput-object v0, Lorg/mockito/internal/util/MockUtil;->mockMaker:Lorg/mockito/plugins/MockMaker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areSameMocks(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "mockA"    # Ljava/lang/Object;
    .param p1, "mockB"    # Ljava/lang/Object;

    .line 124
    if-eq p0, p1, :cond_1

    invoke-static {p0}, Lorg/mockito/internal/util/MockUtil;->resolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Lorg/mockito/internal/util/MockUtil;->resolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static clearAllCaches()V
    .locals 1

    .line 161
    sget-object v0, Lorg/mockito/internal/util/MockUtil;->mockMaker:Lorg/mockito/plugins/MockMaker;

    invoke-interface {v0}, Lorg/mockito/plugins/MockMaker;->clearAllCaches()V

    .line 162
    return-void
.end method

.method public static createConstructionMock(Ljava/lang/Class;Ljava/util/function/Function;Lorg/mockito/MockedConstruction$MockInitializer;)Lorg/mockito/plugins/MockMaker$ConstructionMockControl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "Lorg/mockito/MockedConstruction$Context;",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;>;",
            "Lorg/mockito/MockedConstruction$MockInitializer<",
            "TT;>;)",
            "Lorg/mockito/plugins/MockMaker$ConstructionMockControl<",
            "TT;>;"
        }
    .end annotation

    .line 154
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "settingsFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/mockito/MockedConstruction$Context;Lorg/mockito/mock/MockCreationSettings<TT;>;>;"
    .local p2, "mockInitializer":Lorg/mockito/MockedConstruction$MockInitializer;, "Lorg/mockito/MockedConstruction$MockInitializer<TT;>;"
    new-instance v0, Lorg/mockito/internal/util/MockUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/mockito/internal/util/MockUtil$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Function;)V

    .line 156
    .local v0, "handlerFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/mockito/MockedConstruction$Context;Lorg/mockito/invocation/MockHandler<TT;>;>;"
    sget-object v1, Lorg/mockito/internal/util/MockUtil;->mockMaker:Lorg/mockito/plugins/MockMaker;

    invoke-interface {v1, p0, p1, v0, p2}, Lorg/mockito/plugins/MockMaker;->createConstructionMock(Ljava/lang/Class;Ljava/util/function/Function;Ljava/util/function/Function;Lorg/mockito/MockedConstruction$MockInitializer;)Lorg/mockito/plugins/MockMaker$ConstructionMockControl;

    move-result-object v1

    return-object v1
.end method

.method public static createMock(Lorg/mockito/mock/MockCreationSettings;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 37
    .local p0, "settings":Lorg/mockito/mock/MockCreationSettings;, "Lorg/mockito/mock/MockCreationSettings<TT;>;"
    invoke-static {p0}, Lorg/mockito/internal/handler/MockHandlerFactory;->createMockHandler(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/invocation/MockHandler;

    move-result-object v0

    .line 39
    .local v0, "mockHandler":Lorg/mockito/invocation/MockHandler;
    invoke-interface {p0}, Lorg/mockito/mock/MockCreationSettings;->getSpiedInstance()Ljava/lang/Object;

    move-result-object v1

    .line 42
    .local v1, "spiedInstance":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 43
    sget-object v2, Lorg/mockito/internal/util/MockUtil;->mockMaker:Lorg/mockito/plugins/MockMaker;

    .line 45
    invoke-interface {v2, p0, v0, v1}, Lorg/mockito/plugins/MockMaker;->createSpy(Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/mockito/internal/util/MockUtil$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, v1}, Lorg/mockito/internal/util/MockUtil$$ExternalSyntheticLambda1;-><init>(Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "mock":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 53
    .end local v2    # "mock":Ljava/lang/Object;, "TT;"
    :cond_0
    sget-object v2, Lorg/mockito/internal/util/MockUtil;->mockMaker:Lorg/mockito/plugins/MockMaker;

    invoke-interface {v2, p0, v0}, Lorg/mockito/plugins/MockMaker;->createMock(Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 56
    .restart local v2    # "mock":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v2
.end method

.method public static createStaticMock(Ljava/lang/Class;Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/plugins/MockMaker$StaticMockControl;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;)",
            "Lorg/mockito/plugins/MockMaker$StaticMockControl<",
            "TT;>;"
        }
    .end annotation

    .line 146
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "settings":Lorg/mockito/mock/MockCreationSettings;, "Lorg/mockito/mock/MockCreationSettings<TT;>;"
    invoke-static {p1}, Lorg/mockito/internal/handler/MockHandlerFactory;->createMockHandler(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/invocation/MockHandler;

    move-result-object v0

    .line 147
    .local v0, "handler":Lorg/mockito/invocation/MockHandler;, "Lorg/mockito/invocation/MockHandler<TT;>;"
    sget-object v1, Lorg/mockito/internal/util/MockUtil;->mockMaker:Lorg/mockito/plugins/MockMaker;

    invoke-interface {v1, p0, p1, v0}, Lorg/mockito/plugins/MockMaker;->createStaticMock(Ljava/lang/Class;Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;)Lorg/mockito/plugins/MockMaker$StaticMockControl;

    move-result-object v1

    return-object v1
.end method

.method public static getInvocationContainer(Ljava/lang/Object;)Lorg/mockito/internal/stubbing/InvocationContainerImpl;
    .locals 1
    .param p0, "mock"    # Ljava/lang/Object;

    .line 84
    invoke-static {p0}, Lorg/mockito/internal/util/MockUtil;->getMockHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/invocation/MockHandler;->getInvocationContainer()Lorg/mockito/invocation/InvocationContainer;

    move-result-object v0

    check-cast v0, Lorg/mockito/internal/stubbing/InvocationContainerImpl;

    return-object v0
.end method

.method public static getMockHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;
    .locals 4
    .param p0, "mock"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lorg/mockito/invocation/MockHandler<",
            "*>;"
        }
    .end annotation

    .line 69
    if-eqz p0, :cond_1

    .line 73
    invoke-static {p0}, Lorg/mockito/internal/util/MockUtil;->resolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 75
    sget-object v0, Lorg/mockito/internal/util/MockUtil;->mockMaker:Lorg/mockito/plugins/MockMaker;

    invoke-interface {v0, p0}, Lorg/mockito/plugins/MockMaker;->getHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;

    move-result-object v0

    .line 76
    .local v0, "handler":Lorg/mockito/invocation/MockHandler;
    if-eqz v0, :cond_0

    .line 77
    return-object v0

    .line 79
    :cond_0
    new-instance v1, Lorg/mockito/exceptions/misusing/NotAMockException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Argument should be a mock, but is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mockito/exceptions/misusing/NotAMockException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    .end local v0    # "handler":Lorg/mockito/invocation/MockHandler;
    :cond_1
    new-instance v0, Lorg/mockito/exceptions/misusing/NotAMockException;

    const-string v1, "Argument should be a mock, but is null!"

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/misusing/NotAMockException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;
    .locals 1
    .param p0, "mock"    # Ljava/lang/Object;

    .line 128
    invoke-static {p0}, Lorg/mockito/internal/util/MockUtil;->getMockHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/invocation/MockHandler;->getMockSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/mock/MockCreationSettings;->getMockName()Lorg/mockito/mock/MockName;

    move-result-object v0

    return-object v0
.end method

.method public static getMockSettings(Ljava/lang/Object;)Lorg/mockito/mock/MockCreationSettings;
    .locals 1
    .param p0, "mock"    # Ljava/lang/Object;

    .line 141
    invoke-static {p0}, Lorg/mockito/internal/util/MockUtil;->getMockHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/invocation/MockHandler;->getMockSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object v0

    return-object v0
.end method

.method public static isMock(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "mock"    # Ljava/lang/Object;

    .line 104
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 105
    return v0

    .line 108
    :cond_0
    invoke-static {p0}, Lorg/mockito/internal/util/MockUtil;->resolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 110
    sget-object v1, Lorg/mockito/internal/util/MockUtil;->mockMaker:Lorg/mockito/plugins/MockMaker;

    invoke-interface {v1, p0}, Lorg/mockito/plugins/MockMaker;->getHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isSpy(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "mock"    # Ljava/lang/Object;

    .line 88
    invoke-static {p0}, Lorg/mockito/internal/util/MockUtil;->isMock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p0}, Lorg/mockito/internal/util/MockUtil;->getMockSettings(Ljava/lang/Object;)Lorg/mockito/mock/MockCreationSettings;

    move-result-object v0

    invoke-interface {v0}, Lorg/mockito/mock/MockCreationSettings;->getDefaultAnswer()Lorg/mockito/stubbing/Answer;

    move-result-object v0

    sget-object v1, Lorg/mockito/Mockito;->CALLS_REAL_METHODS:Lorg/mockito/stubbing/Answer;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 88
    :goto_0
    return v0
.end method

.method static synthetic lambda$createConstructionMock$1(Ljava/util/function/Function;Lorg/mockito/MockedConstruction$Context;)Lorg/mockito/invocation/MockHandler;
    .locals 1
    .param p0, "settingsFactory"    # Ljava/util/function/Function;
    .param p1, "context"    # Lorg/mockito/MockedConstruction$Context;

    .line 155
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mockito/mock/MockCreationSettings;

    invoke-static {v0}, Lorg/mockito/internal/handler/MockHandlerFactory;->createMockHandler(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/invocation/MockHandler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$createMock$0(Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "settings"    # Lorg/mockito/mock/MockCreationSettings;
    .param p1, "mockHandler"    # Lorg/mockito/invocation/MockHandler;
    .param p2, "spiedInstance"    # Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/mockito/internal/util/MockUtil;->mockMaker:Lorg/mockito/plugins/MockMaker;

    invoke-interface {v0, p0, p1}, Lorg/mockito/plugins/MockMaker;->createMock(Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    .local v0, "instance":Ljava/lang/Object;, "TT;"
    new-instance v1, Lorg/mockito/internal/util/reflection/LenientCopyTool;

    invoke-direct {v1}, Lorg/mockito/internal/util/reflection/LenientCopyTool;-><init>()V

    invoke-virtual {v1, p2, v0}, Lorg/mockito/internal/util/reflection/LenientCopyTool;->copyToMock(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    return-object v0
.end method

.method public static maybeRedefineMockName(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p0, "mock"    # Ljava/lang/Object;
    .param p1, "newName"    # Ljava/lang/String;

    .line 132
    invoke-static {p0}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v0

    .line 134
    .local v0, "mockName":Lorg/mockito/mock/MockName;
    invoke-static {p0}, Lorg/mockito/internal/util/MockUtil;->getMockHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/mockito/invocation/MockHandler;->getMockSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object v1

    .line 135
    .local v1, "mockSettings":Lorg/mockito/mock/MockCreationSettings;
    invoke-interface {v0}, Lorg/mockito/mock/MockName;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lorg/mockito/internal/creation/settings/CreationSettings;

    if-eqz v2, :cond_0

    .line 136
    move-object v2, v1

    check-cast v2, Lorg/mockito/internal/creation/settings/CreationSettings;

    new-instance v3, Lorg/mockito/internal/util/MockNameImpl;

    invoke-direct {v3, p1}, Lorg/mockito/internal/util/MockNameImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/mockito/internal/creation/settings/CreationSettings;->setMockName(Lorg/mockito/mock/MockName;)Lorg/mockito/internal/creation/settings/CreationSettings;

    .line 138
    :cond_0
    return-void
.end method

.method public static resetMock(Ljava/lang/Object;)V
    .locals 4
    .param p0, "mock"    # Ljava/lang/Object;

    .line 60
    invoke-static {p0}, Lorg/mockito/internal/util/MockUtil;->getMockHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;

    move-result-object v0

    .line 61
    .local v0, "oldHandler":Lorg/mockito/invocation/MockHandler;
    invoke-interface {v0}, Lorg/mockito/invocation/MockHandler;->getMockSettings()Lorg/mockito/mock/MockCreationSettings;

    move-result-object v1

    .line 62
    .local v1, "settings":Lorg/mockito/mock/MockCreationSettings;
    invoke-static {v1}, Lorg/mockito/internal/handler/MockHandlerFactory;->createMockHandler(Lorg/mockito/mock/MockCreationSettings;)Lorg/mockito/invocation/MockHandler;

    move-result-object v2

    .line 64
    .local v2, "newHandler":Lorg/mockito/invocation/MockHandler;
    invoke-static {p0}, Lorg/mockito/internal/util/MockUtil;->resolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 65
    sget-object v3, Lorg/mockito/internal/util/MockUtil;->mockMaker:Lorg/mockito/plugins/MockMaker;

    invoke-interface {v3, p0, v2, v1}, Lorg/mockito/plugins/MockMaker;->resetMock(Ljava/lang/Object;Lorg/mockito/invocation/MockHandler;Lorg/mockito/mock/MockCreationSettings;)V

    .line 66
    return-void
.end method

.method private static resolve(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "mock"    # Ljava/lang/Object;

    .line 114
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 115
    return-object p0

    .line 117
    :cond_0
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getMockResolvers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mockito/plugins/MockResolver;

    .line 118
    .local v1, "mockResolver":Lorg/mockito/plugins/MockResolver;
    invoke-interface {v1, p0}, Lorg/mockito/plugins/MockResolver;->resolve(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 119
    .end local v1    # "mockResolver":Lorg/mockito/plugins/MockResolver;
    goto :goto_0

    .line 120
    :cond_1
    return-object p0
.end method

.method public static typeMockabilityOf(Ljava/lang/Class;)Lorg/mockito/plugins/MockMaker$TypeMockability;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/plugins/MockMaker$TypeMockability;"
        }
    .end annotation

    .line 33
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/mockito/internal/util/MockUtil;->mockMaker:Lorg/mockito/plugins/MockMaker;

    invoke-interface {v0, p0}, Lorg/mockito/plugins/MockMaker;->isTypeMockable(Ljava/lang/Class;)Lorg/mockito/plugins/MockMaker$TypeMockability;

    move-result-object v0

    return-object v0
.end method
