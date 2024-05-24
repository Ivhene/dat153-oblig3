.class public Lorg/checkerframework/org/apache/bcel/util/ClassLoaderRepository;
.super Ljava/lang/Object;
.source "ClassLoaderRepository.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/util/Repository;


# instance fields
.field private final loadedClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;",
            ">;"
        }
    .end annotation
.end field

.field private final loader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassLoaderRepository;->loadedClasses:Ljava/util/Map;

    .line 48
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/util/ClassLoaderRepository;->loader:Ljava/lang/ClassLoader;

    .line 49
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassLoaderRepository;->loadedClasses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 115
    return-void
.end method

.method public findClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassLoaderRepository;->loadedClasses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassLoaderRepository;->loadedClasses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getClassPath()Lorg/checkerframework/org/apache/bcel/util/ClassPath;
    .locals 1

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadClass(Ljava/lang/Class;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 106
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/util/ClassLoaderRepository;->loadClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    return-object v0
.end method

.method public loadClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 85
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "classFile":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/util/ClassLoaderRepository;->findClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v1

    .line 87
    .local v1, "RC":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    if-eqz v1, :cond_0

    .line 88
    return-object v1

    .line 90
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/util/ClassLoaderRepository;->loader:Ljava/lang/ClassLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_2

    .line 94
    :try_start_1
    new-instance v3, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;

    invoke-direct {v3, v2, p1}, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 95
    .local v3, "parser":Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->parse()Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v4

    move-object v1, v4

    .line 96
    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/bcel/util/ClassLoaderRepository;->storeClass(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    nop

    .line 98
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 97
    :cond_1
    return-object v1

    .line 90
    .end local v3    # "parser":Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 92
    :cond_2
    :try_start_3
    new-instance v3, Ljava/lang/ClassNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "classFile":Ljava/lang/String;
    .end local v1    # "RC":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local p1    # "className":Ljava/lang/String;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    :goto_0
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 98
    .restart local v0    # "classFile":Ljava/lang/String;
    .restart local v1    # "RC":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local p1    # "className":Ljava/lang/String;
    :catchall_1
    move-exception v4

    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v5

    :try_start_6
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "classFile":Ljava/lang/String;
    .end local v1    # "RC":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local p1    # "className":Ljava/lang/String;
    :cond_3
    :goto_1
    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v0    # "classFile":Ljava/lang/String;
    .restart local v1    # "RC":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .restart local p1    # "className":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/ClassNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public removeClass(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V
    .locals 2
    .param p1, "clazz"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 67
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassLoaderRepository;->loadedClasses:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public storeClass(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V
    .locals 2
    .param p1, "clazz"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 57
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassLoaderRepository;->loadedClasses:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->setRepository(Lorg/checkerframework/org/apache/bcel/util/Repository;)V

    .line 59
    return-void
.end method
