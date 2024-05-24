.class public Lorg/checkerframework/org/apache/bcel/util/MemorySensitiveClassPathRepository;
.super Ljava/lang/Object;
.source "MemorySensitiveClassPathRepository.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/util/Repository;


# instance fields
.field private final _loadedClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference<",
            "Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;",
            ">;>;"
        }
    .end annotation
.end field

.field private _path:Lorg/checkerframework/org/apache/bcel/util/ClassPath;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/util/ClassPath;)V
    .locals 1
    .param p1, "path"    # Lorg/checkerframework/org/apache/bcel/util/ClassPath;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/MemorySensitiveClassPathRepository;->_path:Lorg/checkerframework/org/apache/bcel/util/ClassPath;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/MemorySensitiveClassPathRepository;->_loadedClasses:Ljava/util/Map;

    .line 44
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/util/MemorySensitiveClassPathRepository;->_path:Lorg/checkerframework/org/apache/bcel/util/ClassPath;

    .line 45
    return-void
.end method

.method private loadClass(Ljava/io/InputStream;Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 138
    if-eqz p1, :cond_2

    .line 139
    :try_start_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;

    invoke-direct {v0, p1, p2}, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 140
    .local v0, "parser":Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;->parse()Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v1

    .line 141
    .local v1, "clazz":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/bcel/util/MemorySensitiveClassPathRepository;->storeClass(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    nop

    .line 147
    if-eqz p1, :cond_0

    .line 149
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    goto :goto_0

    .line 150
    :catch_0
    move-exception v2

    .line 142
    :cond_0
    :goto_0
    return-object v1

    .line 147
    .end local v0    # "parser":Lorg/checkerframework/org/apache/bcel/classfile/ClassParser;
    .end local v1    # "clazz":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 144
    :catch_1
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Ljava/lang/ClassNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while looking for class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p1    # "is":Ljava/io/InputStream;
    .end local p2    # "className":Ljava/lang/String;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p1    # "is":Ljava/io/InputStream;
    .restart local p2    # "className":Ljava/lang/String;
    :goto_1
    if-eqz p1, :cond_1

    .line 149
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 152
    goto :goto_2

    .line 150
    :catch_2
    move-exception v1

    .line 154
    :cond_1
    :goto_2
    throw v0

    .line 147
    :cond_2
    if-eqz p1, :cond_3

    .line 149
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 152
    :goto_3
    goto :goto_4

    .line 150
    :catch_3
    move-exception v0

    goto :goto_3

    .line 155
    :cond_3
    :goto_4
    new-instance v0, Ljava/lang/ClassNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyntheticRepository could not load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/MemorySensitiveClassPathRepository;->_loadedClasses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 172
    return-void
.end method

.method public findClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/MemorySensitiveClassPathRepository;->_loadedClasses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 70
    .local v0, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;>;"
    if-nez v0, :cond_0

    .line 71
    const/4 v1, 0x0

    return-object v1

    .line 73
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    return-object v1
.end method

.method public getClassPath()Lorg/checkerframework/org/apache/bcel/util/ClassPath;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/MemorySensitiveClassPathRepository;->_path:Lorg/checkerframework/org/apache/bcel/util/ClassPath;

    return-object v0
.end method

.method public loadClass(Ljava/lang/Class;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 9
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

    .line 117
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/util/MemorySensitiveClassPathRepository;->findClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v1

    .line 119
    .local v1, "repositoryClass":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    if-eqz v1, :cond_0

    .line 120
    return-object v1

    .line 122
    :cond_0
    move-object v2, v0

    .line 123
    .local v2, "name":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 124
    .local v3, "i":I
    if-lez v3, :cond_1

    .line 125
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    :cond_1
    const/4 v4, 0x0

    .line 128
    .local v4, "cls":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".class"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .local v5, "clsStream":Ljava/io/InputStream;
    :try_start_1
    invoke-direct {p0, v5, v0}, Lorg/checkerframework/org/apache/bcel/util/MemorySensitiveClassPathRepository;->loadClass(Ljava/io/InputStream;Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v6

    .line 130
    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 129
    :cond_2
    return-object v6

    .line 128
    :catchall_0
    move-exception v6

    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "repositoryClass":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "cls":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v5    # "clsStream":Ljava/io/InputStream;
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v1    # "repositoryClass":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "cls":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .restart local v5    # "clsStream":Ljava/io/InputStream;
    .restart local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_1
    move-exception v7

    if-eqz v5, :cond_3

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v8

    :try_start_5
    invoke-virtual {v6, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "repositoryClass":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "cls":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :goto_0
    throw v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v5    # "clsStream":Ljava/io/InputStream;
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v1    # "repositoryClass":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "cls":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .restart local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v5

    .line 131
    .local v5, "e":Ljava/io/IOException;
    return-object v4
.end method

.method public loadClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 5
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 88
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/util/MemorySensitiveClassPathRepository;->findClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    .line 93
    .local v0, "clazz":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    if-eqz v0, :cond_0

    .line 94
    return-object v0

    .line 97
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/MemorySensitiveClassPathRepository;->_path:Lorg/checkerframework/org/apache/bcel/util/ClassPath;

    invoke-virtual {v1, p1}, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/checkerframework/org/apache/bcel/util/MemorySensitiveClassPathRepository;->loadClass(Ljava/io/InputStream;Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/ClassNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while looking for class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 89
    .end local v0    # "clazz":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid class name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeClass(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V
    .locals 2
    .param p1, "clazz"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 61
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/MemorySensitiveClassPathRepository;->_loadedClasses:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public storeClass(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V
    .locals 3
    .param p1, "clazz"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 52
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/MemorySensitiveClassPathRepository;->_loadedClasses:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->setRepository(Lorg/checkerframework/org/apache/bcel/util/Repository;)V

    .line 54
    return-void
.end method
