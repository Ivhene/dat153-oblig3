.class public Lorg/checkerframework/framework/stub/StubUtil;
.super Ljava/lang/Object;
.source "StubUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addStubFilesToList(Ljava/io/File;Ljava/util/List;)V
    .locals 4
    .param p0, "stub"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/stub/StubResource;",
            ">;)V"
        }
    .end annotation

    .line 326
    .local p1, "resources":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/stub/StubResource;>;"
    invoke-static {p0}, Lorg/checkerframework/framework/stub/StubUtil;->isStub(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    new-instance v0, Lorg/checkerframework/framework/stub/FileStubResource;

    invoke-direct {v0, p0}, Lorg/checkerframework/framework/stub/FileStubResource;-><init>(Ljava/io/File;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 328
    :cond_0
    invoke-static {p0}, Lorg/checkerframework/framework/stub/StubUtil;->isJar(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 331
    :try_start_0
    new-instance v0, Ljava/util/jar/JarFile;

    invoke-direct {v0, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .local v0, "file":Ljava/util/jar/JarFile;
    nop

    .line 336
    invoke-virtual {v0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 337
    .local v1, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 338
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/JarEntry;

    .line 339
    .local v2, "entry":Ljava/util/jar/JarEntry;
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/checkerframework/framework/stub/StubUtil;->isStub(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 340
    new-instance v3, Lorg/checkerframework/framework/stub/JarEntryStubResource;

    invoke-direct {v3, v0, v2}, Lorg/checkerframework/framework/stub/JarEntryStubResource;-><init>(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    .end local v2    # "entry":Ljava/util/jar/JarEntry;
    :cond_1
    goto :goto_0

    .line 337
    .end local v0    # "file":Ljava/util/jar/JarFile;
    .end local v1    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_2
    goto :goto_2

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StubUtil: could not process JAR file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 334
    return-void

    .line 343
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 344
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 345
    .local v0, "directoryContents":[Ljava/io/File;
    new-instance v1, Lorg/checkerframework/framework/stub/StubUtil$1;

    invoke-direct {v1}, Lorg/checkerframework/framework/stub/StubUtil$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 353
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 354
    .local v3, "enclosed":Ljava/io/File;
    invoke-static {v3, p1}, Lorg/checkerframework/framework/stub/StubUtil;->addStubFilesToList(Ljava/io/File;Ljava/util/List;)V

    .line 353
    .end local v3    # "enclosed":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 343
    .end local v0    # "directoryContents":[Ljava/io/File;
    :cond_4
    :goto_2
    nop

    .line 357
    :cond_5
    :goto_3
    return-void
.end method

.method public static allStubFiles(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "stub"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/framework/stub/StubResource;",
            ">;"
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v0, "resources":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/framework/stub/StubResource;>;"
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .local v1, "stubFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    invoke-static {v1, v0}, Lorg/checkerframework/framework/stub/StubUtil;->addStubFilesToList(Ljava/io/File;Ljava/util/List;)V

    goto :goto_0

    .line 295
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    const-string v3, "user.dir"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "file.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "workingDir":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 298
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    invoke-static {v1, v0}, Lorg/checkerframework/framework/stub/StubUtil;->addStubFilesToList(Ljava/io/File;Ljava/util/List;)V

    .line 302
    .end local v2    # "workingDir":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0
.end method

.method static findDeclaration(Ljavax/lang/model/element/ExecutableElement;Lorg/checkerframework/com/github/javaparser/ast/StubUnit;)Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;
    .locals 6
    .param p0, "method"    # Ljavax/lang/model/element/ExecutableElement;
    .param p1, "indexFile"    # Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Lorg/checkerframework/com/github/javaparser/ast/StubUnit;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;"
        }
    .end annotation

    .line 95
    nop

    .line 96
    invoke-interface {p0}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    invoke-static {v0, p1}, Lorg/checkerframework/framework/stub/StubUtil;->findDeclaration(Ljavax/lang/model/element/TypeElement;Lorg/checkerframework/com/github/javaparser/ast/StubUnit;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    move-result-object v0

    .line 97
    .local v0, "type":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<*>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 98
    return-object v1

    .line 101
    :cond_0
    invoke-static {p0}, Lorg/checkerframework/framework/stub/StubUtil;->toString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "methodRep":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;

    .line 104
    .local v4, "member":Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;"
    instance-of v5, v4, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    if-eqz v5, :cond_1

    .line 105
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    invoke-static {v5}, Lorg/checkerframework/framework/stub/StubUtil;->toString(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 106
    return-object v4

    .line 108
    :cond_1
    instance-of v5, v4, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;

    if-eqz v5, :cond_2

    .line 109
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;

    invoke-static {v5}, Lorg/checkerframework/framework/stub/StubUtil;->toString(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 110
    return-object v4

    .line 113
    .end local v4    # "member":Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;"
    :cond_2
    goto :goto_0

    .line 114
    :cond_3
    return-object v1
.end method

.method static findDeclaration(Ljavax/lang/model/element/VariableElement;Lorg/checkerframework/com/github/javaparser/ast/StubUnit;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .locals 9
    .param p0, "field"    # Ljavax/lang/model/element/VariableElement;
    .param p1, "indexFile"    # Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    .line 73
    nop

    .line 74
    invoke-interface {p0}, Ljavax/lang/model/element/VariableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/TypeElement;

    invoke-static {v0, p1}, Lorg/checkerframework/framework/stub/StubUtil;->findDeclaration(Ljavax/lang/model/element/TypeElement;Lorg/checkerframework/com/github/javaparser/ast/StubUnit;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    move-result-object v0

    .line 75
    .local v0, "type":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<*>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 76
    return-object v1

    .line 79
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;

    .line 80
    .local v3, "member":Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;"
    instance-of v4, v3, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    if-nez v4, :cond_1

    .line 81
    goto :goto_0

    .line 83
    :cond_1
    move-object v4, v3

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    .line 84
    .local v4, "decl":Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    .line 85
    .local v6, "var":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    invoke-static {v6}, Lorg/checkerframework/framework/stub/StubUtil;->toString(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 86
    return-object v4

    .line 88
    .end local v6    # "var":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    :cond_2
    goto :goto_1

    .line 89
    .end local v3    # "member":Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;"
    .end local v4    # "decl":Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    :cond_3
    goto :goto_0

    .line 90
    :cond_4
    return-object v1
.end method

.method static findDeclaration(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;
    .locals 3
    .param p0, "simpleName"    # Ljava/lang/String;
    .param p1, "cu"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<",
            "*>;"
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    .line 120
    .local v1, "type":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<*>;"
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    return-object v1

    .line 123
    .end local v1    # "type":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<*>;"
    :cond_0
    goto :goto_0

    .line 125
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static findDeclaration(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/StubUnit;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;
    .locals 6
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "indexFile"    # Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/checkerframework/com/github/javaparser/ast/StubUnit;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<",
            "*>;"
        }
    .end annotation

    .line 40
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 42
    .local v0, "indexOfDot":I
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 44
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;->getCompilationUnits()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 45
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;->getCompilationUnits()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v1

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;->getCompilationUnits()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    invoke-static {p0, v1}, Lorg/checkerframework/framework/stub/StubUtil;->findDeclaration(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    move-result-object v1

    return-object v1

    .line 45
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 44
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 49
    :cond_2
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "packageName":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "simpleName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;->getCompilationUnits()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    .line 53
    .local v4, "cu":Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 54
    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 55
    invoke-static {v2, v4}, Lorg/checkerframework/framework/stub/StubUtil;->findDeclaration(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    move-result-object v5

    .line 56
    .local v5, "type":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<*>;"
    if-eqz v5, :cond_3

    .line 57
    return-object v5

    .line 60
    .end local v4    # "cu":Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .end local v5    # "type":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<*>;"
    :cond_3
    goto :goto_0

    .line 63
    :cond_4
    const/4 v3, 0x0

    return-object v3
.end method

.method static findDeclaration(Ljavax/lang/model/element/TypeElement;Lorg/checkerframework/com/github/javaparser/ast/StubUnit;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;
    .locals 1
    .param p0, "type"    # Ljavax/lang/model/element/TypeElement;
    .param p1, "indexFile"    # Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            "Lorg/checkerframework/com/github/javaparser/ast/StubUnit;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<",
            "*>;"
        }
    .end annotation

    .line 68
    invoke-interface {p0}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/framework/stub/StubUtil;->findDeclaration(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/StubUnit;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    move-result-object v0

    return-object v0
.end method

.method private static isJar(Ljava/io/File;)Z
    .locals 2
    .param p0, "f"    # Ljava/io/File;

    .line 314
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isStub(Ljava/io/File;)Z
    .locals 1
    .param p0, "f"    # Ljava/io/File;

    .line 306
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/framework/stub/StubUtil;->isStub(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isStub(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 310
    const-string v0, ".astub"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static partitionQualifiedName(Ljava/lang/String;)Lorg/checkerframework/javacutil/Pair;
    .locals 3
    .param p0, "imported"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/javacutil/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 161
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "typeName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "name":Ljava/lang/String;
    invoke-static {v1, v0}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v2

    .line 164
    .local v2, "typeParts":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    return-object v2
.end method

.method static toString(Ljavax/lang/model/element/Element;)Ljava/lang/String;
    .locals 1
    .param p0, "element"    # Ljavax/lang/model/element/Element;

    .line 151
    instance-of v0, p0, Ljavax/lang/model/element/ExecutableElement;

    if-eqz v0, :cond_0

    .line 152
    move-object v0, p0

    check-cast v0, Ljavax/lang/model/element/ExecutableElement;

    invoke-static {v0}, Lorg/checkerframework/framework/stub/StubUtil;->toString(Ljavax/lang/model/element/Element;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    instance-of v0, p0, Ljavax/lang/model/element/VariableElement;

    if-eqz v0, :cond_1

    .line 154
    move-object v0, p0

    check-cast v0, Ljavax/lang/model/element/VariableElement;

    invoke-static {v0}, Lorg/checkerframework/framework/stub/StubUtil;->toString(Ljavax/lang/model/element/VariableElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 156
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static toString(Ljavax/lang/model/element/VariableElement;)Ljava/lang/String;
    .locals 1
    .param p0, "element"    # Ljavax/lang/model/element/VariableElement;

    .line 146
    invoke-interface {p0}, Ljavax/lang/model/element/VariableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/lang/model/element/ElementKind;->isField()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {p0}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static toString(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;)Ljava/lang/String;
    .locals 1
    .param p0, "constructor"    # Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;

    .line 133
    invoke-static {p0}, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->toString(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static toString(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;)Ljava/lang/String;
    .locals 2
    .param p0, "field"    # Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    .line 141
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    invoke-static {v0}, Lorg/checkerframework/framework/stub/StubUtil;->toString(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static toString(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;)Ljava/lang/String;
    .locals 1
    .param p0, "method"    # Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    .line 129
    invoke-static {p0}, Lorg/checkerframework/framework/stub/StubUtil$ElementPrinter;->toString(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static toString(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;)Ljava/lang/String;
    .locals 1
    .param p0, "field"    # Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    .line 137
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
