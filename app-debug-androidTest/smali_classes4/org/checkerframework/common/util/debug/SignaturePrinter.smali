.class public Lorg/checkerframework/common/util/debug/SignaturePrinter;
.super Lorg/checkerframework/javacutil/AbstractTypeProcessor;
.source "SignaturePrinter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/common/util/debug/SignaturePrinter$ElementPrinter;
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedAnnotationTypes;
    value = {
        "*"
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedOptions;
    value = {
        "checker"
    }
.end annotation

.annotation runtime Ljavax/annotation/processing/SupportedSourceVersion;
    value = .enum Ljavax/lang/model/SourceVersion;->RELEASE_8:Ljavax/lang/model/SourceVersion;
.end annotation


# static fields
.field private static final CHECKER_ARG:Ljava/lang/String; = "-Achecker="


# instance fields
.field private checker:Lorg/checkerframework/framework/source/SourceChecker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lorg/checkerframework/javacutil/AbstractTypeProcessor;-><init>()V

    return-void
.end method

.method private init(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/String;)V
    .locals 3
    .param p1, "env"    # Ljavax/annotation/processing/ProcessingEnvironment;
    .param p2, "checkerName"    # Ljava/lang/String;

    .line 83
    if-eqz p2, :cond_0

    .line 85
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 86
    .local v0, "checkerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 87
    .local v2, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/source/SourceChecker;

    iput-object v1, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter;->checker:Lorg/checkerframework/framework/source/SourceChecker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v0    # "checkerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Lorg/checkerframework/common/util/debug/SignaturePrinter$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/common/util/debug/SignaturePrinter$1;-><init>(Lorg/checkerframework/common/util/debug/SignaturePrinter;)V

    iput-object v0, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter;->checker:Lorg/checkerframework/framework/source/SourceChecker;

    .line 107
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter;->checker:Lorg/checkerframework/framework/source/SourceChecker;

    invoke-virtual {v0, p1}, Lorg/checkerframework/framework/source/SourceChecker;->init(Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 108
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .param p0, "args"    # [Ljava/lang/String;

    .line 321
    array-length v0, p0

    const-string v1, "-Achecker="

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    aget-object v0, p0, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    array-length v0, p0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    aget-object v0, p0, v2

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 328
    :cond_1
    const/4 v0, 0x0

    .line 329
    .local v0, "checkerName":Ljava/lang/String;
    aget-object v4, p0, v2

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 330
    aget-object v2, p0, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-static {v0}, Lorg/checkerframework/org/plumelib/reflection/Signatures;->isBinaryName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 332
    :cond_2
    new-instance v1, Lorg/checkerframework/javacutil/UserError;

    const-string v2, "Bad checker name \"%s\""

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 337
    :cond_3
    :goto_0
    new-instance v1, Lcom/sun/tools/javac/util/Context;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/Context;-><init>()V

    .line 338
    .local v1, "context":Lcom/sun/tools/javac/util/Context;
    invoke-static {v1}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    move-result-object v2

    .line 339
    .local v2, "env":Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;
    new-instance v4, Lorg/checkerframework/common/util/debug/SignaturePrinter;

    invoke-direct {v4}, Lorg/checkerframework/common/util/debug/SignaturePrinter;-><init>()V

    .line 340
    .local v4, "printer":Lorg/checkerframework/common/util/debug/SignaturePrinter;
    invoke-direct {v4, v2, v0}, Lorg/checkerframework/common/util/debug/SignaturePrinter;->init(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/String;)V

    .line 342
    array-length v5, p0

    sub-int/2addr v5, v3

    aget-object v3, p0, v5

    .line 343
    .local v3, "className":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->getElementUtils()Lcom/sun/tools/javac/model/JavacElements;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sun/tools/javac/model/JavacElements;->getTypeElement(Ljava/lang/CharSequence;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v5

    .line 344
    .local v5, "elem":Ljavax/lang/model/element/TypeElement;
    if-nez v5, :cond_4

    .line 345
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find class: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 346
    return-void

    .line 349
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/checkerframework/common/util/debug/SignaturePrinter;->typeProcess(Ljavax/lang/model/element/TypeElement;Lcom/sun/source/util/TreePath;)V

    .line 350
    return-void

    .line 323
    .end local v0    # "checkerName":Ljava/lang/String;
    .end local v1    # "context":Lcom/sun/tools/javac/util/Context;
    .end local v2    # "env":Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;
    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "printer":Lorg/checkerframework/common/util/debug/SignaturePrinter;
    .end local v5    # "elem":Ljavax/lang/model/element/TypeElement;
    :cond_5
    :goto_1
    invoke-static {}, Lorg/checkerframework/common/util/debug/SignaturePrinter;->printUsage()V

    .line 324
    return-void
.end method

.method public static printUsage()V
    .locals 2

    .line 315
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "   Usage: java SignaturePrinter [-Achecker=<checkerName>] classname"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 316
    return-void
.end method


# virtual methods
.method public typeProcess(Ljavax/lang/model/element/TypeElement;Lcom/sun/source/util/TreePath;)V
    .locals 0
    .param p1, "element"    # Ljavax/lang/model/element/TypeElement;
    .param p2, "p"    # Lcom/sun/source/util/TreePath;

    .line 127
    return-void
.end method

.method public typeProcessingStart()V
    .locals 4

    .line 112
    invoke-super {p0}, Lorg/checkerframework/javacutil/AbstractTypeProcessor;->typeProcessingStart()V

    .line 113
    iget-object v0, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getOptions()Ljava/util/Map;

    move-result-object v0

    const-string v1, "checker"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    .local v0, "checkerName":Ljava/lang/String;
    invoke-static {v0}, Lorg/checkerframework/org/plumelib/reflection/Signatures;->isBinaryName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lorg/checkerframework/common/util/debug/SignaturePrinter;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/common/util/debug/SignaturePrinter;->init(Ljavax/annotation/processing/ProcessingEnvironment;Ljava/lang/String;)V

    .line 118
    return-void

    .line 115
    :cond_0
    new-instance v1, Lorg/checkerframework/javacutil/UserError;

    const-string v2, "Malformed checker name \"%s\""

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/javacutil/UserError;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method
