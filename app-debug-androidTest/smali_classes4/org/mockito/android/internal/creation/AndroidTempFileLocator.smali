.class Lorg/mockito/android/internal/creation/AndroidTempFileLocator;
.super Ljava/lang/Object;
.source "AndroidTempFileLocator.java"


# static fields
.field static final target:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 17
    const/4 v0, 0x0

    .line 19
    .local v0, "t":Ljava/io/File;
    :try_start_0
    const-string v1, "org.mockito.android.target"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, "user":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 21
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 24
    .end local v1    # "user":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v1

    .line 25
    :goto_0
    if-nez v0, :cond_1

    .line 26
    const-string v1, "android.support.test.InstrumentationRegistry"

    invoke-static {v1}, Lorg/mockito/android/internal/creation/AndroidTempFileLocator;->getCacheDirFromInstrumentationRegistry(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 28
    :cond_1
    if-nez v0, :cond_2

    .line 29
    const-string v1, "androidx.test.InstrumentationRegistry"

    invoke-static {v1}, Lorg/mockito/android/internal/creation/AndroidTempFileLocator;->getCacheDirFromInstrumentationRegistry(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 31
    :cond_2
    if-nez v0, :cond_4

    .line 33
    :try_start_1
    const-string v1, "dalvik.system.PathClassLoader"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 34
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "path"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 35
    .local v2, "pathField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 36
    const-class v3, Lorg/mockito/android/internal/creation/AndroidTempFileLocator;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 37
    .local v3, "pathFromThisClassLoader":Ljava/lang/String;
    invoke-static {v3}, Lorg/mockito/android/internal/creation/AndroidTempFileLocator;->guessPath(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v4

    .line 38
    .local v4, "results":[Ljava/io/File;
    array-length v5, v4

    if-lez v5, :cond_3

    .line 39
    const/4 v5, 0x0

    aget-object v5, v4, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v5

    .line 42
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "pathField":Ljava/lang/reflect/Field;
    .end local v3    # "pathFromThisClassLoader":Ljava/lang/String;
    .end local v4    # "results":[Ljava/io/File;
    :cond_3
    goto :goto_1

    .line 41
    :catchall_1
    move-exception v1

    .line 44
    :cond_4
    :goto_1
    sput-object v0, Lorg/mockito/android/internal/creation/AndroidTempFileLocator;->target:Ljava/io/File;

    .line 45
    .end local v0    # "t":Ljava/io/File;
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fileOrDirExists(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 99
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private static getCacheDirFromInstrumentationRegistry(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "className"    # Ljava/lang/String;

    .line 49
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 50
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getTargetContext"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 51
    .local v1, "context":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getCacheDir"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 52
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "context":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method private static guessPath(Ljava/lang/String;)[Ljava/io/File;
    .locals 12
    .param p0, "input"    # Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {p0}, Lorg/mockito/android/internal/creation/AndroidTempFileLocator;->splitPathList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 60
    .local v4, "potential":Ljava/lang/String;
    const-string v5, "/data/app/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 61
    goto :goto_1

    .line 63
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 64
    .local v5, "start":I
    const-string v6, ".apk"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 65
    .local v6, "end":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    if-eq v6, v7, :cond_1

    .line 66
    goto :goto_1

    .line 68
    :cond_1
    const-string v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 69
    .local v7, "dash":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 70
    move v6, v7

    .line 72
    :cond_2
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 73
    .local v8, "packageName":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/data/data/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v9, "dataDir":Ljava/io/File;
    invoke-static {v9}, Lorg/mockito/android/internal/creation/AndroidTempFileLocator;->isWritableDirectory(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 75
    new-instance v10, Ljava/io/File;

    const-string v11, "cache"

    invoke-direct {v10, v9, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    .local v10, "cacheDir":Ljava/io/File;
    invoke-static {v10}, Lorg/mockito/android/internal/creation/AndroidTempFileLocator;->fileOrDirExists(Ljava/io/File;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 77
    :cond_3
    invoke-static {v10}, Lorg/mockito/android/internal/creation/AndroidTempFileLocator;->isWritableDirectory(Ljava/io/File;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 78
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .end local v4    # "potential":Ljava/lang/String;
    .end local v5    # "start":I
    .end local v6    # "end":I
    .end local v7    # "dash":I
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "dataDir":Ljava/io/File;
    .end local v10    # "cacheDir":Ljava/io/File;
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/File;

    return-object v1
.end method

.method private static isWritableDirectory(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 103
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static splitPathList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Ljava/lang/String;

    .line 87
    move-object v0, p0

    .line 88
    .local v0, "trimmed":Ljava/lang/String;
    const-string v1, "dexPath="

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 90
    .local v1, "start":I
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 92
    .local v2, "end":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .line 95
    .end local v1    # "start":I
    .end local v2    # "end":I
    :cond_1
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
