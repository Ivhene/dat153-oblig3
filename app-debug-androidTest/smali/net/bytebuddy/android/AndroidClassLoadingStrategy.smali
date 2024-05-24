.class public abstract Lnet/bytebuddy/android/AndroidClassLoadingStrategy;
.super Ljava/lang/Object;
.source "AndroidClassLoadingStrategy.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/ClassLoadingStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Injecting;,
        Lnet/bytebuddy/android/AndroidClassLoadingStrategy$Wrapping;,
        Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor;
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


# static fields
.field private static final DEX_CLASS_FILE:Ljava/lang/String; = "classes.dex"

.field private static final EMPTY_LIBRARY_PATH:Ljava/lang/String;

.field private static final JAR_FILE_EXTENSION:Ljava/lang/String; = ".jar"


# instance fields
.field private final dexProcessor:Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor;

.field protected final privateDirectory:Ljava/io/File;

.field protected final randomString:Lnet/bytebuddy/utility/RandomString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    const/4 v0, 0x0

    sput-object v0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy;->EMPTY_LIBRARY_PATH:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/io/File;Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor;)V
    .locals 3
    .param p1, "privateDirectory"    # Ljava/io/File;
    .param p2, "dexProcessor"    # Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iput-object p1, p0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy;->privateDirectory:Ljava/io/File;

    .line 120
    iput-object p2, p0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy;->dexProcessor:Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor;

    .line 121
    new-instance v0, Lnet/bytebuddy/utility/RandomString;

    invoke-direct {v0}, Lnet/bytebuddy/utility/RandomString;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy;->randomString:Lnet/bytebuddy/utility/RandomString;

    .line 122
    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 73
    sget-object v0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy;->EMPTY_LIBRARY_PATH:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected abstract doLoad(Ljava/lang/ClassLoader;Ljava/util/Set;Ljava/io/File;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Set<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public load(Ljava/lang/ClassLoader;Ljava/util/Map;)Ljava/util/Map;
    .locals 8
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

    .line 128
    .local p2, "types":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;[B>;"
    const-string v0, "Could not delete "

    const-string v1, "net.bytebuddy"

    iget-object v2, p0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy;->dexProcessor:Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor;

    invoke-interface {v2}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor;->create()Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$Conversion;

    move-result-object v2

    .line 129
    .local v2, "conversion":Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$Conversion;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 130
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lnet/bytebuddy/description/type/TypeDescription;[B>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v5}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-interface {v2, v5, v6}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$Conversion;->register(Ljava/lang/String;[B)V

    .line 131
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lnet/bytebuddy/description/type/TypeDescription;[B>;"
    goto :goto_0

    .line 132
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy;->privateDirectory:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lnet/bytebuddy/android/AndroidClassLoadingStrategy;->randomString:Lnet/bytebuddy/utility/RandomString;

    invoke-virtual {v6}, Lnet/bytebuddy/utility/RandomString;->nextString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jar"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    .local v3, "jar":Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 137
    new-instance v4, Ljava/util/jar/JarOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 139
    .local v4, "zipOutputStream":Ljava/util/jar/JarOutputStream;
    :try_start_1
    new-instance v5, Ljava/util/jar/JarEntry;

    const-string v6, "classes.dex"

    invoke-direct {v5, v6}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 140
    invoke-interface {v2, v4}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$Conversion;->drainTo(Ljava/io/OutputStream;)V

    .line 141
    invoke-virtual {v4}, Ljava/util/jar/JarOutputStream;->closeEntry()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    :try_start_2
    invoke-virtual {v4}, Ljava/util/jar/JarOutputStream;->close()V

    .line 144
    nop

    .line 145
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v3}, Lnet/bytebuddy/android/AndroidClassLoadingStrategy;->doLoad(Ljava/lang/ClassLoader;Ljava/util/Set;Ljava/io/File;)Ljava/util/Map;

    move-result-object v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_1

    .line 150
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 145
    :cond_1
    return-object v5

    .line 143
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-virtual {v4}, Ljava/util/jar/JarOutputStream;->close()V

    .line 144
    nop

    .end local v2    # "conversion":Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$Conversion;
    .end local v3    # "jar":Ljava/io/File;
    .end local p1    # "classLoader":Ljava/lang/ClassLoader;
    .end local p2    # "types":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;[B>;"
    throw v5

    .line 135
    .end local v4    # "zipOutputStream":Ljava/util/jar/JarOutputStream;
    .restart local v2    # "conversion":Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$Conversion;
    .restart local v3    # "jar":Ljava/io/File;
    .restart local p1    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p2    # "types":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;[B>;"
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot create "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "conversion":Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$Conversion;
    .end local v3    # "jar":Ljava/io/File;
    .end local p1    # "classLoader":Ljava/lang/ClassLoader;
    .end local p2    # "types":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;[B>;"
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 149
    .restart local v2    # "conversion":Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$Conversion;
    .restart local v3    # "jar":Ljava/io/File;
    .restart local p1    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p2    # "types":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;[B>;"
    :catchall_1
    move-exception v4

    goto :goto_1

    .line 146
    :catch_0
    move-exception v4

    .line 147
    .local v4, "exception":Ljava/io/IOException;
    :try_start_4
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot write to zip file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "conversion":Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$Conversion;
    .end local v3    # "jar":Ljava/io/File;
    .end local p1    # "classLoader":Ljava/lang/ClassLoader;
    .end local p2    # "types":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;[B>;"
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 149
    .end local v4    # "exception":Ljava/io/IOException;
    .restart local v2    # "conversion":Lnet/bytebuddy/android/AndroidClassLoadingStrategy$DexProcessor$Conversion;
    .restart local v3    # "jar":Ljava/io/File;
    .restart local p1    # "classLoader":Ljava/lang/ClassLoader;
    .restart local p2    # "types":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/description/type/TypeDescription;[B>;"
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_3

    .line 150
    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 152
    :cond_3
    throw v4
.end method
