.class Lorg/mockito/internal/configuration/plugins/PluginFinder;
.super Ljava/lang/Object;
.source "PluginFinder.java"


# instance fields
.field private final pluginSwitch:Lorg/mockito/plugins/PluginSwitch;


# direct methods
.method public constructor <init>(Lorg/mockito/plugins/PluginSwitch;)V
    .locals 0
    .param p1, "pluginSwitch"    # Lorg/mockito/plugins/PluginSwitch;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/mockito/internal/configuration/plugins/PluginFinder;->pluginSwitch:Lorg/mockito/plugins/PluginSwitch;

    .line 22
    return-void
.end method


# virtual methods
.method findPluginClass(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/net/URL;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 25
    .local p1, "resources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/net/URL;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/URL;

    .line 26
    .local v1, "resource":Ljava/net/URL;
    const/4 v2, 0x0

    .line 28
    .local v2, "s":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    move-object v2, v3

    .line 29
    new-instance v3, Lorg/mockito/internal/configuration/plugins/PluginFileReader;

    invoke-direct {v3}, Lorg/mockito/internal/configuration/plugins/PluginFileReader;-><init>()V

    invoke-virtual {v3, v2}, Lorg/mockito/internal/configuration/plugins/PluginFileReader;->readPluginClass(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .local v3, "pluginClassName":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 43
    :goto_1
    invoke-static {v2}, Lorg/mockito/internal/util/io/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 35
    :cond_0
    :try_start_1
    iget-object v4, p0, Lorg/mockito/internal/configuration/plugins/PluginFinder;->pluginSwitch:Lorg/mockito/plugins/PluginSwitch;

    invoke-interface {v4, v3}, Lorg/mockito/plugins/PluginSwitch;->isEnabled(Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    .line 43
    goto :goto_1

    .line 38
    :cond_1
    nop

    .line 43
    invoke-static {v2}, Lorg/mockito/internal/util/io/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 38
    return-object v3

    .line 43
    .end local v3    # "pluginClassName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problems reading plugin implementation from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "resource":Ljava/net/URL;
    .end local v2    # "s":Ljava/io/InputStream;
    .end local p1    # "resources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/net/URL;>;"
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "resource":Ljava/net/URL;
    .restart local v2    # "s":Ljava/io/InputStream;
    .restart local p1    # "resources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/net/URL;>;"
    :goto_2
    invoke-static {v2}, Lorg/mockito/internal/util/io/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 46
    .end local v1    # "resource":Ljava/net/URL;
    .end local v2    # "s":Ljava/io/InputStream;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method findPluginClasses(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/net/URL;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    .local p1, "resources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/net/URL;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v0, "pluginClassNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    .line 52
    .local v2, "resource":Ljava/net/URL;
    const/4 v3, 0x0

    .line 54
    .local v3, "s":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    move-object v3, v4

    .line 55
    new-instance v4, Lorg/mockito/internal/configuration/plugins/PluginFileReader;

    invoke-direct {v4}, Lorg/mockito/internal/configuration/plugins/PluginFileReader;-><init>()V

    invoke-virtual {v4, v3}, Lorg/mockito/internal/configuration/plugins/PluginFileReader;->readPluginClass(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .local v4, "pluginClassName":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 69
    :goto_1
    invoke-static {v3}, Lorg/mockito/internal/util/io/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 61
    :cond_0
    :try_start_1
    iget-object v5, p0, Lorg/mockito/internal/configuration/plugins/PluginFinder;->pluginSwitch:Lorg/mockito/plugins/PluginSwitch;

    invoke-interface {v5, v4}, Lorg/mockito/plugins/PluginSwitch;->isEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 69
    goto :goto_1

    .line 64
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    nop

    .end local v4    # "pluginClassName":Ljava/lang/String;
    invoke-static {v3}, Lorg/mockito/internal/util/io/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 70
    nop

    .line 71
    .end local v2    # "resource":Ljava/net/URL;
    .end local v3    # "s":Ljava/io/InputStream;
    goto :goto_0

    .line 69
    .restart local v2    # "resource":Ljava/net/URL;
    .restart local v3    # "s":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lorg/mockito/exceptions/base/MockitoException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problems reading plugin implementation from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/mockito/exceptions/base/MockitoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "pluginClassNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "resource":Ljava/net/URL;
    .end local v3    # "s":Ljava/io/InputStream;
    .end local p1    # "resources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/net/URL;>;"
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "pluginClassNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "resource":Ljava/net/URL;
    .restart local v3    # "s":Ljava/io/InputStream;
    .restart local p1    # "resources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/net/URL;>;"
    :goto_2
    invoke-static {v3}, Lorg/mockito/internal/util/io/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    .line 72
    .end local v2    # "resource":Ljava/net/URL;
    .end local v3    # "s":Ljava/io/InputStream;
    :cond_2
    return-object v0
.end method
