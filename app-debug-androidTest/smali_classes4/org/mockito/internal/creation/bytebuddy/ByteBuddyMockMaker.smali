.class public Lorg/mockito/internal/creation/bytebuddy/ByteBuddyMockMaker;
.super Ljava/lang/Object;
.source "ByteBuddyMockMaker.java"

# interfaces
.implements Lorg/mockito/internal/creation/bytebuddy/ClassCreatingMockMaker;


# instance fields
.field private final subclassByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    :try_start_0
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;

    invoke-direct {v0}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;-><init>()V

    iput-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyMockMaker;->subclassByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    nop

    .line 35
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    invoke-static {v0}, Lorg/mockito/internal/exceptions/Reporter;->missingByteBuddyDependency(Ljava/lang/Throwable;)V

    .line 33
    throw v0
.end method

.method constructor <init>(Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;)V
    .locals 0
    .param p1, "subclassByteBuddyMockMaker"    # Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyMockMaker;->subclassByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;

    .line 39
    return-void
.end method


# virtual methods
.method public clearAllCaches()V
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyMockMaker;->subclassByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;

    invoke-virtual {v0}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->clearAllCaches()V

    .line 92
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

    .line 85
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "settingsFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/mockito/MockedConstruction$Context;Lorg/mockito/mock/MockCreationSettings<TT;>;>;"
    .local p3, "handlerFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/mockito/MockedConstruction$Context;Lorg/mockito/invocation/MockHandler<TT;>;>;"
    .local p4, "mockInitializer":Lorg/mockito/MockedConstruction$MockInitializer;, "Lorg/mockito/MockedConstruction$MockInitializer<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyMockMaker;->subclassByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->createConstructionMock(Ljava/lang/Class;Ljava/util/function/Function;Ljava/util/function/Function;Lorg/mockito/MockedConstruction$MockInitializer;)Lorg/mockito/plugins/MockMaker$ConstructionMockControl;

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

    .line 43
    .local p1, "settings":Lorg/mockito/mock/MockCreationSettings;, "Lorg/mockito/mock/MockCreationSettings<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyMockMaker;->subclassByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;

    invoke-virtual {v0, p1, p2}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->createMock(Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;)Ljava/lang/Object;

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

    .line 54
    .local p1, "creationSettings":Lorg/mockito/mock/MockCreationSettings;, "Lorg/mockito/mock/MockCreationSettings<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyMockMaker;->subclassByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->createMockType(Lorg/mockito/mock/MockCreationSettings;)Ljava/lang/Class;

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

    .line 49
    .local p1, "settings":Lorg/mockito/mock/MockCreationSettings;, "Lorg/mockito/mock/MockCreationSettings<TT;>;"
    .local p3, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyMockMaker;->subclassByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->createSpy(Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;Ljava/lang/Object;)Ljava/util/Optional;

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

    .line 76
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "settings":Lorg/mockito/mock/MockCreationSettings;, "Lorg/mockito/mock/MockCreationSettings<TT;>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyMockMaker;->subclassByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->createStaticMock(Ljava/lang/Class;Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;)Lorg/mockito/plugins/MockMaker$StaticMockControl;

    move-result-object v0

    return-object v0
.end method

.method public getHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;
    .locals 1
    .param p1, "mock"    # Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyMockMaker;->subclassByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->getHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;

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

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 70
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyMockMaker;->subclassByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->isTypeMockable(Ljava/lang/Class;)Lorg/mockito/plugins/MockMaker$TypeMockability;

    move-result-object v0

    return-object v0
.end method

.method public resetMock(Ljava/lang/Object;Lorg/mockito/invocation/MockHandler;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 1
    .param p1, "mock"    # Ljava/lang/Object;
    .param p2, "newHandler"    # Lorg/mockito/invocation/MockHandler;
    .param p3, "settings"    # Lorg/mockito/mock/MockCreationSettings;

    .line 64
    iget-object v0, p0, Lorg/mockito/internal/creation/bytebuddy/ByteBuddyMockMaker;->subclassByteBuddyMockMaker:Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;->resetMock(Ljava/lang/Object;Lorg/mockito/invocation/MockHandler;Lorg/mockito/mock/MockCreationSettings;)V

    .line 65
    return-void
.end method
