.class public Lorg/checkerframework/org/objectweb/asmx/optimizer/Shrinker;
.super Ljava/lang/Object;
.source "Shrinker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/objectweb/asmx/optimizer/Shrinker$ConstantComparator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "mapping":Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v1, "f":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const/4 v3, 0x2

    aget-object v3, p0, v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .local v2, "d":Ljava/io/File;
    invoke-static {v1, v2, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Shrinker;->optimize(Ljava/io/File;Ljava/io/File;Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;)V

    .line 57
    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->unused:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 58
    .local v3, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INFO: unused mapping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method static optimize(Ljava/io/File;Ljava/io/File;Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;)V
    .locals 13
    .param p0, "f"    # Ljava/io/File;
    .param p1, "d"    # Ljava/io/File;
    .param p2, "mapping"    # Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 68
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 69
    aget-object v2, v0, v1

    invoke-static {v2, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Shrinker;->optimize(Ljava/io/File;Ljava/io/File;Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;)V

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_0
    goto/16 :goto_2

    .line 71
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;-><init>()V

    .line 73
    .local v0, "cp":Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;-><init>(Ljava/io/InputStream;)V

    .line 74
    .local v2, "cr":Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    new-instance v3, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;-><init>(Z)V

    .line 75
    .local v3, "cw":Lorg/checkerframework/org/objectweb/asmx/ClassWriter;
    new-instance v5, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;

    invoke-direct {v5, v3, v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;)V

    .line 76
    .local v5, "ccc":Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;
    new-instance v6, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;

    invoke-direct {v6, v5, p2}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;)V

    .line 77
    .local v6, "co":Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;
    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->accept(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;Z)V

    .line 79
    new-instance v8, Ljava/util/TreeSet;

    new-instance v9, Lorg/checkerframework/org/objectweb/asmx/optimizer/Shrinker$ConstantComparator;

    invoke-direct {v9}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Shrinker$ConstantComparator;-><init>()V

    invoke-direct {v8, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 80
    .local v8, "constants":Ljava/util/Set;
    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 82
    new-instance v9, Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    invoke-virtual {v3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->toByteArray()[B

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;-><init>([B)V

    move-object v2, v9

    .line 83
    new-instance v9, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-direct {v9, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;-><init>(Z)V

    move-object v3, v9

    .line 84
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 85
    .local v4, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 86
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;

    .line 87
    .local v9, "c":Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;
    invoke-virtual {v9, v3}, Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;->write(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;)V

    .line 88
    .end local v9    # "c":Lorg/checkerframework/org/objectweb/asmx/optimizer/Constant;
    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {v2, v3, v7}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->accept(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;Z)V

    .line 91
    invoke-virtual {v6}, Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Lorg/checkerframework/org/objectweb/asmx/optimizer/NameMapping;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, "n":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v9

    .line 93
    .local v1, "g":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_5

    .line 94
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 95
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 96
    .local v9, "os":Ljava/io/OutputStream;
    invoke-virtual {v3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/OutputStream;->write([B)V

    .line 97
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    goto :goto_3

    .line 71
    .end local v0    # "cp":Lorg/checkerframework/org/objectweb/asmx/optimizer/ConstantPool;
    .end local v1    # "g":Ljava/io/File;
    .end local v2    # "cr":Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    .end local v3    # "cw":Lorg/checkerframework/org/objectweb/asmx/ClassWriter;
    .end local v4    # "i":Ljava/util/Iterator;
    .end local v5    # "ccc":Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassConstantsCollector;
    .end local v6    # "co":Lorg/checkerframework/org/objectweb/asmx/optimizer/ClassOptimizer;
    .end local v7    # "n":Ljava/lang/String;
    .end local v8    # "constants":Ljava/util/Set;
    .end local v9    # "os":Ljava/io/OutputStream;
    :cond_4
    :goto_2
    nop

    .line 100
    :cond_5
    :goto_3
    return-void
.end method
