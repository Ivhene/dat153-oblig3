.class public Lorg/mockito/android/internal/creation/AndroidByteBuddyMockMaker;
.super Ljava/lang/Object;
.source "AndroidByteBuddyMockMaker.java"

# interfaces
.implements Lorg/mockito/plugins/MockMaker;


# instance fields
.field private final delegate:Lorg/mockito/plugins/MockMaker;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lorg/mockito/internal/util/Platform;->isAndroid()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/mockito/internal/util/Platform;->isAndroidMockMakerRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getMockitoLogger()Lorg/mockito/plugins/MockitoLogger;

    move-result-object v0

    const-string v1, "IMPORTANT NOTE FROM MOCKITO:"

    const-string v2, ""

    const-string v3, "You included the \'mockito-android\' dependency in a non-Android environment."

    const-string v4, "The Android mock maker was disabled. You should only include the latter in your \'androidTestCompile\' configuration"

    const-string v5, "If disabling was a mistake, you can set the \'org.mockito.mock.android\' property to \'true\' to override this detection."

    const-string v6, ""

    const-string v7, "Visit https://javadoc.io/page/org.mockito/mockito-core/latest/org/mockito/Mockito.html#0.1 for more information"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/mockito/internal/util/StringUtil;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/mockito/plugins/MockitoLogger;->log(Ljava/lang/Object;)V

    .line 33
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;

    invoke-direct {v0}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;-><init>()V

    iput-object v0, p0, Lorg/mockito/android/internal/creation/AndroidByteBuddyMockMaker;->delegate:Lorg/mockito/plugins/MockMaker;

    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    new-instance v0, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;

    new-instance v1, Lorg/mockito/android/internal/creation/AndroidLoadingStrategy;

    invoke-direct {v1}, Lorg/mockito/android/internal/creation/AndroidLoadingStrategy;-><init>()V

    invoke-direct {v0, v1}, Lorg/mockito/internal/creation/bytebuddy/SubclassByteBuddyMockMaker;-><init>(Lorg/mockito/internal/creation/bytebuddy/SubclassLoader;)V

    iput-object v0, p0, Lorg/mockito/android/internal/creation/AndroidByteBuddyMockMaker;->delegate:Lorg/mockito/plugins/MockMaker;

    .line 35
    :goto_1
    return-void
.end method


# virtual methods
.method public clearAllCaches()V
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/mockito/android/internal/creation/AndroidByteBuddyMockMaker;->delegate:Lorg/mockito/plugins/MockMaker;

    invoke-interface {v0}, Lorg/mockito/plugins/MockMaker;->clearAllCaches()V

    .line 60
    return-void
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

    .line 39
    .local p1, "settings":Lorg/mockito/mock/MockCreationSettings;, "Lorg/mockito/mock/MockCreationSettings<TT;>;"
    iget-object v0, p0, Lorg/mockito/android/internal/creation/AndroidByteBuddyMockMaker;->delegate:Lorg/mockito/plugins/MockMaker;

    invoke-interface {v0, p1, p2}, Lorg/mockito/plugins/MockMaker;->createMock(Lorg/mockito/mock/MockCreationSettings;Lorg/mockito/invocation/MockHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;
    .locals 1
    .param p1, "mock"    # Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lorg/mockito/android/internal/creation/AndroidByteBuddyMockMaker;->delegate:Lorg/mockito/plugins/MockMaker;

    invoke-interface {v0, p1}, Lorg/mockito/plugins/MockMaker;->getHandler(Ljava/lang/Object;)Lorg/mockito/invocation/MockHandler;

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

    .line 54
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/mockito/android/internal/creation/AndroidByteBuddyMockMaker;->delegate:Lorg/mockito/plugins/MockMaker;

    invoke-interface {v0, p1}, Lorg/mockito/plugins/MockMaker;->isTypeMockable(Ljava/lang/Class;)Lorg/mockito/plugins/MockMaker$TypeMockability;

    move-result-object v0

    return-object v0
.end method

.method public resetMock(Ljava/lang/Object;Lorg/mockito/invocation/MockHandler;Lorg/mockito/mock/MockCreationSettings;)V
    .locals 1
    .param p1, "mock"    # Ljava/lang/Object;
    .param p2, "newHandler"    # Lorg/mockito/invocation/MockHandler;
    .param p3, "settings"    # Lorg/mockito/mock/MockCreationSettings;

    .line 49
    iget-object v0, p0, Lorg/mockito/android/internal/creation/AndroidByteBuddyMockMaker;->delegate:Lorg/mockito/plugins/MockMaker;

    invoke-interface {v0, p1, p2, p3}, Lorg/mockito/plugins/MockMaker;->resetMock(Ljava/lang/Object;Lorg/mockito/invocation/MockHandler;Lorg/mockito/mock/MockCreationSettings;)V

    .line 50
    return-void
.end method
