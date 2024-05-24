.class Lorg/mockito/internal/configuration/plugins/PluginLoader;
.super Ljava/lang/Object;
.source "PluginLoader.java"


# instance fields
.field private final initializer:Lorg/mockito/internal/configuration/plugins/PluginInitializer;

.field private final plugins:Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;


# direct methods
.method constructor <init>(Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;Lorg/mockito/internal/configuration/plugins/PluginInitializer;)V
    .locals 0
    .param p1, "plugins"    # Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;
    .param p2, "initializer"    # Lorg/mockito/internal/configuration/plugins/PluginInitializer;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/mockito/internal/configuration/plugins/PluginLoader;->plugins:Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;

    .line 22
    iput-object p2, p0, Lorg/mockito/internal/configuration/plugins/PluginLoader;->initializer:Lorg/mockito/internal/configuration/plugins/PluginInitializer;

    .line 23
    return-void
.end method

.method constructor <init>(Lorg/mockito/plugins/PluginSwitch;)V
    .locals 4
    .param p1, "pluginSwitch"    # Lorg/mockito/plugins/PluginSwitch;

    .line 26
    new-instance v0, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;

    invoke-direct {v0}, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;-><init>()V

    new-instance v1, Lorg/mockito/internal/configuration/plugins/PluginInitializer;

    new-instance v2, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;

    invoke-direct {v2}, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3, v2}, Lorg/mockito/internal/configuration/plugins/PluginInitializer;-><init>(Lorg/mockito/plugins/PluginSwitch;Ljava/lang/String;Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;)V

    invoke-direct {p0, v0, v1}, Lorg/mockito/internal/configuration/plugins/PluginLoader;-><init>(Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;Lorg/mockito/internal/configuration/plugins/PluginInitializer;)V

    .line 29
    return-void
.end method

.method constructor <init>(Lorg/mockito/plugins/PluginSwitch;Ljava/lang/String;)V
    .locals 3
    .param p1, "pluginSwitch"    # Lorg/mockito/plugins/PluginSwitch;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    new-instance v0, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;

    invoke-direct {v0}, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;-><init>()V

    new-instance v1, Lorg/mockito/internal/configuration/plugins/PluginInitializer;

    new-instance v2, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;

    invoke-direct {v2}, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;-><init>()V

    invoke-direct {v1, p1, p2, v2}, Lorg/mockito/internal/configuration/plugins/PluginInitializer;-><init>(Lorg/mockito/plugins/PluginSwitch;Ljava/lang/String;Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;)V

    invoke-direct {p0, v0, v1}, Lorg/mockito/internal/configuration/plugins/PluginLoader;-><init>(Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;Lorg/mockito/internal/configuration/plugins/PluginInitializer;)V

    .line 43
    return-void
.end method


# virtual methods
.method loadPlugin(Ljava/lang/Class;)Ljava/lang/Object;
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

    .line 50
    .local p1, "pluginType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mockito/internal/configuration/plugins/PluginLoader;->loadPlugin(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method loadPlugin(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<PreferredT:",
            "Ljava/lang/Object;",
            "AlternateType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TPreferredT;>;",
            "Ljava/lang/Class<",
            "TAlternateType;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 65
    .local p1, "preferredPluginType":Ljava/lang/Class;, "Ljava/lang/Class<TPreferredT;>;"
    .local p2, "alternatePluginType":Ljava/lang/Class;, "Ljava/lang/Class<TAlternateType;>;"
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginLoader;->initializer:Lorg/mockito/internal/configuration/plugins/PluginInitializer;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/configuration/plugins/PluginInitializer;->loadImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    .local v0, "preferredPlugin":Ljava/lang/Object;, "TPreferredT;"
    if-eqz v0, :cond_0

    .line 67
    return-object v0

    .line 68
    :cond_0
    if-eqz p2, :cond_1

    .line 69
    iget-object v1, p0, Lorg/mockito/internal/configuration/plugins/PluginLoader;->initializer:Lorg/mockito/internal/configuration/plugins/PluginInitializer;

    invoke-virtual {v1, p2}, Lorg/mockito/internal/configuration/plugins/PluginInitializer;->loadImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 70
    .local v1, "alternatePlugin":Ljava/lang/Object;, "TAlternateType;"
    if-eqz v1, :cond_1

    .line 71
    return-object v1

    .line 75
    .end local v1    # "alternatePlugin":Ljava/lang/Object;, "TAlternateType;"
    :cond_1
    iget-object v1, p0, Lorg/mockito/internal/configuration/plugins/PluginLoader;->plugins:Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;

    invoke-virtual {v1, p1}, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;->getDefaultPlugin(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 76
    .end local v0    # "preferredPlugin":Ljava/lang/Object;, "TPreferredT;"
    :catchall_0
    move-exception v0

    .line 77
    .local v0, "t":Ljava/lang/Throwable;
    nop

    .line 78
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-instance v3, Lorg/mockito/internal/configuration/plugins/PluginLoader$1;

    invoke-direct {v3, p0, p1, p2, v0}, Lorg/mockito/internal/configuration/plugins/PluginLoader$1;-><init>(Lorg/mockito/internal/configuration/plugins/PluginLoader;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 77
    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method loadPlugins(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 104
    .local p1, "pluginType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    iget-object v0, p0, Lorg/mockito/internal/configuration/plugins/PluginLoader;->initializer:Lorg/mockito/internal/configuration/plugins/PluginInitializer;

    invoke-virtual {v0, p1}, Lorg/mockito/internal/configuration/plugins/PluginInitializer;->loadImpls(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    .local v0, "t":Ljava/lang/Throwable;
    nop

    .line 109
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-instance v3, Lorg/mockito/internal/configuration/plugins/PluginLoader$2;

    invoke-direct {v3, p0, p1, v0}, Lorg/mockito/internal/configuration/plugins/PluginLoader$2;-><init>(Lorg/mockito/internal/configuration/plugins/PluginLoader;Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 108
    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 106
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
