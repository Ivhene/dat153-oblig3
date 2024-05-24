.class public Lorg/checkerframework/framework/stub/StubGenerator;
.super Ljava/lang/Object;
.source "StubGenerator.java"


# static fields
.field private static final INDENTION:Ljava/lang/String; = "    "


# instance fields
.field private currentIndention:Ljava/lang/String;

.field private currentPackage:Ljava/lang/String;

.field private final out:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/stub/StubGenerator;-><init>(Ljava/io/PrintStream;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lorg/checkerframework/framework/stub/StubGenerator;->currentIndention:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/framework/stub/StubGenerator;->currentPackage:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lorg/checkerframework/framework/stub/StubGenerator;->currentIndention:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/framework/stub/StubGenerator;->currentPackage:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    .line 62
    return-void
.end method

.method private static error(Ljava/lang/String;)V
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .line 443
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StubGenerator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method private formatList(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 375
    .local p1, "lst":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 377
    .local v1, "isFirst":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 378
    .local v3, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 379
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 382
    const/4 v1, 0x0

    .line 383
    .end local v3    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private formatType(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;
    .locals 7
    .param p1, "typeRep"    # Ljavax/lang/model/type/TypeMirror;

    .line 395
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "()<>[], "

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 396
    .local v0, "tokenizer":Ljava/util/StringTokenizer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 399
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "token":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v3, :cond_1

    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    goto :goto_1

    .line 403
    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 404
    .local v4, "index":I
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 401
    .end local v4    # "index":I
    :cond_1
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .end local v2    # "token":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 407
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private indent()V
    .locals 2

    .line 366
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubGenerator;->currentIndention:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method private isPublicOrProtected(Ljavax/lang/model/element/Element;)Z
    .locals 2
    .param p1, "element"    # Ljavax/lang/model/element/Element;

    .line 389
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 390
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/Modifier;->PROTECTED:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 389
    :goto_1
    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;

    .line 411
    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 412
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Usage:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 413
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "    java StubGenerator [class or package name]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 414
    return-void

    .line 417
    :cond_0
    new-instance v0, Lcom/sun/tools/javac/util/Context;

    invoke-direct {v0}, Lcom/sun/tools/javac/util/Context;-><init>()V

    .line 418
    .local v0, "context":Lcom/sun/tools/javac/util/Context;
    invoke-static {v0}, Lcom/sun/tools/javac/util/Options;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/util/Options;

    move-result-object v1

    .line 419
    .local v1, "options":Lcom/sun/tools/javac/util/Options;
    invoke-static {}, Lorg/checkerframework/javacutil/PluginUtil;->getJreVersion()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 420
    sget-object v2, Lcom/sun/tools/javac/main/Option;->SOURCE:Lcom/sun/tools/javac/main/Option;

    const-string v3, "8"

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/util/Options;->put(Lcom/sun/tools/javac/main/Option;Ljava/lang/String;)V

    .line 421
    sget-object v2, Lcom/sun/tools/javac/main/Option;->TARGET:Lcom/sun/tools/javac/main/Option;

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/util/Options;->put(Lcom/sun/tools/javac/main/Option;Ljava/lang/String;)V

    .line 422
    sget-object v2, Lcom/sun/tools/javac/main/Option;->XBOOTCLASSPATH_PREPEND:Lcom/sun/tools/javac/main/Option;

    const-string v3, "jdk8.jar"

    invoke-virtual {v1, v2, v3}, Lcom/sun/tools/javac/util/Options;->put(Lcom/sun/tools/javac/main/Option;Ljava/lang/String;)V

    .line 425
    :cond_1
    invoke-static {v0}, Lcom/sun/tools/javac/main/JavaCompiler;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/main/JavaCompiler;

    move-result-object v2

    .line 426
    .local v2, "javac":Lcom/sun/tools/javac/main/JavaCompiler;
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/main/JavaCompiler;->initModules(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    .line 427
    invoke-virtual {v2}, Lcom/sun/tools/javac/main/JavaCompiler;->enterDone()V

    .line 429
    invoke-static {v0}, Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;->instance(Lcom/sun/tools/javac/util/Context;)Lcom/sun/tools/javac/processing/JavacProcessingEnvironment;

    move-result-object v3

    .line 431
    .local v3, "env":Ljavax/annotation/processing/ProcessingEnvironment;
    new-instance v4, Lorg/checkerframework/framework/stub/StubGenerator;

    invoke-direct {v4}, Lorg/checkerframework/framework/stub/StubGenerator;-><init>()V

    .line 433
    .local v4, "generator":Lorg/checkerframework/framework/stub/StubGenerator;
    invoke-interface {v3}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v7, p0, v6

    invoke-interface {v5, v7}, Ljavax/lang/model/util/Elements;->getPackageElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/PackageElement;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 434
    invoke-interface {v3}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v5

    aget-object v6, p0, v6

    invoke-interface {v5, v6}, Ljavax/lang/model/util/Elements;->getPackageElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/PackageElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/framework/stub/StubGenerator;->stubFromPackage(Ljavax/lang/model/element/PackageElement;)V

    goto :goto_0

    .line 435
    :cond_2
    invoke-interface {v3}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v5

    aget-object v7, p0, v6

    invoke-interface {v5, v7}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 436
    invoke-interface {v3}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v5

    aget-object v6, p0, v6

    invoke-interface {v5, v6}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/checkerframework/framework/stub/StubGenerator;->stubFromType(Ljavax/lang/model/element/TypeElement;)V

    goto :goto_0

    .line 438
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t find a package or a class named "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/checkerframework/framework/stub/StubGenerator;->error(Ljava/lang/String;)V

    .line 440
    :goto_0
    return-void
.end method

.method private printClass(Ljavax/lang/model/element/TypeElement;)V
    .locals 1
    .param p1, "typeElement"    # Ljavax/lang/model/element/TypeElement;

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/framework/stub/StubGenerator;->printClass(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method private printClass(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)V
    .locals 7
    .param p1, "typeElement"    # Ljavax/lang/model/element/TypeElement;
    .param p2, "outerClass"    # Ljava/lang/String;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v0, "innerClass":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/TypeElement;>;"
    invoke-direct {p0}, Lorg/checkerframework/framework/stub/StubGenerator;->indent()V

    .line 175
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v1

    .line 176
    .local v1, "teannos":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationMirror;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/AnnotationMirror;

    .line 178
    .local v3, "am":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v4, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 179
    .end local v3    # "am":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_0

    .line 182
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/element/ElementKind;->INTERFACE:Ljavax/lang/model/element/ElementKind;

    if-ne v2, v3, :cond_1

    .line 183
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    const-string v3, "interface"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 184
    :cond_1
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    if-ne v2, v3, :cond_a

    .line 185
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    const-string v3, "class"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 190
    :goto_1
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(C)V

    .line 191
    if-eqz p2, :cond_2

    .line 192
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 194
    :cond_2
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 197
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 198
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(C)V

    .line 199
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/checkerframework/framework/stub/StubGenerator;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 200
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(C)V

    .line 204
    :cond_3
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    const-string v4, " extends "

    if-eq v2, v3, :cond_4

    .line 205
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/javacutil/TypesUtils;->isObject(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 206
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/checkerframework/framework/stub/StubGenerator;->formatType(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 211
    :cond_4
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getInterfaces()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 212
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/element/ElementKind;->INTERFACE:Ljavax/lang/model/element/ElementKind;

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 213
    .local v2, "isInterface":Z
    :goto_2
    iget-object v3, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    const-string v4, " implements "

    :goto_3
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 214
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v3, "ls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getInterfaces()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/type/TypeMirror;

    .line 216
    .local v5, "itf":Ljavax/lang/model/type/TypeMirror;
    invoke-direct {p0, v5}, Lorg/checkerframework/framework/stub/StubGenerator;->formatType(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    .end local v5    # "itf":Ljavax/lang/model/type/TypeMirror;
    goto :goto_4

    .line 218
    :cond_7
    iget-object v4, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    invoke-direct {p0, v3}, Lorg/checkerframework/framework/stub/StubGenerator;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 221
    .end local v2    # "isInterface":Z
    .end local v3    # "ls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    const-string v3, " {"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubGenerator;->currentIndention:Ljava/lang/String;

    .line 224
    .local v2, "tempIndention":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/checkerframework/framework/stub/StubGenerator;->currentIndention:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/checkerframework/framework/stub/StubGenerator;->currentIndention:Ljava/lang/String;

    .line 226
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lorg/checkerframework/framework/stub/StubGenerator;->printTypeMembers(Ljava/util/List;Ljava/util/List;)V

    .line 228
    iput-object v2, p0, Lorg/checkerframework/framework/stub/StubGenerator;->currentIndention:Ljava/lang/String;

    .line 229
    invoke-direct {p0}, Lorg/checkerframework/framework/stub/StubGenerator;->indent()V

    .line 230
    iget-object v3, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 232
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/element/TypeElement;

    .line 233
    .local v4, "element":Ljavax/lang/model/element/TypeElement;
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lorg/checkerframework/framework/stub/StubGenerator;->printClass(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)V

    .line 234
    .end local v4    # "element":Ljavax/lang/model/element/TypeElement;
    goto :goto_5

    .line 235
    :cond_9
    return-void

    .line 187
    .end local v2    # "tempIndention":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private printFieldDecl(Ljavax/lang/model/element/VariableElement;)V
    .locals 4
    .param p1, "field"    # Ljavax/lang/model/element/VariableElement;

    .line 267
    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "class"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const-string v0, "Cannot write class literals in stub files."

    invoke-static {v0}, Lorg/checkerframework/framework/stub/StubGenerator;->error(Ljava/lang/String;)V

    .line 269
    return-void

    .line 272
    :cond_0
    invoke-direct {p0}, Lorg/checkerframework/framework/stub/StubGenerator;->indent()V

    .line 274
    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v0

    .line 275
    .local v0, "veannos":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationMirror;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 276
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 277
    .local v2, "am":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v3, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 278
    .end local v2    # "am":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_0

    .line 282
    :cond_1
    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->getModifiers()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/Modifier;->PROTECTED:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 283
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    const-string v2, "protected "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 285
    :cond_2
    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->getModifiers()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 286
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    const-string v2, "static "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 288
    :cond_3
    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->getModifiers()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 289
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    const-string v2, "final "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 292
    :cond_4
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/checkerframework/framework/stub/StubGenerator;->formatType(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 296
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(C)V

    .line 297
    return-void
.end method

.method private printMember(Ljavax/lang/model/element/Element;Ljava/util/List;)V
    .locals 1
    .param p1, "member"    # Ljavax/lang/model/element/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/TypeElement;",
            ">;)V"
        }
    .end annotation

    .line 252
    .local p2, "innerClass":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/TypeElement;>;"
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/lang/model/element/ElementKind;->isField()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    move-object v0, p1

    check-cast v0, Ljavax/lang/model/element/VariableElement;

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/stub/StubGenerator;->printFieldDecl(Ljavax/lang/model/element/VariableElement;)V

    goto :goto_0

    .line 254
    :cond_0
    instance-of v0, p1, Ljavax/lang/model/element/ExecutableElement;

    if-eqz v0, :cond_1

    .line 255
    move-object v0, p1

    check-cast v0, Ljavax/lang/model/element/ExecutableElement;

    invoke-direct {p0, v0}, Lorg/checkerframework/framework/stub/StubGenerator;->printMethodDecl(Ljavax/lang/model/element/ExecutableElement;)V

    goto :goto_0

    .line 256
    :cond_1
    instance-of v0, p1, Ljavax/lang/model/element/TypeElement;

    if-eqz v0, :cond_2

    .line 257
    move-object v0, p1

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_2
    :goto_0
    return-void
.end method

.method private printMethodDecl(Ljavax/lang/model/element/ExecutableElement;)V
    .locals 6
    .param p1, "method"    # Ljavax/lang/model/element/ExecutableElement;

    .line 305
    invoke-direct {p0}, Lorg/checkerframework/framework/stub/StubGenerator;->indent()V

    .line 307
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v0

    .line 308
    .local v0, "eeannos":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/AnnotationMirror;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/AnnotationMirror;

    .line 310
    .local v2, "am":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v3, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 311
    .end local v2    # "am":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_0

    .line 315
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/Modifier;->PROTECTED:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    const-string v2, "protected "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 318
    :cond_1
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 319
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    const-string v2, "static "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 323
    :cond_2
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 324
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    .line 325
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getTypeParameters()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/checkerframework/framework/stub/StubGenerator;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 330
    :cond_3
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-eq v1, v2, :cond_4

    .line 331
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/checkerframework/framework/stub/StubGenerator;->formatType(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    goto :goto_1

    .line 335
    :cond_4
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 338
    :goto_1
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    .line 340
    const/4 v1, 0x1

    .line 341
    .local v1, "isFirst":Z
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/VariableElement;

    .line 342
    .local v3, "param":Ljavax/lang/model/element/VariableElement;
    if-nez v1, :cond_5

    .line 343
    iget-object v4, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 345
    :cond_5
    iget-object v4, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    invoke-interface {v3}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/checkerframework/framework/stub/StubGenerator;->formatType(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 346
    iget-object v4, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(C)V

    .line 347
    iget-object v4, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    invoke-interface {v3}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 348
    const/4 v1, 0x0

    .line 349
    .end local v3    # "param":Ljavax/lang/model/element/VariableElement;
    goto :goto_2

    .line 351
    :cond_6
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(C)V

    .line 353
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getThrownTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 354
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    const-string v3, " throws "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 355
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v2, "ltt":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getThrownTypes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/type/TypeMirror;

    .line 357
    .local v4, "tt":Ljavax/lang/model/type/TypeMirror;
    invoke-direct {p0, v4}, Lorg/checkerframework/framework/stub/StubGenerator;->formatType(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    .end local v4    # "tt":Ljavax/lang/model/type/TypeMirror;
    goto :goto_3

    .line 359
    :cond_7
    iget-object v3, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    invoke-direct {p0, v2}, Lorg/checkerframework/framework/stub/StubGenerator;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 361
    .end local v2    # "ltt":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(C)V

    .line 362
    return-void
.end method

.method private printTypeMembers(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/Element;",
            ">;",
            "Ljava/util/List<",
            "Ljavax/lang/model/element/TypeElement;",
            ">;)V"
        }
    .end annotation

    .line 243
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/element/Element;>;"
    .local p2, "innerClass":Ljava/util/List;, "Ljava/util/List<Ljavax/lang/model/element/TypeElement;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/Element;

    .line 244
    .local v1, "element":Ljavax/lang/model/element/Element;
    invoke-direct {p0, v1}, Lorg/checkerframework/framework/stub/StubGenerator;->isPublicOrProtected(Ljavax/lang/model/element/Element;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    invoke-direct {p0, v1, p2}, Lorg/checkerframework/framework/stub/StubGenerator;->printMember(Ljavax/lang/model/element/Element;Ljava/util/List;)V

    .line 247
    .end local v1    # "element":Ljavax/lang/model/element/Element;
    :cond_0
    goto :goto_0

    .line 248
    :cond_1
    return-void
.end method


# virtual methods
.method public stubFromField(Ljavax/lang/model/element/Element;)V
    .locals 2
    .param p1, "elt"    # Ljavax/lang/model/element/Element;

    .line 75
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->FIELD:Ljavax/lang/model/element/ElementKind;

    if-eq v0, v1, :cond_0

    .line 76
    return-void

    .line 79
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/ElementUtils;->enclosingPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->getVerboseName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "pkg":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    iput-object v0, p0, Lorg/checkerframework/framework/stub/StubGenerator;->currentPackage:Ljava/lang/String;

    .line 82
    const-string v1, "    "

    iput-object v1, p0, Lorg/checkerframework/framework/stub/StubGenerator;->currentIndention:Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Lorg/checkerframework/framework/stub/StubGenerator;->indent()V

    .line 85
    :cond_1
    move-object v1, p1

    check-cast v1, Ljavax/lang/model/element/VariableElement;

    .line 86
    .local v1, "field":Ljavax/lang/model/element/VariableElement;
    invoke-direct {p0, v1}, Lorg/checkerframework/framework/stub/StubGenerator;->printFieldDecl(Ljavax/lang/model/element/VariableElement;)V

    .line 87
    return-void
.end method

.method public stubFromMethod(Ljavax/lang/model/element/Element;)V
    .locals 2
    .param p1, "elt"    # Ljavax/lang/model/element/Element;

    .line 108
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->CONSTRUCTOR:Ljavax/lang/model/element/ElementKind;

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->METHOD:Ljavax/lang/model/element/ElementKind;

    if-eq v0, v1, :cond_0

    .line 109
    return-void

    .line 112
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/javacutil/ElementUtils;->enclosingPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->getVerboseName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "newPackage":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    iput-object v0, p0, Lorg/checkerframework/framework/stub/StubGenerator;->currentPackage:Ljava/lang/String;

    .line 115
    const-string v1, "    "

    iput-object v1, p0, Lorg/checkerframework/framework/stub/StubGenerator;->currentIndention:Ljava/lang/String;

    .line 116
    invoke-direct {p0}, Lorg/checkerframework/framework/stub/StubGenerator;->indent()V

    .line 118
    :cond_1
    move-object v1, p1

    check-cast v1, Ljavax/lang/model/element/ExecutableElement;

    .line 120
    .local v1, "method":Ljavax/lang/model/element/ExecutableElement;
    invoke-direct {p0, v1}, Lorg/checkerframework/framework/stub/StubGenerator;->printMethodDecl(Ljavax/lang/model/element/ExecutableElement;)V

    .line 121
    return-void
.end method

.method public stubFromPackage(Ljavax/lang/model/element/PackageElement;)V
    .locals 3
    .param p1, "packageElement"    # Ljavax/lang/model/element/PackageElement;

    .line 91
    invoke-interface {p1}, Ljavax/lang/model/element/PackageElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/stub/StubGenerator;->currentPackage:Ljava/lang/String;

    .line 93
    invoke-direct {p0}, Lorg/checkerframework/framework/stub/StubGenerator;->indent()V

    .line 94
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    const-string v1, "package "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubGenerator;->currentPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    invoke-interface {p1}, Ljavax/lang/model/element/PackageElement;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljavax/lang/model/util/ElementFilter;->typesIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/TypeElement;

    .line 99
    .local v1, "element":Ljavax/lang/model/element/TypeElement;
    invoke-direct {p0, v1}, Lorg/checkerframework/framework/stub/StubGenerator;->isPublicOrProtected(Ljavax/lang/model/element/Element;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 101
    invoke-direct {p0, v1}, Lorg/checkerframework/framework/stub/StubGenerator;->printClass(Ljavax/lang/model/element/TypeElement;)V

    .line 103
    .end local v1    # "element":Ljavax/lang/model/element/TypeElement;
    :cond_0
    goto :goto_0

    .line 104
    :cond_1
    return-void
.end method

.method public stubFromType(Ljavax/lang/model/element/TypeElement;)V
    .locals 8
    .param p1, "typeElement"    # Ljavax/lang/model/element/TypeElement;

    .line 127
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->CLASS:Ljavax/lang/model/element/ElementKind;

    if-eq v0, v1, :cond_0

    .line 128
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->INTERFACE:Ljavax/lang/model/element/ElementKind;

    if-eq v0, v1, :cond_0

    .line 129
    return-void

    .line 132
    :cond_0
    nop

    .line 133
    invoke-static {p1}, Lorg/checkerframework/javacutil/ElementUtils;->enclosingPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->getVerboseName(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "newPackageName":Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/framework/stub/StubGenerator;->currentPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 135
    .local v1, "newPackage":Z
    iput-object v0, p0, Lorg/checkerframework/framework/stub/StubGenerator;->currentPackage:Ljava/lang/String;

    .line 137
    if-eqz v1, :cond_1

    .line 138
    invoke-direct {p0}, Lorg/checkerframework/framework/stub/StubGenerator;->indent()V

    .line 140
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    const-string v3, "package "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    iget-object v3, p0, Lorg/checkerframework/framework/stub/StubGenerator;->currentPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lorg/checkerframework/framework/stub/StubGenerator;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 145
    :cond_1
    invoke-static {p1}, Lorg/checkerframework/javacutil/ElementUtils;->getQualifiedClassName(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "fullClassName":Ljava/lang/String;
    iget-object v3, p0, Lorg/checkerframework/framework/stub/StubGenerator;->currentPackage:Ljava/lang/String;

    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lorg/checkerframework/framework/stub/StubGenerator;->currentPackage:Ljava/lang/String;

    .line 150
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "className":Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 156
    .local v5, "index":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 157
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/stub/StubGenerator;->printClass(Ljavax/lang/model/element/TypeElement;)V

    goto :goto_0

    .line 159
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, "outer":Ljava/lang/String;
    const/16 v7, 0x24

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lorg/checkerframework/framework/stub/StubGenerator;->printClass(Ljavax/lang/model/element/TypeElement;Ljava/lang/String;)V

    .line 162
    .end local v6    # "outer":Ljava/lang/String;
    :goto_0
    return-void
.end method
