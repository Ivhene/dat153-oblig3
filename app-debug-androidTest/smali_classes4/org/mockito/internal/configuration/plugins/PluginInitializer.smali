.class Lorg/mockito/internal/configuration/plugins/PluginInitializer;
.super Ljava/lang/Object;
.source "PluginInitializer.java"


# instance fields
.field private final alias:Ljava/lang/String;

.field private final pluginSwitch:Lorg/mockito/plugins/PluginSwitch;

.field private final plugins:Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;


# direct methods
.method constructor <init>(Lorg/mockito/plugins/PluginSwitch;Ljava/lang/String;Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;)V
    .locals 0
    .param p1, "pluginSwitch"    # Lorg/mockito/plugins/PluginSwitch;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "plugins"    # Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/mockito/internal/configuration/plugins/PluginInitializer;->pluginSwitch:Lorg/mockito/plugins/PluginSwitch;

    .line 24
    iput-object p2, p0, Lorg/mockito/internal/configuration/plugins/PluginInitializer;->alias:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lorg/mockito/internal/configuration/plugins/PluginInitializer;->plugins:Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;

    .line 26
    return-void
.end method


# virtual methods
.method public loadImpl(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 33
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "Failed to load "

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 34
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-nez v1, :cond_0

    .line 35
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 39
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mockito-extensions/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    .local v2, "resources":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    nop

    .line 45
    :try_start_1
    new-instance v3, Lorg/mockito/internal/configuration/plugins/PluginFinder;

    iget-object v4, p0, Lorg/mockito/internal/configuration/plugins/PluginInitializer;->pluginSwitch:Lorg/mockito/plugins/PluginSwitch;

    invoke-direct {v3, v4}, Lorg/mockito/internal/configuration/plugins/PluginFinder;-><init>(Lorg/mockito/plugins/PluginSwitch;)V

    .line 46
    invoke-static {v2}, Lorg/mockito/internal/util/collections/Iterables;->toIterable(Ljava/util/Enumeration;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/mockito/internal/configuration/plugins/PluginFinder;->findPluginClass(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "classOrAlias":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 48
    iget-object v4, p0, Lorg/mockito/internal/configuration/plugins/PluginInitializer;->alias:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 49
    iget-object v4, p0, Lorg/mockito/internal/configuration/plugins/PluginInitializer;->plugins:Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;

    iget-object v5, p0, Lorg/mockito/internal/configuration/plugins/PluginInitializer;->alias:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;->getDefaultPluginClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 51
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 52
    .local v4, "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 53
    .local v5, "plugin":Ljava/lang/Object;
    invoke-virtual {p1, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 55
    .end local v4    # "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "plugin":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x0

    return-object v0

    .line 56
    .end local v3    # "classOrAlias":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 57
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " implementation declared in "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 40
    .end local v2    # "resources":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 41
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public loadImpls(Ljava/lang/Class;)Ljava/util/List;
    .locals 10
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

    .line 63
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "Failed to load "

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 64
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-nez v1, :cond_0

    .line 65
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 69
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mockito-extensions/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    .local v2, "resources":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    nop

    .line 75
    :try_start_1
    new-instance v3, Lorg/mockito/internal/configuration/plugins/PluginFinder;

    iget-object v4, p0, Lorg/mockito/internal/configuration/plugins/PluginInitializer;->pluginSwitch:Lorg/mockito/plugins/PluginSwitch;

    invoke-direct {v3, v4}, Lorg/mockito/internal/configuration/plugins/PluginFinder;-><init>(Lorg/mockito/plugins/PluginSwitch;)V

    .line 77
    invoke-static {v2}, Lorg/mockito/internal/util/collections/Iterables;->toIterable(Ljava/util/Enumeration;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/mockito/internal/configuration/plugins/PluginFinder;->findPluginClasses(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 78
    .local v3, "classesOrAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v4, "impls":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 80
    .local v6, "classOrAlias":Ljava/lang/String;
    iget-object v7, p0, Lorg/mockito/internal/configuration/plugins/PluginInitializer;->alias:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 81
    iget-object v7, p0, Lorg/mockito/internal/configuration/plugins/PluginInitializer;->plugins:Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;

    iget-object v8, p0, Lorg/mockito/internal/configuration/plugins/PluginInitializer;->alias:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/mockito/internal/configuration/plugins/DefaultMockitoPlugins;->getDefaultPluginClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 83
    :cond_1
    invoke-virtual {v1, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 84
    .local v7, "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Class;

    invoke-virtual {v7, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v9, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 85
    .local v8, "plugin":Ljava/lang/Object;
    invoke-virtual {p1, v8}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    nop

    .end local v6    # "classOrAlias":Ljava/lang/String;
    .end local v7    # "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "plugin":Ljava/lang/Object;
    goto :goto_0

    .line 87
    :cond_2
    return-object v4

    .line 88
    .end local v3    # "classesOrAliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "impls":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catch_0
    move-exception v3

    .line 89
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " implementation declared in "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 70
    .end local v2    # "resources":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 71
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
