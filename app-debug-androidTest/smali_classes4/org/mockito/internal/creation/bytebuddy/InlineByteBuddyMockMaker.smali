.class public Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;
.super Ljava/lang/Object;
.source "InlineByteBuddyMockMaker.java"

# interfaces
.implements Lorg/mockito/internal/creation/bytebuddy/ClassCreatingMockMaker;
.implements Lorg/mockito/plugins/InlineMockMaker;
.implements Lorg/mockito/creation/instance/Instantiator;


# annotations
.annotation runtime Lorg/mockito/Incubating;
.end annotation


# instance fields
.field private final inlineDelegateByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    :try_start_0
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

    invoke-direct {v0}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->inlineDelegateByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    nop

    .line 30
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-static {v0}, Lorg/mockito/internal/exceptions/Reporter;->missingByteBuddyDependency(Ljava/lang/Throwable;)V

    .line 28
    throw v0
.end method

.method constructor <init>(Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;)V
    .locals 0
    .param p1, "inlineDelegateByteBuddyMockMaker"    # Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->inlineDelegateByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

    .line 34
    return-void
.end method


# virtual methods
.method public clearAllCaches()V
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->inlineDelegateByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

    invoke-virtual {v0}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->clearAllCaches()V

    .line 101
    return-void
.end method

.method public clearAllMocks()V
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->inlineDelegateByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

    invoke-virtual {v0}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->clearAllMocks()V

    .line 54
    return-void
.end method

.method public clearMock(Ljava/lang/Object;)V
    .locals 1
    .param p1, "mock"    # Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->inlineDelegateByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->clearMock(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public createConstructionMock(Ljava/lang/Class;Ljava/util/function/Function;Ljava/util/function/Function;Lorg/mockito/MockedConstruction$MockInitializer;)Lorg/mockito/plugins/MockMaker$ConstructionMockControl;
    .locals 1
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
            "Ljava/util/function/Function<",
            "Lorg/mockito/MockedConstruction$Context;",
            "Lorg/mockito/invocation/MockHandler<",
            "TT;>;>;",
            "Lorg/mockito/MockedConstruction$MockInitializer<",
            "TT;>;)",
            "Lorg/mockito/plugins/MockMaker$ConstructionMockControl<",
            "TT;>;"
        }
    .end annotation

    .line 94
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "settingsFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/mockito/MockedConstruction$Context;Lorg/mockito/mock/MockCreationSettings<TT;>;>;"
    .local p3, "handlerFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/mockito/MockedConstruction$Context;Lorg/mockito/invocation/MockHandler<TT;>;>;"
    .local p4, "mockInitializer":Lorg/mockito/MockedConstruction$MockInitializer;, "Lorg/mockito/MockedConstruction$MockInitializer<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->inlineDelegateByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->createConstructionMock(Ljava/lang/Class;Ljava/util/function/Function;Ljava/util/function/Function;Lorg/mockito/MockedConstruction$MockInitializer;)Lorg/mockito/plugins/MockMaker$ConstructionMockControl;

    move-result-object v0

    return-object v0
.end method

.method public createMock(Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;)Ljava/lang/Object;
    .locals 1
    .param p2, "handler"    # Lorg/mockito/invocation/MockHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;",
            "Lorg/mockito/invocation/MockHandler;",
            ")TT;"
        }
    .end annotation

    .line 58
    .local p1, "settings":Lorg/mockito/mock/MockCreationSettings;, "Lorg/mockito/mock/MockCreationSettings<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->inlineDelegateByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

    invoke-virtual {v0, p1, p2}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->createMock(Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createMockType(Lorg/mockito/mock/MockCreationSettings;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation

    .line 43
    .local p1, "settings":Lorg/mockito/mock/MockCreationSettings;, "Lorg/mockito/mock/MockCreationSettings<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->inlineDelegateByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->createMockType(Lorg/mockito/mock/MockCreationSettings;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public createSpy(Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;Ljava/lang/Object;)Ljava/util/Optional;
    .locals 1
    .param p2, "handler"    # Lorg/mockito/invocation/MockHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;",
            "Lorg/mockito/invocation/MockHandler;",
            "TT;)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 64
    .local p1, "settings":Lorg/mockito/mock/MockCreationSettings;, "Lorg/mockito/mock/MockCreationSettings<TT;>;"
    .local p3, "instance":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->inlineDelegateByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->createSpy(Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public createStaticMock(Ljava/lang/Class;Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;)Lorg/mockito/plugins/MockMaker$StaticMockControl;
    .locals 1
    .param p3, "handler"    # Lorg/mockito/invocation/MockHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/mockito/mock/MockCreationSettings<",
            "TT;>;",
            "Lorg/mockito/invocation/MockHandler;",
            ")",
            "Lorg/mockito/plugins/MockMaker$StaticMockControl<",
            "TT;>;"
        }
    .end annotation

    .line 85
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "settings":Lorg/mockito/mock/MockCreationSettings;, "Lorg/mockito/mock/MockCreationSettings<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->inlineDelegateByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->createStaticMock(Ljava/lang/Class;Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;)Lorg/mockito/plugins/MockMaker$StaticMockControl;

    move-result-object v0

    return-object v0
.end method

.method public getHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;
    .locals 1
    .param p1, "mock"    # Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->inlineDelegateByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->getHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;

    move-result-object v0

    return-object v0
.end method

.method public isTypeMockable(Ljava/lang/Class;)Lorg/mockito/plugins/MockMaker$TypeMockability;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mockito/plugins/MockMaker$TypeMockability;"
        }
    .end annotation

    .line 79
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->inlineDelegateByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->isTypeMockable(Ljava/lang/Class;)Lorg/mockito/plugins/MockMaker$TypeMockability;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 38
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->inlineDelegateByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public resetMock(Ljava/lang/Object;Lorg/mockito/invocation/MockHandler;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 1
    .param p1, "mock"    # Ljava/lang/Object;
    .param p2, "newHandler"    # Lorg/mockito/invocation/MockHandler;
    .param p3, "settings"    # Lorg/mockito/mock/MockCreationSettings;

    .line 74
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/InlineByteBuddyMockMaker;->inlineDelegateByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mockito/internal/creation/bytebuddy/InlineDelegateByteBuddyMockMaker;->resetMock(Ljava/lang/Object;Lorg/mockito/invocation/MockHandler;Lorg/mockito/mock/MockCreationSettings;)V

    .line 75
    return-void
.end method
