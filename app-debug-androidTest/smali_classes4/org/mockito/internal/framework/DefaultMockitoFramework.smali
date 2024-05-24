.class public Lorg/mockito/internal/framework/DefaultMockitoFramework;
.super Ljava/lang/Object;
.source "DefaultMockitoFramework.java"

# interfaces
.implements Lorg/mockito/MockitoFramework;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getInlineMockMaker()Lorg/mockito/plugins/InlineMockMaker;
    .locals 2

    .line 46
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getMockMaker()Lorg/mockito/plugins/MockMaker;

    move-result-object v0

    .line 47
    .local v0, "mockMaker":Lorg/mockito/plugins/MockMaker;
    instance-of v1, v0, Lorg/mockito/plugins/InlineMockMaker;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/mockito/plugins/InlineMockMaker;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public addListener(Lorg/mockito/listeners/MockitoListener;)Lorg/mockito/MockitoFramework;
    .locals 1
    .param p1, "listener"    # Lorg/mockito/listeners/MockitoListener;

    .line 23
    const-string v0, "listener"

    invoke-static {p1, v0}, Lorg/mockito/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mockito/internal/progress/MockingProgress;->addListener(Lorg/mockito/listeners/MockitoListener;)V

    .line 25
    return-object p0
.end method

.method public clearInlineMock(Ljava/lang/Object;)V
    .locals 1
    .param p1, "mock"    # Ljava/lang/Object;

    .line 60
    invoke-direct {p0}, Lorg/mockito/internal/framework/DefaultMockitoFramework;->getInlineMockMaker()Lorg/mockito/plugins/InlineMockMaker;

    move-result-object v0

    .line 61
    .local v0, "mockMaker":Lorg/mockito/plugins/InlineMockMaker;
    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0, p1}, Lorg/mockito/plugins/InlineMockMaker;->clearMock(Ljava/lang/Object;)V

    .line 64
    :cond_0
    return-void
.end method

.method public clearInlineMocks()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lorg/mockito/internal/framework/DefaultMockitoFramework;->getInlineMockMaker()Lorg/mockito/plugins/InlineMockMaker;

    move-result-object v0

    .line 53
    .local v0, "mockMaker":Lorg/mockito/plugins/InlineMockMaker;
    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0}, Lorg/mockito/plugins/InlineMockMaker;->clearAllMocks()V

    .line 56
    :cond_0
    return-void
.end method

.method public getInvocationFactory()Lorg/mockito/invocation/InvocationFactory;
    .locals 1

    .line 42
    new-instance v0, Lorg/mockito/internal/invocation/DefaultInvocationFactory;

    invoke-direct {v0}, Lorg/mockito/internal/invocation/DefaultInvocationFactory;-><init>()V

    return-object v0
.end method

.method public getPlugins()Lorg/mockito/plugins/MockitoPlugins;
    .locals 1

    .line 37
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getPlugins()Lorg/mockito/plugins/MockitoPlugins;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Lorg/mockito/listeners/MockitoListener;)Lorg/mockito/MockitoFramework;
    .locals 1
    .param p1, "listener"    # Lorg/mockito/listeners/MockitoListener;

    .line 30
    const-string v0, "listener"

    invoke-static {p1, v0}, Lorg/mockito/internal/util/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    invoke-static {}, Lorg/mockito/internal/progress/ThreadSafeMockingProgress;->mockingProgress()Lorg/mockito/internal/progress/MockingProgress;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mockito/internal/progress/MockingProgress;->removeListener(Lorg/mockito/listeners/MockitoListener;)V

    .line 32
    return-object p0
.end method
