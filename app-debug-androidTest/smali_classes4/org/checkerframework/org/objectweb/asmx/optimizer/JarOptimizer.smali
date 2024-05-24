.class public Lorg/checkerframework/org/objectweb/asmx/optimizer/JarOptimizer;
.super Ljava/lang/Object;
.source "JarOptimizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "f":Ljava/io/File;
    invoke-static {v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/JarOptimizer;->optimize(Ljava/io/File;)V

    .line 51
    return-void
.end method

.method static optimize(Ljava/io/File;)V
    .locals 10
    .param p0, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 56
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 57
    aget-object v2, v0, v1

    invoke-static {v2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/JarOptimizer;->optimize(Ljava/io/File;)V

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_0
    goto/16 :goto_2

    .line 59
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 60
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".new"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .local v0, "g":Ljava/io/File;
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 62
    .local v1, "zf":Ljava/util/zip/ZipFile;
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 63
    .local v2, "out":Ljava/util/zip/ZipOutputStream;
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 64
    .local v3, "e":Ljava/util/Enumeration;
    const/16 v4, 0x2710

    new-array v4, v4, [B

    .line 65
    .local v4, "buf":[B
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 66
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 67
    .local v5, "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 68
    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {v2, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 71
    invoke-virtual {v1, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    .line 74
    .local v6, "is":Ljava/io/InputStream;
    :cond_3
    array-length v7, v4

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v8, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 75
    .local v7, "n":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_4

    .line 76
    invoke-virtual {v2, v4, v8, v7}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 78
    :cond_4
    if-ne v7, v9, :cond_3

    .line 79
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 80
    .end local v5    # "ze":Ljava/util/zip/ZipEntry;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "n":I
    goto :goto_1

    .line 81
    :cond_5
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 82
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 83
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 84
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_3

    .line 59
    .end local v0    # "g":Ljava/io/File;
    .end local v1    # "zf":Ljava/util/zip/ZipFile;
    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .end local v3    # "e":Ljava/util/Enumeration;
    .end local v4    # "buf":[B
    :cond_6
    :goto_2
    nop

    .line 86
    :goto_3
    return-void
.end method
