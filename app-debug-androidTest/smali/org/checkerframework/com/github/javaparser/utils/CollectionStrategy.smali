.class public interface abstract Lorg/checkerframework/com/github/javaparser/utils/CollectionStrategy;
.super Ljava/lang/Object;
.source "CollectionStrategy.java"


# direct methods
.method public static synthetic lambda$getRoot$0(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0
    .param p0, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "file"
        }
    .end annotation

    .line 27
    return-object p0
.end method

.method public static synthetic lambda$getRoot$1(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0
    .param p0, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "file"
        }
    .end annotation

    .line 29
    return-object p0
.end method


# virtual methods
.method public abstract collect(Ljava/nio/file/Path;)Lorg/checkerframework/com/github/javaparser/utils/ProjectRoot;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation
.end method

.method public getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pattern"
        }
    .end annotation

    .line 35
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object v0

    return-object v0
.end method

.method public getRoot(Ljava/nio/file/Path;)Ljava/util/Optional;
    .locals 4
    .param p1, "file"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->parse(Ljava/io/File;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getStorage()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/utils/CollectionStrategy$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/utils/CollectionStrategy$$ExternalSyntheticLambda0;-><init>()V

    .line 25
    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0
    :try_end_0
    .catch Lorg/checkerframework/com/github/javaparser/ParseProblemException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object v0

    .line 28
    :catch_0
    move-exception v2

    .line 29
    .local v2, "e":Ljava/lang/RuntimeException;
    new-array v1, v1, [Ljava/util/function/Supplier;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/utils/CollectionStrategy$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1}, Lorg/checkerframework/com/github/javaparser/utils/CollectionStrategy$$ExternalSyntheticLambda2;-><init>(Ljava/nio/file/Path;)V

    aput-object v3, v1, v0

    const-string v0, "Could not parse file %s"

    invoke-static {v0, v1}, Lorg/checkerframework/com/github/javaparser/utils/Log;->info(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    goto :goto_0

    .line 26
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .line 27
    .local v2, "e":Lorg/checkerframework/com/github/javaparser/ParseProblemException;
    new-array v1, v1, [Ljava/util/function/Supplier;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/utils/CollectionStrategy$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1}, Lorg/checkerframework/com/github/javaparser/utils/CollectionStrategy$$ExternalSyntheticLambda1;-><init>(Ljava/nio/file/Path;)V

    aput-object v3, v1, v0

    const-string v0, "Problem parsing file %s"

    invoke-static {v0, v1}, Lorg/checkerframework/com/github/javaparser/utils/Log;->info(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    .line 30
    .end local v2    # "e":Lorg/checkerframework/com/github/javaparser/ParseProblemException;
    nop

    .line 31
    :goto_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
