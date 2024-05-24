.class public Lscenelib/annotations/io/classfile/ClassFileWriter;
.super Ljava/lang/Object;
.source "ClassFileWriter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static help:Z
    .annotation runtime Lorg/checkerframework/org/plumelib/options/Option;
        value = "-h print usage information and exit"
    .end annotation
.end field

.field private static linesep:Ljava/lang/String;

.field static usage:Ljava/lang/String;

.field public static verbose:Z
    .annotation runtime Lorg/checkerframework/org/plumelib/options/Option;
        value = "print progress messages"
    .end annotation
.end field

.field public static version:Z
    .annotation runtime Lorg/checkerframework/org/plumelib/options/Option;
        value = "print version information and exit"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    nop

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lscenelib/annotations/io/classfile/ClassFileWriter;->help:Z

    .line 25
    sput-boolean v0, Lscenelib/annotations/io/classfile/ClassFileWriter;->version:Z

    .line 28
    sput-boolean v0, Lscenelib/annotations/io/classfile/ClassFileWriter;->verbose:Z

    .line 30
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lscenelib/annotations/io/classfile/ClassFileWriter;->linesep:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usage: insert-annotations [options] class1 indexfile1 class2 indexfile2 ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lscenelib/annotations/io/classfile/ClassFileWriter;->linesep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "For each class/index file pair (a.b.C a.b.C.jaif), read annotations from"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lscenelib/annotations/io/classfile/ClassFileWriter;->linesep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "the index file a.b.C.jaif and insert them into the class a.b.C, then"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lscenelib/annotations/io/classfile/ClassFileWriter;->linesep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "output the merged class file to a.b.C.class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lscenelib/annotations/io/classfile/ClassFileWriter;->linesep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Each class is either a fully-qualified name of a class on your classpath,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lscenelib/annotations/io/classfile/ClassFileWriter;->linesep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "or a path to a .class file, such as e.g. /.../path/to/a/b/C.class ."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lscenelib/annotations/io/classfile/ClassFileWriter;->linesep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Arguments beginning with a single \'@\' are interpreted as argument files to"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lscenelib/annotations/io/classfile/ClassFileWriter;->linesep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "be read and expanded into the command line.  Options:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lscenelib/annotations/io/classfile/ClassFileWriter;->usage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static insert(Lscenelib/annotations/el/AScene;Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .locals 3
    .param p0, "scene"    # Lscenelib/annotations/el/AScene;
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "overwrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;-><init>(Ljava/io/InputStream;)V

    .line 214
    .local v0, "classReader":Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    new-instance v1, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-direct {v1, v0, p0, p3}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassReader;Lscenelib/annotations/el/AScene;Z)V

    .line 217
    .local v1, "classAnnotationSceneWriter":Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->accept(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;Z)V

    .line 219
    invoke-virtual {v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 220
    return-void
.end method

.method public static insert(Lscenelib/annotations/el/AScene;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "scene"    # Lscenelib/annotations/el/AScene;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "outputFileName"    # Ljava/lang/String;
    .param p3, "overwrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;-><init>(Ljava/lang/String;)V

    .line 243
    .local v0, "classReader":Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    new-instance v1, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-direct {v1, v0, p0, p3}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassReader;Lscenelib/annotations/el/AScene;Z)V

    .line 246
    .local v1, "classAnnotationSceneWriter":Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->accept(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;Z)V

    .line 248
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 249
    .local v2, "fos":Ljava/io/OutputStream;
    invoke-virtual {v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 250
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 251
    return-void
.end method

.method public static insert(Lscenelib/annotations/el/AScene;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "scene"    # Lscenelib/annotations/el/AScene;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "overwrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, "in":Ljava/io/InputStream;
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    invoke-direct {v1, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;-><init>(Ljava/io/InputStream;)V

    .line 182
    .local v1, "classReader":Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 184
    new-instance v2, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;

    invoke-direct {v2, v1, p0, p2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassReader;Lscenelib/annotations/el/AScene;Z)V

    .line 186
    .local v2, "classAnnotationSceneWriter":Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->accept(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;Z)V

    .line 188
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 189
    .local v3, "fos":Ljava/io/OutputStream;
    invoke-virtual {v2}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 190
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 191
    return-void

    .line 177
    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "classReader":Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    .end local v2    # "classAnnotationSceneWriter":Lscenelib/annotations/io/classfile/ClassAnnotationSceneWriter;
    .end local v3    # "fos":Ljava/io/OutputStream;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 12
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    const-string v0, ".class"

    new-instance v1, Lorg/checkerframework/org/plumelib/options/Options;

    sget-object v2, Lscenelib/annotations/io/classfile/ClassFileWriter;->usage:Ljava/lang/String;

    const-class v3, Lscenelib/annotations/io/classfile/ClassFileWriter;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/org/plumelib/options/Options;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .local v1, "options":Lorg/checkerframework/org/plumelib/options/Options;
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0}, Lcom/sun/tools/javac/main/CommandLine;->parse([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "cl_args":[Ljava/lang/String;
    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/org/plumelib/options/Options;->parse(Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 78
    .local v3, "file_args":[Ljava/lang/String;
    goto :goto_0

    .line 71
    .end local v3    # "file_args":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 72
    .local v3, "ex":Ljava/io/IOException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 73
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "(For non-argfile beginning with \"@\", use \"@@\" for initial \"@\"."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Alternative for filenames: indicate directory, e.g. as \'./@file\'."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Alternative for flags: use \'=\', as in \'-o=@Deprecated\'.)"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    const/4 v4, 0x0

    .line 77
    .local v4, "file_args":[Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    move-object v3, v4

    .line 80
    .end local v4    # "file_args":[Ljava/lang/String;
    .local v3, "file_args":[Ljava/lang/String;
    :goto_0
    sget-boolean v4, Lscenelib/annotations/io/classfile/ClassFileWriter;->version:Z

    if-eqz v4, :cond_0

    .line 81
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Annotation File Utilities v3.6.47"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "insert-annotations (%s)"

    invoke-virtual {v4, v6, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 84
    :cond_0
    sget-boolean v4, Lscenelib/annotations/io/classfile/ClassFileWriter;->help:Z

    if-eqz v4, :cond_1

    .line 85
    invoke-virtual {v1}, Lorg/checkerframework/org/plumelib/options/Options;->printUsage()V

    .line 87
    :cond_1
    sget-boolean v4, Lscenelib/annotations/io/classfile/ClassFileWriter;->version:Z

    const/4 v5, -0x1

    if-nez v4, :cond_2

    sget-boolean v4, Lscenelib/annotations/io/classfile/ClassFileWriter;->help:Z

    if-eqz v4, :cond_3

    .line 88
    :cond_2
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 91
    :cond_3
    array-length v4, v3

    if-nez v4, :cond_4

    .line 92
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "No arguments given."

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1}, Lorg/checkerframework/org/plumelib/options/Options;->printUsage()V

    .line 94
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 96
    :cond_4
    array-length v4, v3

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v2, :cond_5

    .line 97
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Must supply an even number of arguments."

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1}, Lorg/checkerframework/org/plumelib/options/Options;->printUsage()V

    .line 99
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 103
    :cond_5
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v6, v3

    if-ge v4, v6, :cond_7

    .line 104
    aget-object v6, v3, v4

    invoke-static {v6}, Lscenelib/annotations/io/classfile/ClassFileReader;->checkClass(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 105
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 103
    :cond_6
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 109
    .end local v4    # "i":I
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    array-length v5, v3

    if-ge v4, v5, :cond_c

    .line 110
    aget-object v5, v3, v4

    .line 111
    .local v5, "className":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    .line 112
    array-length v6, v3

    if-lt v4, v6, :cond_8

    .line 114
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Error: incorrect number of arguments"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Run insert-annotations --help for usage information"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    return-void

    .line 118
    :cond_8
    aget-object v6, v3, v4

    .line 120
    .local v6, "indexFileName":Ljava/lang/String;
    new-instance v7, Lscenelib/annotations/el/AScene;

    invoke-direct {v7}, Lscenelib/annotations/el/AScene;-><init>()V

    .line 122
    .local v7, "scene":Lscenelib/annotations/el/AScene;
    invoke-static {v6, v7}, Lscenelib/annotations/io/IndexFileParser;->parseFile(Ljava/lang/String;Lscenelib/annotations/el/AScene;)Ljava/util/Map;

    .line 127
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 128
    move-object v8, v5

    .line 129
    .local v8, "fileName":Ljava/lang/String;
    sget-boolean v9, Lscenelib/annotations/io/classfile/ClassFileWriter;->verbose:Z

    if-eqz v9, :cond_9

    .line 130
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "Adding annotations to class file %s%n"

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 132
    :cond_9
    invoke-static {v7, v8, v2}, Lscenelib/annotations/io/classfile/ClassFileWriter;->insert(Lscenelib/annotations/el/AScene;Ljava/lang/String;Z)V

    .line 133
    .end local v8    # "fileName":Ljava/lang/String;
    goto :goto_3

    .line 134
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 135
    .local v8, "outputFileName":Ljava/lang/String;
    sget-boolean v9, Lscenelib/annotations/io/classfile/ClassFileWriter;->verbose:Z

    if-eqz v9, :cond_b

    .line 136
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "Reading class file %s; writing with annotations to %s%n"

    filled-new-array {v5, v8}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 139
    :cond_b
    invoke-static {v7, v5, v8, v2}, Lscenelib/annotations/io/classfile/ClassFileWriter;->insert(Lscenelib/annotations/el/AScene;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    .end local v8    # "outputFileName":Ljava/lang/String;
    :goto_3
    nop

    .line 109
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "indexFileName":Ljava/lang/String;
    .end local v7    # "scene":Lscenelib/annotations/el/AScene;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 144
    .restart local v5    # "className":Ljava/lang/String;
    .restart local v6    # "indexFileName":Ljava/lang/String;
    .restart local v7    # "scene":Lscenelib/annotations/el/AScene;
    :catch_1
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown error trying to insert annotations from: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Please submit a bug report at"

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "  https://github.com/typetools/annotation-tools/issues"

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 150
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Be sure to include a copy of the following output trace, instructions on how"

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "to reproduce this error, and all input files.  Thanks!"

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    return-void

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "IOException: %s%n"

    invoke-virtual {v2, v9, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 143
    return-void

    .line 155
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "i":I
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "indexFileName":Ljava/lang/String;
    .end local v7    # "scene":Lscenelib/annotations/el/AScene;
    :cond_c
    return-void
.end method
