.class public Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;
.super Ljava/lang/Object;
.source "CompilationUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Storage"
.end annotation


# instance fields
.field private final compilationUnit:Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

.field private final encoding:Ljava/nio/charset/Charset;

.field private final path:Ljava/nio/file/Path;


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/nio/file/Path;)V
    .locals 1
    .param p1, "compilationUnit"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .param p2, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "compilationUnit",
            "path"
        }
    .end annotation

    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;->compilationUnit:Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    .line 668
    invoke-interface {p2}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;->path:Ljava/nio/file/Path;

    .line 669
    sget-object v0, Lorg/checkerframework/com/github/javaparser/Providers;->UTF8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;->encoding:Ljava/nio/charset/Charset;

    .line 670
    return-void
.end method

.method private constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/nio/file/Path;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "compilationUnit"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .param p2, "path"    # Ljava/nio/file/Path;
    .param p3, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "compilationUnit",
            "path",
            "encoding"
        }
    .end annotation

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;->compilationUnit:Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    .line 674
    invoke-interface {p2}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;->path:Ljava/nio/file/Path;

    .line 675
    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;->encoding:Ljava/nio/charset/Charset;

    .line 676
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/nio/file/Path;Ljava/nio/charset/Charset;Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .param p2, "x1"    # Ljava/nio/file/Path;
    .param p3, "x2"    # Ljava/nio/charset/Charset;
    .param p4, "x3"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$1;

    .line 658
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;-><init>(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/nio/file/Path;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .param p2, "x1"    # Ljava/nio/file/Path;
    .param p3, "x2"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$1;

    .line 658
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;-><init>(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/nio/file/Path;)V

    return-void
.end method

.method static synthetic lambda$getSourceRoot$0(Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 2
    .param p0, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    .line 706
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->packageToPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$save$2(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;)Ljava/lang/String;
    .locals 1
    .param p0, "cu"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "cu"
        }
    .end annotation

    .line 721
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinter;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinter;-><init>()V

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinter;->print(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCompilationUnit()Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 1

    .line 689
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;->compilationUnit:Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    return-object v0
.end method

.method public getDirectory()Ljava/nio/file/Path;
    .locals 1

    .line 714
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/nio/charset/Charset;
    .locals 1

    .line 696
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;->encoding:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 710
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/nio/file/Path;
    .locals 1

    .line 682
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;->path:Ljava/nio/file/Path;

    return-object v0
.end method

.method public getSourceRoot()Ljava/nio/file/Path;
    .locals 3

    .line 705
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;->compilationUnit:Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 706
    .local v0, "pkgAsString":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/String;>;"
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage$$ExternalSyntheticLambda3;-><init>(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;->getDirectory()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    return-object v1
.end method

.method synthetic lambda$getSourceRoot$1$org-checkerframework-com-github-javaparser-ast-CompilationUnit$Storage(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 1
    .param p1, "pkg"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pkg"
        }
    .end annotation

    .line 706
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;->getDirectory()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->subtractPaths(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public reparse(Lorg/checkerframework/com/github/javaparser/JavaParser;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "javaParser"    # Lorg/checkerframework/com/github/javaparser/JavaParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "javaParser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/JavaParser;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    .line 753
    :try_start_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->COMPILATION_UNIT:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/nio/file/Path;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 754
    :catch_0
    move-exception v0

    .line 755
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public save()V
    .locals 1

    .line 721
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;->save(Ljava/util/function/Function;)V

    .line 722
    return-void
.end method

.method public save(Ljava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "makeOutput"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 731
    .local p1, "makeOutput":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;->encoding:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;->save(Ljava/util/function/Function;Ljava/nio/charset/Charset;)V

    .line 732
    return-void
.end method

.method public save(Ljava/util/function/Function;Ljava/nio/charset/Charset;)V
    .locals 4
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "makeOutput",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")V"
        }
    .end annotation

    .line 743
    .local p1, "makeOutput":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 744
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;->getCompilationUnit()Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 745
    .local v0, "code":Ljava/lang/String;
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;->path:Ljava/nio/file/Path;

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3, v1}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    nop

    .line 749
    .end local v0    # "code":Ljava/lang/String;
    return-void

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
