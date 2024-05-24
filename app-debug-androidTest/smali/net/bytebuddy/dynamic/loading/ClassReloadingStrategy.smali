.class public Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;
.super Ljava/lang/Object;
.source "ClassReloadingStrategy.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;,
        Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;,
        Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field protected static final DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher;

.field private static final INSTALLER_TYPE:Ljava/lang/String; = "net.bytebuddy.agent.Installer"

.field private static final INSTRUMENTATION_GETTER:Ljava/lang/String; = "getInstrumentation"

.field private static final STATIC_MEMBER:Ljava/lang/Object;


# instance fields
.field private final bootstrapInjection:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;

.field private final instrumentation:Ljava/lang/instrument/Instrumentation;

.field private final preregisteredTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final strategy:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    nop

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->STATIC_MEMBER:Ljava/lang/Object;

    .line 70
    const-class v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher;

    sput-object v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher;

    return-void
.end method

.method public constructor <init>(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;)V
    .locals 2
    .param p1, "instrumentation"    # Ljava/lang/instrument/Instrumentation;
    .param p2, "strategy"    # Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    .line 101
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Disabled;->INSTANCE:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Disabled;

    .line 104
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 101
    invoke-direct {p0, p1, p2, v0, v1}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;-><init>(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;Ljava/util/Map;)V

    .line 105
    return-void
.end method

.method protected constructor <init>(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;Ljava/util/Map;)V
    .locals 1
    .param p1, "instrumentation"    # Ljava/lang/instrument/Instrumentation;
    .param p2, "strategy"    # Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;
    .param p3, "bootstrapInjection"    # Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/instrument/Instrumentation;",
            "Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;",
            "Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 118
    .local p4, "preregisteredTypes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->instrumentation:Ljava/lang/instrument/Instrumentation;

    .line 120
    invoke-virtual {p2, p1}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;->validate(Ljava/lang/instrument/Instrumentation;)Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->strategy:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    .line 121
    iput-object p3, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->bootstrapInjection:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;

    .line 122
    iput-object p4, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->preregisteredTypes:Ljava/util/Map;

    .line 123
    return-void
.end method

.method public static fromInstalledAgent()Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;
    .locals 4

    .line 162
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "net.bytebuddy.agent.Installer"

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstrumentation"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 164
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->STATIC_MEMBER:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    .line 165
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/instrument/Instrumentation;

    .line 162
    invoke-static {v0}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->of(Ljava/lang/instrument/Instrumentation;)Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "exception":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The Byte Buddy agent is not installed or not accessible"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 166
    .end local v0    # "exception":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 167
    .local v0, "exception":Ljava/lang/RuntimeException;
    throw v0
.end method

.method public static fromInstalledAgent(Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;)Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;
    .locals 5
    .param p0, "strategy"    # Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    .line 191
    :try_start_0
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "net.bytebuddy.agent.Installer"

    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstrumentation"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 193
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->STATIC_MEMBER:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    .line 194
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/instrument/Instrumentation;

    invoke-direct {v0, v1, p0}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;-><init>(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    return-object v0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "exception":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The Byte Buddy agent is not installed or not accessible"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 195
    .end local v0    # "exception":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 196
    .local v0, "exception":Ljava/lang/RuntimeException;
    throw v0
.end method

.method public static of(Ljava/lang/instrument/Instrumentation;)Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;
    .locals 3
    .param p0, "instrumentation"    # Ljava/lang/instrument/Instrumentation;

    .line 135
    sget-object v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->DISPATCHER:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher;

    invoke-interface {v0, p0}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Dispatcher;->isRetransformClassesSupported(Ljava/lang/instrument/Instrumentation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;

    sget-object v1, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;->RETRANSFORMATION:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;-><init>(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;)V

    return-object v0

    .line 137
    :cond_0
    invoke-interface {p0}, Ljava/lang/instrument/Instrumentation;->isRedefineClassesSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;

    sget-object v1, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;->REDEFINITION:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;-><init>(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;)V

    return-object v0

    .line 140
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instrumentation does not support reloading of classes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public enableBootstrapInjection(Ljava/io/File;)Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;
    .locals 5
    .param p1, "folder"    # Ljava/io/File;

    .line 278
    new-instance v0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->instrumentation:Ljava/lang/instrument/Instrumentation;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->strategy:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    new-instance v3, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Enabled;

    invoke-direct {v3, p1}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection$Enabled;-><init>(Ljava/io/File;)V

    iget-object v4, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->preregisteredTypes:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;-><init>(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->strategy:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    check-cast p1, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->strategy:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->instrumentation:Ljava/lang/instrument/Instrumentation;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->bootstrapInjection:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;

    iget-object v3, p1, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->bootstrapInjection:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->preregisteredTypes:Ljava/util/Map;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->preregisteredTypes:Ljava/util/Map;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->strategy:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    invoke-virtual {v1}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->bootstrapInjection:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->preregisteredTypes:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public load(Ljava/lang/ClassLoader;Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[B>;)",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 206
    .local p2, "types":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;[B>;"
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->preregisteredTypes:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 207
    .local v0, "availableTypes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-interface {v1, p1}, Ljava/lang/instrument/Instrumentation;->getInitiatedClasses(Ljava/lang/ClassLoader;)[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 208
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v4}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 210
    :cond_0
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 211
    .local v1, "classDefinitions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/instrument/ClassDefinition;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 212
    .local v2, "loadedClasses":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/Class<*>;>;"
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 213
    .local v3, "unloadedClasses":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;[B>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 214
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lnet/bytebuddy/description/type/TypeDescription;[B>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v6}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 215
    .local v6, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v6, :cond_1

    .line 216
    new-instance v7, Ljava/lang/instrument/ClassDefinition;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-direct {v7, v6, v8}, Ljava/lang/instrument/ClassDefinition;-><init>(Ljava/lang/Class;[B)V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 219
    :cond_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lnet/bytebuddy/description/type/TypeDescription;[B>;"
    .end local v6    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    goto :goto_1

    .line 223
    :cond_2
    :try_start_0
    iget-object v4, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->strategy:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    iget-object v5, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-virtual {v4, v5, v1}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;->apply(Ljava/lang/instrument/Instrumentation;Ljava/util/Map;)V

    .line 224
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 225
    if-nez p1, :cond_3

    iget-object v4, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->bootstrapInjection:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;

    iget-object v5, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->instrumentation:Ljava/lang/instrument/Instrumentation;

    .line 226
    invoke-interface {v4, v5}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;->make(Ljava/lang/instrument/Instrumentation;)Lnet/bytebuddy/dynamic/loading/ClassInjector;

    move-result-object v4

    goto :goto_3

    :cond_3
    new-instance v4, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;

    invoke-direct {v4, p1}, Lnet/bytebuddy/dynamic/loading/ClassInjector$UsingReflection;-><init>(Ljava/lang/ClassLoader;)V

    .line 227
    :goto_3
    invoke-interface {v4, v3}, Lnet/bytebuddy/dynamic/loading/ClassInjector;->inject(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 225
    invoke-interface {v2, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/instrument/UnmodifiableClassException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_4
    nop

    .line 234
    return-object v2

    .line 231
    :catch_0
    move-exception v4

    .line 232
    .local v4, "exception":Ljava/lang/instrument/UnmodifiableClassException;
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot redefine specified class"

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 229
    .end local v4    # "exception":Ljava/lang/instrument/UnmodifiableClassException;
    :catch_1
    move-exception v4

    .line 230
    .local v4, "exception":Ljava/lang/ClassNotFoundException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Could not locate classes for redefinition"

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public varargs preregistered([Ljava/lang/Class;)Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;"
        }
    .end annotation

    .line 288
    .local p1, "type":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->preregisteredTypes:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 289
    .local v0, "preregisteredTypes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 290
    .local v3, "aType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v3}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .end local v3    # "aType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
    :cond_0
    new-instance v1, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;

    iget-object v2, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->instrumentation:Ljava/lang/instrument/Instrumentation;

    iget-object v3, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->strategy:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    iget-object v4, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->bootstrapInjection:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;

    invoke-direct {v1, v2, v3, v4, v0}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;-><init>(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$BootstrapInjection;Ljava/util/Map;)V

    return-object v1
.end method

.method public varargs reset(Lnet/bytebuddy/dynamic/ClassFileLocator;[Ljava/lang/Class;)Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;
    .locals 4
    .param p1, "classFileLocator"    # Lnet/bytebuddy/dynamic/ClassFileLocator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    .local p2, "type":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p2

    if-lez v0, :cond_0

    .line 261
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->strategy:Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->instrumentation:Ljava/lang/instrument/Instrumentation;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy$Strategy;->reset(Ljava/lang/instrument/Instrumentation;Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/instrument/UnmodifiableClassException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "exception":Ljava/lang/instrument/UnmodifiableClassException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot reset types "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 262
    .end local v0    # "exception":Ljava/lang/instrument/UnmodifiableClassException;
    :catch_1
    move-exception v0

    .line 263
    .local v0, "exception":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot locate types "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 268
    .end local v0    # "exception":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    return-object p0
.end method

.method public varargs reset([Ljava/lang/Class;)Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    .local p1, "type":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p1

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;->reset(Lnet/bytebuddy/dynamic/ClassFileLocator;[Ljava/lang/Class;)Lnet/bytebuddy/dynamic/loading/ClassReloadingStrategy;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0
.end method
