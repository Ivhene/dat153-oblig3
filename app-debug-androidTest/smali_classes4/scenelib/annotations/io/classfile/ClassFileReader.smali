.class public Lscenelib/annotations/io/classfile/ClassFileReader;
.super Ljava/lang/Object;
.source "ClassFileReader.java"


# static fields
.field public static final INDEX_UTILS_VERSION:Ljava/lang/String; = "Annotation File Utilities v3.6.47"

.field public static help:Z
    .annotation runtime Lorg/checkerframework/org/plumelib/options/Option;
        value = "-h print usage information and exit"
    .end annotation
.end field

.field public static ignore_bridge_methods:Z
    .annotation runtime Lorg/checkerframework/org/plumelib/options/Option;
        value = "-b omit annotations from bridge (compiler-created) methods"
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

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lscenelib/annotations/io/classfile/ClassFileReader;->ignore_bridge_methods:Z

    .line 26
    sput-boolean v0, Lscenelib/annotations/io/classfile/ClassFileReader;->help:Z

    .line 29
    sput-boolean v0, Lscenelib/annotations/io/classfile/ClassFileReader;->version:Z

    .line 32
    sput-boolean v0, Lscenelib/annotations/io/classfile/ClassFileReader;->verbose:Z

    .line 34
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lscenelib/annotations/io/classfile/ClassFileReader;->linesep:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extract-annotations [options] class1 class2 ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lscenelib/annotations/io/classfile/ClassFileReader;->linesep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Each argument is a class a.b.C (that is on the classpath) or a class file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lscenelib/annotations/io/classfile/ClassFileReader;->linesep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "a/b/C.class.  Extracts the annotations from each such argument and prints"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lscenelib/annotations/io/classfile/ClassFileReader;->linesep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "them in index-file format to a.b.C.jaif .  Arguments beginning with a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lscenelib/annotations/io/classfile/ClassFileReader;->linesep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "single \'@\' are interpreted as argument files to be read and expanded into"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lscenelib/annotations/io/classfile/ClassFileReader;->linesep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "the command line.  A few options are available only when invoked via the"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lscenelib/annotations/io/classfile/ClassFileReader;->linesep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "script extract-annotations, not when invoked as a Java program:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lscenelib/annotations/io/classfile/ClassFileReader;->linesep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  --debug-script                       - make the extract-annotations script output debugging information"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lscenelib/annotations/io/classfile/ClassFileReader;->linesep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -cp <classpath>                      - use the given classpath instead of the CLASSPATH environment variable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lscenelib/annotations/io/classfile/ClassFileReader;->linesep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  -classpath <classpath>               - use the given classpath instead of the CLASSPATH environment variable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lscenelib/annotations/io/classfile/ClassFileReader;->linesep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Options that are always available:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lscenelib/annotations/io/classfile/ClassFileReader;->usage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkClass(Ljava/lang/String;)Z
    .locals 3
    .param p0, "arg"    # Ljava/lang/String;

    .line 159
    const-string v0, ".class"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: bad class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Use a fully qualified class name such as java.lang.Object"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 162
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "or a filename such as .../path/to/MyClass.class"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x0

    return v0

    .line 165
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 11
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    new-instance v0, Lorg/checkerframework/org/plumelib/options/Options;

    sget-object v1, Lscenelib/annotations/io/classfile/ClassFileReader;->usage:Ljava/lang/String;

    const-class v2, Lscenelib/annotations/io/classfile/ClassFileReader;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/plumelib/options/Options;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .local v0, "options":Lorg/checkerframework/org/plumelib/options/Options;
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0}, Lcom/sun/tools/javac/main/CommandLine;->parse([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "cl_args":[Ljava/lang/String;
    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/plumelib/options/Options;->parse(Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v2    # "cl_args":[Ljava/lang/String;
    .local v1, "file_args":[Ljava/lang/String;
    goto :goto_0

    .line 81
    .end local v1    # "file_args":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 82
    .local v2, "ex":Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 83
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "(For non-argfile beginning with \"@\", use \"@@\" for initial \"@\"."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Alternative for filenames: indicate directory, e.g. as \'./@file\'."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Alternative for flags: use \'=\', as in \'-o=@Deprecated\'.)"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    const/4 v3, 0x0

    .line 87
    .local v3, "file_args":[Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    move-object v1, v3

    .line 90
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v3    # "file_args":[Ljava/lang/String;
    .restart local v1    # "file_args":[Ljava/lang/String;
    :goto_0
    sget-boolean v2, Lscenelib/annotations/io/classfile/ClassFileReader;->version:Z

    if-eqz v2, :cond_0

    .line 91
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Annotation File Utilities v3.6.47"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "extract-annotations (%s)"

    invoke-virtual {v2, v4, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 93
    :cond_0
    sget-boolean v2, Lscenelib/annotations/io/classfile/ClassFileReader;->help:Z

    if-eqz v2, :cond_1

    .line 94
    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/options/Options;->printUsage()V

    .line 96
    :cond_1
    sget-boolean v2, Lscenelib/annotations/io/classfile/ClassFileReader;->version:Z

    const/4 v3, -0x1

    if-nez v2, :cond_2

    sget-boolean v2, Lscenelib/annotations/io/classfile/ClassFileReader;->help:Z

    if-eqz v2, :cond_3

    .line 97
    :cond_2
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 100
    :cond_3
    array-length v2, v1

    if-nez v2, :cond_4

    .line 101
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "No arguments given."

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Lorg/checkerframework/org/plumelib/options/Options;->printUsage()V

    .line 103
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 107
    :cond_4
    array-length v2, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v2, :cond_6

    aget-object v6, v1, v5

    .line 108
    .local v6, "arg":Ljava/lang/String;
    invoke-static {v6}, Lscenelib/annotations/io/classfile/ClassFileReader;->checkClass(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 109
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 107
    .end local v6    # "arg":Ljava/lang/String;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 113
    :cond_6
    array-length v2, v1

    :goto_2
    if-ge v4, v2, :cond_b

    aget-object v3, v1, v4

    .line 114
    .local v3, "origName":Ljava/lang/String;
    sget-boolean v5, Lscenelib/annotations/io/classfile/ClassFileReader;->verbose:Z

    if-eqz v5, :cond_7

    .line 115
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reading: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    :cond_7
    move-object v5, v3

    .line 118
    .local v5, "className":Ljava/lang/String;
    const-string v6, ".class"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 119
    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 122
    :cond_8
    new-instance v7, Lscenelib/annotations/el/AScene;

    invoke-direct {v7}, Lscenelib/annotations/el/AScene;-><init>()V

    .line 124
    .local v7, "scene":Lscenelib/annotations/el/AScene;
    :try_start_1
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 125
    invoke-static {v7, v5}, Lscenelib/annotations/io/classfile/ClassFileReader;->read(Lscenelib/annotations/el/AScene;Ljava/lang/String;)V

    goto :goto_3

    .line 127
    :cond_9
    invoke-static {v7, v5}, Lscenelib/annotations/io/classfile/ClassFileReader;->readFromClass(Lscenelib/annotations/el/AScene;Ljava/lang/String;)V

    .line 129
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".jaif"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, "outputFile":Ljava/lang/String;
    sget-boolean v8, Lscenelib/annotations/io/classfile/ClassFileReader;->verbose:Z

    if-eqz v8, :cond_a

    .line 131
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "printing results to : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    :cond_a
    invoke-static {v7, v6}, Lscenelib/annotations/io/IndexFileWriter;->write(Lscenelib/annotations/el/AScene;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    .end local v6    # "outputFile":Ljava/lang/String;
    nop

    .line 113
    .end local v3    # "origName":Ljava/lang/String;
    .end local v5    # "className":Ljava/lang/String;
    .end local v7    # "scene":Lscenelib/annotations/el/AScene;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 139
    .restart local v3    # "origName":Ljava/lang/String;
    .restart local v5    # "className":Ljava/lang/String;
    .restart local v7    # "scene":Lscenelib/annotations/el/AScene;
    :catch_1
    move-exception v2

    .line 140
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown error trying to extract annotations from: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Please submit a bug report at"

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "  https://github.com/typetools/annotation-tools/issues"

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Be sure to include a copy of the output trace, instructions on how"

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 147
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "to reproduce this error, and all input files.  Thanks!"

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    return-void

    .line 134
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 135
    .local v2, "e":Ljava/io/IOException;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "There was an error in reading class: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Did you ensure that this class is on your classpath?"

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    return-void

    .line 151
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "origName":Ljava/lang/String;
    .end local v5    # "className":Ljava/lang/String;
    .end local v7    # "scene":Lscenelib/annotations/el/AScene;
    :cond_b
    return-void
.end method

.method public static read(Lscenelib/annotations/el/AScene;Ljava/io/InputStream;)V
    .locals 1
    .param p0, "scene"    # Lscenelib/annotations/el/AScene;
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0, v0}, Lscenelib/annotations/io/classfile/ClassFileReader;->read(Lscenelib/annotations/el/AScene;Lorg/checkerframework/org/objectweb/asmx/ClassReader;)V

    .line 210
    return-void
.end method

.method public static read(Lscenelib/annotations/el/AScene;Ljava/lang/String;)V
    .locals 1
    .param p0, "scene"    # Lscenelib/annotations/el/AScene;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lscenelib/annotations/io/classfile/ClassFileReader;->read(Lscenelib/annotations/el/AScene;Ljava/io/InputStream;)V

    .line 184
    return-void
.end method

.method public static read(Lscenelib/annotations/el/AScene;Lorg/checkerframework/org/objectweb/asmx/ClassReader;)V
    .locals 2
    .param p0, "scene"    # Lscenelib/annotations/el/AScene;
    .param p1, "classReader"    # Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    .line 213
    new-instance v0, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;

    sget-boolean v1, Lscenelib/annotations/io/classfile/ClassFileReader;->ignore_bridge_methods:Z

    invoke-direct {v0, p1, p0, v1}, Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassReader;Lscenelib/annotations/el/AScene;Z)V

    .line 214
    .local v0, "ca":Lscenelib/annotations/io/classfile/ClassAnnotationSceneReader;
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->accept(Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;Z)V

    .line 215
    return-void
.end method

.method public static readFromClass(Lscenelib/annotations/el/AScene;Ljava/lang/String;)V
    .locals 1
    .param p0, "scene"    # Lscenelib/annotations/el/AScene;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lscenelib/annotations/io/classfile/ClassFileReader;->read(Lscenelib/annotations/el/AScene;Lorg/checkerframework/org/objectweb/asmx/ClassReader;)V

    .line 197
    return-void
.end method
