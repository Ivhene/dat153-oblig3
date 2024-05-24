.class public Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
.super Lorg/checkerframework/com/github/javaparser/ast/Node;
.source "CompilationUnit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;
    }
.end annotation


# static fields
.field private static final JAVA_LANG:Ljava/lang/String; = "java.lang"


# instance fields
.field private imports:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;",
            ">;"
        }
    .end annotation
.end field

.field private module:Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field

.field private packageDeclaration:Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/OptionalProperty;
    .end annotation
.end field

.field private storage:Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;
    .annotation runtime Lorg/checkerframework/com/github/javaparser/metamodel/InternalProperty;
    .end annotation
.end field

.field private types:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 100
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageDeclaration"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageDeclaration"
        }
    .end annotation

    .line 104
    const/4 v1, 0x0

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;

    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-direct {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;)V
    .locals 0
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "packageDeclaration"    # Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;
    .param p5, "module"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "packageDeclaration",
            "imports",
            "types",
            "module"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            "Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<",
            "*>;>;",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;",
            ")V"
        }
    .end annotation

    .line 117
    .local p3, "imports":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;>;"
    .local p4, "types":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<*>;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    .line 118
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setPackageDeclaration(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    .line 119
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setImports(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    .line 120
    invoke-virtual {p0, p4}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setTypes(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    .line 121
    invoke-virtual {p0, p5}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setModule(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    .line 122
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->customInitialization()V

    .line 123
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;)V
    .locals 6
    .param p1, "packageDeclaration"    # Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;
    .param p4, "module"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageDeclaration",
            "imports",
            "types",
            "module"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<",
            "*>;>;",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;",
            ")V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/com/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .line 109
    .local p2, "imports":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;>;"
    .local p3, "types":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<*>;>;"
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/NodeList;Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;)V

    .line 110
    return-void
.end method

.method private static getImportPackageName(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;)Ljava/util/Optional;
    .locals 3
    .param p0, "importDeclaration"    # Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "importDeclaration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;",
            ")",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Name;",
            ">;"
        }
    .end annotation

    .line 275
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->isAsterisk()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    const-string v2, "*"

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getQualifier()Ljava/util/Optional;

    move-result-object v0

    .line 275
    return-object v0
.end method

.method private isImplicitImport(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;)Z
    .locals 4
    .param p1, "importDeclaration"    # Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "importDeclaration"
        }
    .end annotation

    .line 256
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getImportPackageName(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;)Ljava/util/Optional;

    move-result-object v0

    .line 257
    .local v0, "importPackageName":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/expr/Name;>;"
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 258
    const-string v1, "java.lang"

    invoke-static {v1}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->parseName(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    return v2

    .line 262
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->packageDeclaration:Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;

    if-eqz v1, :cond_1

    .line 264
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    .line 265
    .local v1, "currentPackageName":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 267
    .end local v1    # "currentPackageName":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 270
    :cond_2
    return v2
.end method

.method static synthetic lambda$addImport$0(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;)Z
    .locals 3
    .param p0, "importDeclaration"    # Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;
    .param p1, "im"    # Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "importDeclaration",
            "im"
        }
    .end annotation

    .line 237
    nop

    .line 238
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getImportPackageName(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getImportPackageName(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 237
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$addImport$1(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;)Z
    .locals 3
    .param p0, "importDeclaration"    # Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;
    .param p1, "im"    # Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "importDeclaration",
            "im"
        }
    .end annotation

    .line 241
    invoke-virtual {p1, p0}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 242
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->isAsterisk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getImportPackageName(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    .line 244
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getImportPackageName(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 242
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 241
    :goto_1
    return v0
.end method

.method static synthetic lambda$getAnnotationDeclarationByName$10(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;)Z
    .locals 1
    .param p0, "annotationName"    # Ljava/lang/String;
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "annotationName",
            "type"
        }
    .end annotation

    .line 539
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getAnnotationDeclarationByName$11(Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;
    .locals 1
    .param p0, "t"    # Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .line 539
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;

    return-object v0
.end method

.method static synthetic lambda$getClassByName$2(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;)Z
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "className",
            "type"
        }
    .end annotation

    .line 495
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getClassByName$3(Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .locals 1
    .param p0, "t"    # Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .line 495
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    return-object v0
.end method

.method static synthetic lambda$getEnumByName$6(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;)Z
    .locals 1
    .param p0, "enumName"    # Ljava/lang/String;
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "enumName",
            "type"
        }
    .end annotation

    .line 513
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getEnumByName$7(Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;
    .locals 1
    .param p0, "t"    # Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .line 513
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;

    return-object v0
.end method

.method static synthetic lambda$getInterfaceByName$4(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;)Z
    .locals 1
    .param p0, "interfaceName"    # Ljava/lang/String;
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "interfaceName",
            "type"
        }
    .end annotation

    .line 504
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getInterfaceByName$5(Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .locals 1
    .param p0, "t"    # Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .line 504
    move-object v0, p0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    return-object v0
.end method

.method static synthetic lambda$null$8(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "t"    # Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "t"
        }
    .end annotation

    .line 530
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<",
            "TR;TA;>;TA;)TR;"
        }
    .end annotation

    .line 128
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<TR;TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<",
            "TA;>;TA;)V"
        }
    .end annotation

    .line 134
    .local p1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-interface {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public addAnnotationDeclaration(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 473
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v1, 0x0

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->addAnnotationDeclaration(Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public varargs addAnnotationDeclaration(Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "modifiers"    # [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "modifiers"
        }
    .end annotation

    .line 484
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;

    invoke-static {p2}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->createModifierList([Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/String;)V

    .line 485
    .local v0, "annotationDeclaration":Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 486
    return-object v0
.end method

.method public addClass(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 404
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v1, 0x0

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->addClass(Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public varargs addClass(Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "modifiers"    # [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "modifiers"
        }
    .end annotation

    .line 415
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-static {p2}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->createModifierList([Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;ZLjava/lang/String;)V

    .line 416
    .local v0, "classOrInterfaceDeclaration":Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 417
    return-object v0
.end method

.method public addEnum(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 450
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v1, 0x0

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->addEnum(Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public varargs addEnum(Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "modifiers"    # [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "modifiers"
        }
    .end annotation

    .line 461
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;

    invoke-static {p2}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->createModifierList([Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/String;)V

    .line 462
    .local v0, "enumDeclaration":Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 463
    return-object v0
.end method

.method public addImport(Ljava/lang/Class;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clazz"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;"
        }
    .end annotation

    .line 361
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->addImport(Ljava/lang/Class;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    move-result-object v0

    return-object v0

    .line 364
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/ClassUtils;->isPrimitiveOrWrapper(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 366
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-nez v0, :cond_2

    .line 369
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->addImport(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    move-result-object v0

    return-object v0

    .line 367
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is an anonymous or local class therefore it can\'t be added with addImport"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_3
    :goto_0
    return-object p0
.end method

.method public addImport(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 349
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->addImport(Ljava/lang/String;ZZ)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    move-result-object v0

    return-object v0
.end method

.method public addImport(Ljava/lang/String;ZZ)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isStatic"    # Z
    .param p3, "isAsterisk"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "isStatic",
            "isAsterisk"
        }
    .end annotation

    .line 382
    if-nez p1, :cond_0

    .line 383
    return-object p0

    .line 385
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "import "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    .local v0, "i":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_1

    .line 387
    const-string v1, "static "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    if-eqz p3, :cond_2

    .line 391
    const-string v1, ".*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_2
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->parseImport(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->addImport(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    move-result-object v1

    return-object v1
.end method

.method public addImport(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 2
    .param p1, "importDeclaration"    # Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "importDeclaration"
        }
    .end annotation

    .line 236
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->isAsterisk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getImports()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda12;-><init>(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;)V

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 240
    :cond_0
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->isImplicitImport(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getImports()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda13;-><init>(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;)V

    .line 241
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getImports()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 247
    :cond_1
    return-object p0
.end method

.method public addInterface(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 427
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    const/4 v1, 0x0

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->PUBLIC:Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->addInterface(Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public varargs addInterface(Ljava/lang/String;[Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "modifiers"    # [Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "modifiers"
        }
    .end annotation

    .line 438
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    invoke-static {p2}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->createModifierList([Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;ZLjava/lang/String;)V

    .line 439
    .local v0, "classOrInterfaceDeclaration":Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 440
    return-object v0
.end method

.method public addType(Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<",
            "*>;)",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;"
        }
    .end annotation

    .line 323
    .local p1, "type":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<*>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    .line 324
    .local v0, "copy":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<*>;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->addAll(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 325
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 326
    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPES:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->types:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v1, v0, v2}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 327
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->clone()Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 2

    .line 763
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->clone()Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationDeclarationByName(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .param p1, "annotationName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotationName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;",
            ">;"
        }
    .end annotation

    .line 539
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getClassByName(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;",
            ">;"
        }
    .end annotation

    .line 495
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getComments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;",
            ">;"
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getAllContainedComments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnumByName(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .param p1, "enumName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enumName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;",
            ">;"
        }
    .end annotation

    .line 513
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getImport(I)Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getImports()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;

    return-object v0
.end method

.method public getImports()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->imports:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getInterfaceByName(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .param p1, "interfaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interfaceName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;",
            ">;"
        }
    .end annotation

    .line 504
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/CompilationUnitMetaModel;
    .locals 1

    .line 769
    sget-object v0, Lorg/checkerframework/com/github/javaparser/metamodel/JavaParserMetaModel;->compilationUnitMetaModel:Lorg/checkerframework/com/github/javaparser/metamodel/CompilationUnitMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/CompilationUnitMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getModule()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;",
            ">;"
        }
    .end annotation

    .line 584
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->module:Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getPackageDeclaration()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->packageDeclaration:Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryType()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<",
            "*>;>;"
        }
    .end annotation

    .line 530
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getPrimaryTypeName()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda11;-><init>(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryTypeName()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 521
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getStorage()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getStorage()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;",
            ">;"
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->storage:Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<",
            "*>;"
        }
    .end annotation

    .line 200
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    return-object v0
.end method

.method public getTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<",
            "*>;>;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->types:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method synthetic lambda$getPrimaryType$9$org-checkerframework-com-github-javaparser-ast-CompilationUnit(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "name"
        }
    .end annotation

    .line 530
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public recalculatePositions()V
    .locals 5

    .line 638
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTokenRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 641
    sget-object v0, Lorg/checkerframework/com/github/javaparser/Position;->HOME:Lorg/checkerframework/com/github/javaparser/Position;

    .line 642
    .local v0, "cursor":Lorg/checkerframework/com/github/javaparser/Position;
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/TokenRange;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/JavaToken;

    .line 643
    .local v2, "t":Lorg/checkerframework/com/github/javaparser/JavaToken;
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getKind()I

    move-result v3

    sget-object v4, Lorg/checkerframework/com/github/javaparser/JavaToken$Kind;->EOF:Lorg/checkerframework/com/github/javaparser/JavaToken$Kind;

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/JavaToken$Kind;->getKind()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 644
    .local v3, "tokenLength":I
    :goto_1
    invoke-virtual {v0, v3}, Lorg/checkerframework/com/github/javaparser/Position;->right(I)Lorg/checkerframework/com/github/javaparser/Position;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/checkerframework/com/github/javaparser/Range;->range(Lorg/checkerframework/com/github/javaparser/Position;Lorg/checkerframework/com/github/javaparser/Position;)Lorg/checkerframework/com/github/javaparser/Range;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/checkerframework/com/github/javaparser/JavaToken;->setRange(Lorg/checkerframework/com/github/javaparser/Range;)V

    .line 645
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/JavaToken;->getCategory()Lorg/checkerframework/com/github/javaparser/JavaToken$Category;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/JavaToken$Category;->isEndOfLine()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 646
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/Position;->nextLine()Lorg/checkerframework/com/github/javaparser/Position;

    move-result-object v0

    goto :goto_2

    .line 648
    :cond_1
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Lorg/checkerframework/com/github/javaparser/Position;->right(I)Lorg/checkerframework/com/github/javaparser/Position;

    move-result-object v0

    .line 650
    .end local v2    # "t":Lorg/checkerframework/com/github/javaparser/JavaToken;
    .end local v3    # "tokenLength":I
    :goto_2
    goto :goto_0

    .line 651
    :cond_2
    return-void

    .line 639
    .end local v0    # "cursor":Lorg/checkerframework/com/github/javaparser/Position;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t recalculate positions without tokens."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 3
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 545
    if-nez p1, :cond_0

    .line 546
    const/4 v0, 0x0

    return v0

    .line 547
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->imports:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    .line 548
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->imports:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 549
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->imports:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 550
    return v2

    .line 547
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 553
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->module:Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;

    if-eqz v0, :cond_3

    .line 554
    if-ne p1, v0, :cond_3

    .line 555
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->removeModule()Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    .line 556
    return v2

    .line 559
    :cond_3
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->packageDeclaration:Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;

    if-eqz v0, :cond_4

    .line 560
    if-ne p1, v0, :cond_4

    .line 561
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->removePackageDeclaration()Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    .line 562
    return v2

    .line 565
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->types:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 566
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->types:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_5

    .line 567
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->types:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 568
    return v2

    .line 565
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 571
    .end local v0    # "i":I
    :cond_6
    invoke-super {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->remove(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public removeModule()Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 2

    .line 602
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setModule(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    move-result-object v0

    return-object v0
.end method

.method public removePackageDeclaration()Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 2

    .line 576
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setPackageDeclaration(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    move-result-object v0

    return-object v0
.end method

.method public replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 4
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "replacementNode"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "replacementNode"
        }
    .end annotation

    .line 775
    if-nez p1, :cond_0

    .line 776
    const/4 v0, 0x0

    return v0

    .line 777
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->imports:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    .line 778
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->imports:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 779
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->imports:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;

    invoke-virtual {v1, v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 780
    return v2

    .line 777
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 783
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->module:Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;

    if-eqz v0, :cond_3

    .line 784
    if-ne p1, v0, :cond_3

    .line 785
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setModule(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    .line 786
    return v2

    .line 789
    :cond_3
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->packageDeclaration:Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;

    if-eqz v0, :cond_4

    .line 790
    if-ne p1, v0, :cond_4

    .line 791
    move-object v0, p2

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setPackageDeclaration(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    .line 792
    return v2

    .line 795
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->types:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 796
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->types:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v1

    if-ne v1, p1, :cond_5

    .line 797
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->types:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-object v3, p2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    invoke-virtual {v1, v0, v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 798
    return v2

    .line 795
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 801
    .end local v0    # "i":I
    :cond_6
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v0

    return v0
.end method

.method public setImport(ILorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 1
    .param p1, "i"    # I
    .param p2, "imports"    # Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "imports"
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getImports()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 225
    return-object p0
.end method

.method public setImports(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "imports"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;"
        }
    .end annotation

    .line 211
    .local p1, "imports":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->imports:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 213
    return-object p0

    .line 215
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->IMPORTS:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->imports:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->imports:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 217
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 218
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->imports:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 219
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 220
    return-object p0
.end method

.method public setModule(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 2
    .param p1, "module"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "module"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->module:Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;

    if-ne p1, v0, :cond_0

    .line 590
    return-object p0

    .line 592
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->MODULE:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->module:Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 593
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->module:Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;

    if-eqz v0, :cond_1

    .line 594
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 595
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->module:Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;

    .line 596
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 597
    return-object p0
.end method

.method public setModule(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 628
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->parseName(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Z)V

    .line 629
    .local v0, "module":Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setModule(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    .line 630
    return-object v0
.end method

.method public setPackageDeclaration(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 337
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->parseName(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;-><init>(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)V

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setPackageDeclaration(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    .line 338
    return-object p0
.end method

.method public setPackageDeclaration(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 2
    .param p1, "packageDeclaration"    # Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "packageDeclaration"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->packageDeclaration:Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;

    if-ne p1, v0, :cond_0

    .line 287
    return-object p0

    .line 289
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->PACKAGE_DECLARATION:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->packageDeclaration:Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->packageDeclaration:Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;

    if-eqz v0, :cond_1

    .line 291
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 292
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->packageDeclaration:Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;

    .line 293
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 294
    return-object p0
.end method

.method public setStorage(Ljava/nio/file/Path;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 2
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 613
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;-><init>(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$1;)V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->storage:Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;

    .line 614
    return-object p0
.end method

.method public setStorage(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 2
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "charset"
        }
    .end annotation

    .line 618
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;-><init>(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/nio/file/Path;Ljava/nio/charset/Charset;Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$1;)V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->storage:Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;

    .line 619
    return-object p0
.end method

.method public setType(ILorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<",
            "*>;)",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;"
        }
    .end annotation

    .line 315
    .local p2, "type":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<*>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    .line 316
    .local v0, "copy":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<*>;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->addAll(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 317
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 318
    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPES:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->types:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v1, v0, v2}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 319
    return-object p0
.end method

.method public setTypes(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "types"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<",
            "*>;>;)",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;"
        }
    .end annotation

    .line 302
    .local p1, "types":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<*>;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->types:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-ne p1, v0, :cond_0

    .line 304
    return-object p0

    .line 306
    :cond_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->TYPES:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->types:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->notifyPropertyChange(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 307
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->types:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-eqz v0, :cond_1

    .line 308
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->setParentNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 309
    :cond_1
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->types:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 310
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setAsParentNodeOf(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 311
    return-object p0
.end method
