.class public interface abstract Lorg/mockito/plugins/MockMaker;
.super Ljava/lang/Object;
.source "MockMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/plugins/MockMaker$ConstructionMockControl;,
        Lorg/mockito/plugins/MockMaker$StaticMockControl;,
        Lorg/mockito/plugins/MockMaker$TypeMockability;
    }
.end annotation


# virtual methods
.method public clearAllCaches()V
    .locals 0
    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 205
    return-void
.end method

.method public createConstructionMock(Ljava/lang/Class;Ljava/util/function/Function;Ljava/util/function/Function;Lorg/mockito/MockedConstruction$MockInitializer;)Lorg/mockito/plugins/MockMaker$ConstructionMockControl;
    .locals 6
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

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 190
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "settingsFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/mockito/MockedConstruction$Context;Lorg/mockito/mock/MockCreationSettings<TT;>;>;"
    .local p3, "handlerFactory":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/mockito/MockedConstruction$Context;Lorg/mockito/invocation/MockHandler<TT;>;>;"
    .local p4, "mockInitializer":Lorg/mockito/MockedConstruction$MockInitializer;, "Lorg/mockito/MockedConstruction$MockInitializer<TT;>;"
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The used MockMaker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support the creation of construction mocks"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "You can simply enable this mock mode, by placing the \'mockito-inline\' artifact where you are currently using \'mockito-core\'."

    const-string v3, "Note that Mockito\'s inline mock maker is not supported on Android."

    const-string v4, ""

    const-string v5, "Mockito\'s inline mock maker supports construction mocks based on the Instrumentation API."

    filled-new-array {v1, v4, v5, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 191
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract createMock(Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;)Ljava/lang/Object;
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

    .line 93
    .local p1, "settings":Lorg/mockito/mock/MockCreationSettings;, "Lorg/mockito/mock/MockCreationSettings<TT;>;"
    .local p3, "instance":Ljava/lang/Object;, "TT;"
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public createStaticMock(Ljava/lang/Class;Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;)Lorg/mockito/plugins/MockMaker$StaticMockControl;
    .locals 6
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

    .annotation runtime Lorg/mockito/Incubating;
    .end annotation

    .line 157
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "settings":Lorg/mockito/mock/MockCreationSettings;, "Lorg/mockito/mock/MockCreationSettings<TT;>;"
    new-instance v0, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The used MockMaker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not support the creation of static mocks"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "You can simply enable this mock mode, by placing the \'mockito-inline\' artifact where you are currently using \'mockito-core\'."

    const-string v3, "Note that Mockito\'s inline mock maker is not supported on Android."

    const-string v4, ""

    const-string v5, "Mockito\'s inline mock maker supports static mocks based on the Instrumentation API."

    filled-new-array {v1, v4, v5, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 158
    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;
.end method

.method public abstract isTypeMockable(Ljava/lang/Class;)Lorg/mockito/plugins/MockMaker$TypeMockability;
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
.end method

.method public abstract resetMock(Ljava/lang/Object;Lorg/mockito/invocation/MockHandler;Lorg/mockito/mock/MockCreationSettings;)V
.end method
