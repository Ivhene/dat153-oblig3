.class public final Lannotator/Source;
.super Ljava/lang/Object;
.source "Source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lannotator/Source$CompilerException;
    }
.end annotation


# instance fields
.field private compiler:Ljavax/tools/JavaCompiler;

.field private diagnostics:Ljavax/tools/DiagnosticCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/tools/DiagnosticCollector<",
            "Ljavax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation
.end field

.field private fileManager:Ljavax/tools/StandardJavaFileManager;

.field private path:Ljava/lang/String;

.field private source:Ljava/lang/StringBuilder;

.field private task:Lcom/sun/source/util/JavacTask;

.field private types:Lcom/sun/tools/javac/code/Types;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 10
    .param p1, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lannotator/Source$CompilerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Ljavax/tools/ToolProvider;->getSystemJavaCompiler()Ljavax/tools/JavaCompiler;

    move-result-object v0

    iput-object v0, p0, Lannotator/Source;->compiler:Ljavax/tools/JavaCompiler;

    .line 52
    if-eqz v0, :cond_3

    .line 56
    new-instance v0, Ljavax/tools/DiagnosticCollector;

    invoke-direct {v0}, Ljavax/tools/DiagnosticCollector;-><init>()V

    iput-object v0, p0, Lannotator/Source;->diagnostics:Ljavax/tools/DiagnosticCollector;

    .line 59
    iget-object v1, p0, Lannotator/Source;->compiler:Ljavax/tools/JavaCompiler;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, v2}, Ljavax/tools/JavaCompiler;->getStandardFileManager(Ljavax/tools/DiagnosticListener;Ljava/util/Locale;Ljava/nio/charset/Charset;)Ljavax/tools/StandardJavaFileManager;

    move-result-object v0

    iput-object v0, p0, Lannotator/Source;->fileManager:Ljavax/tools/StandardJavaFileManager;

    .line 60
    if-eqz v0, :cond_2

    .line 64
    nop

    .line 65
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/tools/StandardJavaFileManager;->getJavaFileObjectsFromStrings(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    .line 70
    .local v0, "fileObjs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljavax/tools/JavaFileObject;>;"
    const-string v1, "-g"

    const-string v2, "-Xlint:-options"

    const-string v3, "-source"

    const-string v4, "8"

    const-string v5, "-target"

    const-string v6, "8"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "stringOpts":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 75
    .local v9, "optsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lannotator/Source;->compiler:Ljavax/tools/JavaCompiler;

    const/4 v3, 0x0

    iget-object v4, p0, Lannotator/Source;->fileManager:Ljavax/tools/StandardJavaFileManager;

    iget-object v5, p0, Lannotator/Source;->diagnostics:Ljavax/tools/DiagnosticCollector;

    const/4 v7, 0x0

    .line 76
    move-object v6, v9

    move-object v8, v0

    invoke-interface/range {v2 .. v8}, Ljavax/tools/JavaCompiler;->getTask(Ljava/io/Writer;Ljavax/tools/JavaFileManager;Ljavax/tools/DiagnosticListener;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljavax/tools/JavaCompiler$CompilationTask;

    move-result-object v2

    .line 77
    .local v2, "cTask":Ljavax/tools/JavaCompiler$CompilationTask;
    instance-of v3, v2, Lcom/sun/source/util/JavacTask;

    if-eqz v3, :cond_1

    .line 80
    move-object v3, v2

    check-cast v3, Lcom/sun/source/util/JavacTask;

    iput-object v3, p0, Lannotator/Source;->task:Lcom/sun/source/util/JavacTask;

    .line 81
    move-object v3, v2

    check-cast v3, Lcom/sun/tools/javac/api/JavacTaskImpl;

    invoke-virtual {v3}, Lcom/sun/tools/javac/api/JavacTaskImpl;->getContext()Lcom/sun/tools/javac/util/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/tools/javac/code/Types;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/code/Types;

    move-result-object v3

    iput-object v3, p0, Lannotator/Source;->types:Lcom/sun/tools/javac/code/Types;

    .line 84
    iput-object p1, p0, Lannotator/Source;->path:Ljava/lang/String;

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, p0, Lannotator/Source;->source:Ljava/lang/StringBuilder;

    .line 86
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 87
    .local v3, "in":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 89
    .local v4, "bytes":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v5

    move v6, v5

    .local v6, "c":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 90
    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 93
    iget-object v5, p0, Lannotator/Source;->source:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 95
    iget-object v5, p0, Lannotator/Source;->fileManager:Ljavax/tools/StandardJavaFileManager;

    invoke-interface {v5}, Ljavax/tools/StandardJavaFileManager;->close()V

    .line 96
    return-void

    .line 78
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v4    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "c":I
    :cond_1
    new-instance v3, Lannotator/Source$CompilerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not get a valid JavacTask: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lannotator/Source$CompilerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 61
    .end local v0    # "fileObjs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljavax/tools/JavaFileObject;>;"
    .end local v1    # "stringOpts":[Ljava/lang/String;
    .end local v2    # "cTask":Ljavax/tools/JavaCompiler$CompilationTask;
    .end local v9    # "optsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    new-instance v0, Lannotator/Source$CompilerException;

    const-string v1, "could not get file manager"

    invoke-direct {v0, v1}, Lannotator/Source$CompilerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_3
    new-instance v0, Lannotator/Source$CompilerException;

    const-string v1, "could not get compiler instance"

    invoke-direct {v0, v1}, Lannotator/Source$CompilerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 168
    iget-object v0, p0, Lannotator/Source;->source:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lannotator/Source;->source:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypes()Lcom/sun/tools/javac/code/Types;
    .locals 1

    .line 101
    iget-object v0, p0, Lannotator/Source;->types:Lcom/sun/tools/javac/code/Types;

    return-object v0
.end method

.method public insert(ILjava/lang/String;)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "str"    # Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lannotator/Source;->source:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    return-void
.end method

.method public parse()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sun/source/tree/CompilationUnitTree;",
            ">;"
        }
    .end annotation

    .line 112
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 114
    .local v0, "compUnits":Ljava/util/Set;, "Ljava/util/Set<Lcom/sun/source/tree/CompilationUnitTree;>;"
    iget-object v1, p0, Lannotator/Source;->task:Lcom/sun/source/util/JavacTask;

    invoke-virtual {v1}, Lcom/sun/source/util/JavacTask;->parse()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/source/tree/CompilationUnitTree;

    .line 115
    .local v2, "tree":Lcom/sun/source/tree/CompilationUnitTree;
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    nop

    .end local v2    # "tree":Lcom/sun/source/tree/CompilationUnitTree;
    goto :goto_0

    .line 118
    :cond_0
    iget-object v1, p0, Lannotator/Source;->diagnostics:Ljavax/tools/DiagnosticCollector;

    invoke-virtual {v1}, Ljavax/tools/DiagnosticCollector;->getDiagnostics()Ljava/util/List;

    move-result-object v1

    .line 119
    .local v1, "errors":Ljava/util/List;, "Ljava/util/List<Ljavax/tools/Diagnostic<+Ljavax/tools/JavaFileObject;>;>;"
    iget-object v2, p0, Lannotator/Source;->diagnostics:Ljavax/tools/DiagnosticCollector;

    invoke-virtual {v2}, Ljavax/tools/DiagnosticCollector;->getDiagnostics()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 120
    const/4 v2, 0x0

    .line 121
    .local v2, "numErrors":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/tools/Diagnostic;

    .line 122
    .local v4, "d":Ljavax/tools/Diagnostic;, "Ljavax/tools/Diagnostic<+Ljavax/tools/JavaFileObject;>;"
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 123
    invoke-interface {v4}, Ljavax/tools/Diagnostic;->getKind()Ljavax/tools/Diagnostic$Kind;

    move-result-object v5

    sget-object v6, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    if-ne v5, v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 124
    .end local v4    # "d":Ljavax/tools/Diagnostic;, "Ljavax/tools/Diagnostic<+Ljavax/tools/JavaFileObject;>;"
    :cond_1
    goto :goto_1

    .line 125
    :cond_2
    if-lez v2, :cond_4

    .line 126
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    if-eq v2, v5, :cond_3

    const-string v6, "s"

    goto :goto_2

    :cond_3
    const-string v6, ""

    :goto_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "WARNING: Error processing input source files. Please fix and try again."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    invoke-static {v5}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v2    # "numErrors":I
    :cond_4
    :try_start_1
    iget-object v2, p0, Lannotator/Source;->task:Lcom/sun/source/util/JavacTask;

    invoke-virtual {v2}, Lcom/sun/source/util/JavacTask;->analyze()Ljava/lang/Iterable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    nop

    .line 141
    return-object v0

    .line 135
    :catchall_0
    move-exception v2

    .line 136
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_2
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WARNING: skipping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lannotator/Source;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Type analysis failed due to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v3

    .line 143
    .end local v0    # "compUnits":Ljava/util/Set;, "Ljava/util/Set<Lcom/sun/source/tree/CompilationUnitTree;>;"
    .end local v1    # "errors":Ljava/util/List;, "Ljava/util/List<Ljavax/tools/Diagnostic<+Ljavax/tools/JavaFileObject;>;>;"
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 145
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public substring(II)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 172
    iget-object v0, p0, Lannotator/Source;->source:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lannotator/Source;->source:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 187
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 188
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 189
    return-void
.end method
