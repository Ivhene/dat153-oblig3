.class public Lorg/checkerframework/org/apache/bcel/util/ClassPath;
.super Ljava/lang/Object;
.source "ClassPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip;,
        Lorg/checkerframework/org/apache/bcel/util/ClassPath$Dir;,
        Lorg/checkerframework/org/apache/bcel/util/ClassPath$ClassFile;,
        Lorg/checkerframework/org/apache/bcel/util/ClassPath$PathEntry;
    }
.end annotation


# static fields
.field private static final ARCHIVE_FILTER:Ljava/io/FilenameFilter;

.field public static final SYSTEM_CLASS_PATH:Lorg/checkerframework/org/apache/bcel/util/ClassPath;


# instance fields
.field private final class_path:Ljava/lang/String;

.field private parent:Lorg/checkerframework/org/apache/bcel/util/ClassPath;

.field private final paths:[Lorg/checkerframework/org/apache/bcel/util/ClassPath$PathEntry;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lorg/checkerframework/org/apache/bcel/util/ClassPath;

    invoke-static {}, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->getClassPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/util/ClassPath;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->SYSTEM_CLASS_PATH:Lorg/checkerframework/org/apache/bcel/util/ClassPath;

    .line 49
    new-instance v0, Lorg/checkerframework/org/apache/bcel/util/ClassPath$1;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/bcel/util/ClassPath$1;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->ARCHIVE_FILTER:Ljava/io/FilenameFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    invoke-static {}, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->getClassPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/util/ClassPath;-><init>(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "class_path"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->class_path:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/apache/bcel/util/ClassPath$PathEntry;>;"
    new-instance v1, Ljava/util/StringTokenizer;

    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "tok":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 76
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 78
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v3, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    new-instance v4, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Dir;

    invoke-direct {v4, v2}, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Dir;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 84
    :cond_0
    new-instance v4, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip;

    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Lorg/checkerframework/org/apache/bcel/util/ClassPath$Zip;-><init>(Ljava/util/zip/ZipFile;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_1
    :goto_1
    goto :goto_2

    .line 87
    :catch_0
    move-exception v4

    .line 88
    .local v4, "e":Ljava/io/IOException;
    const-string v5, ".zip"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, ".jar"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 89
    :cond_2
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CLASSPATH component "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    goto :goto_0

    .line 94
    .end local v1    # "tok":Ljava/util/StringTokenizer;
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/util/ClassPath$PathEntry;

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->paths:[Lorg/checkerframework/org/apache/bcel/util/ClassPath$PathEntry;

    .line 95
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/util/ClassPath;Ljava/lang/String;)V
    .locals 0
    .param p1, "parent"    # Lorg/checkerframework/org/apache/bcel/util/ClassPath;
    .param p2, "class_path"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p2}, Lorg/checkerframework/org/apache/bcel/util/ClassPath;-><init>(Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->parent:Lorg/checkerframework/org/apache/bcel/util/ClassPath;

    .line 65
    return-void
.end method

.method private getClassFileInternal(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/util/ClassPath$ClassFile;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->paths:[Lorg/checkerframework/org/apache/bcel/util/ClassPath$PathEntry;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 287
    .local v3, "path":Lorg/checkerframework/org/apache/bcel/util/ClassPath$PathEntry;
    invoke-virtual {v3, p1, p2}, Lorg/checkerframework/org/apache/bcel/util/ClassPath$PathEntry;->getClassFile(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/util/ClassPath$ClassFile;

    move-result-object v4

    .line 289
    .local v4, "cf":Lorg/checkerframework/org/apache/bcel/util/ClassPath$ClassFile;
    if-eqz v4, :cond_0

    .line 290
    return-object v4

    .line 286
    .end local v3    # "path":Lorg/checkerframework/org/apache/bcel/util/ClassPath$PathEntry;
    .end local v4    # "cf":Lorg/checkerframework/org/apache/bcel/util/ClassPath$ClassFile;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 294
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getClassPath()Ljava/lang/String;
    .locals 14

    .line 157
    const-string v0, "java.class.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "class_path":Ljava/lang/String;
    const-string v1, "sun.boot.class.path"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "boot_path":Ljava/lang/String;
    const-string v2, "java.ext.dirs"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "ext_path":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v3}, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->getPathComponents(Ljava/lang/String;Ljava/util/List;)V

    .line 162
    invoke-static {v1, v3}, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->getPathComponents(Ljava/lang/String;Ljava/util/List;)V

    .line 163
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v4, "dirs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2, v4}, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->getPathComponents(Ljava/lang/String;Ljava/util/List;)V

    .line 165
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 166
    .local v6, "d":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v7, "ext_dir":Ljava/io/File;
    sget-object v8, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->ARCHIVE_FILTER:Ljava/io/FilenameFilter;

    invoke-virtual {v7, v8}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v8

    .line 168
    .local v8, "extensions":[Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 169
    array-length v9, v8

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_0

    aget-object v11, v8, v10

    .line 170
    .local v11, "extension":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-char v13, Ljava/io/File;->separatorChar:C

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v11    # "extension":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 173
    .end local v6    # "d":Ljava/lang/String;
    .end local v7    # "ext_dir":Ljava/io/File;
    .end local v8    # "extensions":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 174
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v5, "buf":Ljava/lang/StringBuilder;
    const-string v6, ""

    .line 176
    .local v6, "separator":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 177
    .local v8, "path":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    sget-object v6, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 179
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .end local v8    # "path":Ljava/lang/String;
    goto :goto_2

    .line 181
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static getPathComponents(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 137
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    .line 138
    new-instance v0, Ljava/util/StringTokenizer;

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .local v0, "tok":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 147
    .end local v0    # "tok":Ljava/util/StringTokenizer;
    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 128
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/util/ClassPath;

    if-eqz v0, :cond_0

    .line 129
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/bcel/util/ClassPath;

    .line 130
    .local v0, "cp":Lorg/checkerframework/org/apache/bcel/util/ClassPath;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->class_path:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 132
    .end local v0    # "cp":Lorg/checkerframework/org/apache/bcel/util/ClassPath;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    const-string v0, ".class"

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->getInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 315
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 318
    :try_start_1
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v2

    .line 319
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    .line 320
    .local v2, "bytes":[B
    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    nop

    .line 322
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 323
    :cond_0
    nop

    .line 324
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 321
    return-object v2

    .line 314
    .end local v2    # "bytes":[B
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 316
    :cond_1
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v1    # "is":Ljava/io/InputStream;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "suffix":Ljava/lang/String;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 314
    :goto_0
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 322
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "suffix":Ljava/lang/String;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v4

    :try_start_6
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "suffix":Ljava/lang/String;
    :cond_2
    :goto_1
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 323
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "suffix":Ljava/lang/String;
    :catchall_3
    move-exception v1

    if-eqz v0, :cond_3

    .line 324
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 326
    :cond_3
    throw v1
.end method

.method public getClassFile(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/util/ClassPath$ClassFile;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    const-string v0, ".class"

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->getClassFile(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/util/ClassPath$ClassFile;

    move-result-object v0

    return-object v0
.end method

.method public getClassFile(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/util/ClassPath$ClassFile;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    const/4 v0, 0x0

    .line 269
    .local v0, "cf":Lorg/checkerframework/org/apache/bcel/util/ClassPath$ClassFile;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->parent:Lorg/checkerframework/org/apache/bcel/util/ClassPath;

    if-eqz v1, :cond_0

    .line 270
    invoke-direct {v1, p1, p2}, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->getClassFileInternal(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/util/ClassPath$ClassFile;

    move-result-object v0

    .line 273
    :cond_0
    if-nez v0, :cond_1

    .line 274
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->getClassFileInternal(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/util/ClassPath$ClassFile;

    move-result-object v0

    .line 277
    :cond_1
    if-eqz v0, :cond_2

    .line 278
    return-object v0

    .line 281
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    const/16 v0, 0x2e

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->getInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    const/4 v0, 0x0

    .line 204
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 207
    goto :goto_0

    .line 205
    :catch_0
    move-exception v1

    .line 208
    :goto_0
    if-eqz v0, :cond_0

    .line 209
    return-object v0

    .line 211
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->getClassFile(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/util/ClassPath$ClassFile;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/org/apache/bcel/util/ClassPath$ClassFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 344
    .local v0, "index":I
    const-string v1, ""

    .line 345
    .local v1, "suffix":Ljava/lang/String;
    if-lez v0, :cond_0

    .line 346
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 347
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 349
    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->getPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->getClassFile(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/util/ClassPath$ClassFile;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/org/apache/bcel/util/ClassPath$ClassFile;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->paths:[Lorg/checkerframework/org/apache/bcel/util/ClassPath$PathEntry;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 237
    .local v3, "path":Lorg/checkerframework/org/apache/bcel/util/ClassPath$PathEntry;
    invoke-virtual {v3, p1}, Lorg/checkerframework/org/apache/bcel/util/ClassPath$PathEntry;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    move-object v5, v4

    .local v5, "url":Ljava/net/URL;
    if-eqz v4, :cond_0

    .line 238
    return-object v5

    .line 235
    .end local v3    # "path":Lorg/checkerframework/org/apache/bcel/util/ClassPath$PathEntry;
    .end local v5    # "url":Ljava/net/URL;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->paths:[Lorg/checkerframework/org/apache/bcel/util/ClassPath$PathEntry;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 222
    .local v3, "path":Lorg/checkerframework/org/apache/bcel/util/ClassPath$PathEntry;
    invoke-virtual {v3, p1}, Lorg/checkerframework/org/apache/bcel/util/ClassPath$PathEntry;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    move-object v5, v4

    .local v5, "is":Ljava/io/InputStream;
    if-eqz v4, :cond_0

    .line 223
    return-object v5

    .line 220
    .end local v3    # "path":Lorg/checkerframework/org/apache/bcel/util/ClassPath$PathEntry;
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 251
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 252
    .local v0, "results":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/net/URL;>;"
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->paths:[Lorg/checkerframework/org/apache/bcel/util/ClassPath$PathEntry;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 254
    .local v4, "path":Lorg/checkerframework/org/apache/bcel/util/ClassPath$PathEntry;
    invoke-virtual {v4, p1}, Lorg/checkerframework/org/apache/bcel/util/ClassPath$PathEntry;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    move-object v6, v5

    .local v6, "url":Ljava/net/URL;
    if-eqz v5, :cond_0

    .line 255
    invoke-virtual {v0, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 252
    .end local v4    # "path":Lorg/checkerframework/org/apache/bcel/util/ClassPath$PathEntry;
    .end local v6    # "url":Ljava/net/URL;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 119
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->parent:Lorg/checkerframework/org/apache/bcel/util/ClassPath;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->class_path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->parent:Lorg/checkerframework/org/apache/bcel/util/ClassPath;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->class_path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->parent:Lorg/checkerframework/org/apache/bcel/util/ClassPath;

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->parent:Lorg/checkerframework/org/apache/bcel/util/ClassPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->class_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/ClassPath;->class_path:Ljava/lang/String;

    return-object v0
.end method
