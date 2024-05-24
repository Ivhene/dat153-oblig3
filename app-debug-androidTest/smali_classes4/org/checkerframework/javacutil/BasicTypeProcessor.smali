.class public abstract Lorg/checkerframework/javacutil/BasicTypeProcessor;
.super Lorg/checkerframework/javacutil/AbstractTypeProcessor;
.source "BasicTypeProcessor.java"


# instance fields
.field protected currentRoot:Lcom/sun/source/tree/CompilationUnitTree;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/checkerframework/javacutil/AbstractTypeProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createTreePathScanner(Lcom/sun/source/tree/CompilationUnitTree;)Lcom/sun/source/util/TreePathScanner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/source/tree/CompilationUnitTree;",
            ")",
            "Lcom/sun/source/util/TreePathScanner<",
            "**>;"
        }
    .end annotation
.end method

.method public typeProcess(Ljavax/lang/model/element/TypeElement;Lcom/sun/source/util/TreePath;)V
    .locals 6
    .param p1, "e"    # Ljavax/lang/model/element/TypeElement;
    .param p2, "p"    # Lcom/sun/source/util/TreePath;

    .line 28
    invoke-virtual {p2}, Lcom/sun/source/util/TreePath;->getCompilationUnit()Lcom/sun/source/tree/CompilationUnitTree;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/javacutil/BasicTypeProcessor;->currentRoot:Lcom/sun/source/tree/CompilationUnitTree;

    .line 30
    const/4 v1, 0x0

    .line 32
    .local v1, "scanner":Lcom/sun/source/util/TreePathScanner;, "Lcom/sun/source/util/TreePathScanner<**>;"
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/checkerframework/javacutil/BasicTypeProcessor;->createTreePathScanner(Lcom/sun/source/tree/CompilationUnitTree;)Lcom/sun/source/util/TreePathScanner;

    move-result-object v0

    move-object v1, v0

    .line 33
    const/4 v0, 0x0

    invoke-virtual {v1, p2, v0}, Lcom/sun/source/util/TreePathScanner;->scan(Lcom/sun/source/util/TreePath;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    goto :goto_1

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BasicTypeProcessor.typeProcess: unexpected Throwable ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")  when processing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/javacutil/BasicTypeProcessor;->currentRoot:Lcom/sun/source/tree/CompilationUnitTree;

    .line 39
    invoke-interface {v4}, Lcom/sun/source/tree/CompilationUnitTree;->getSourceFile()Ljavax/tools/JavaFileObject;

    move-result-object v4

    invoke-interface {v4}, Ljavax/tools/JavaFileObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 40
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "; message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 42
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method
