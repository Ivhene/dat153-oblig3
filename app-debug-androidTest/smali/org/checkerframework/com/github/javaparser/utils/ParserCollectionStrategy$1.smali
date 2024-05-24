.class Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy$1;
.super Ljava/nio/file/SimpleFileVisitor;
.source "ParserCollectionStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy;->collect(Ljava/nio/file/Path;)Lorg/checkerframework/com/github/javaparser/utils/ProjectRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/file/SimpleFileVisitor<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field current_root:Ljava/nio/file/Path;

.field javaMatcher:Ljava/nio/file/PathMatcher;

.field final synthetic this$0:Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy;

.field final synthetic val$projectRoot:Lorg/checkerframework/com/github/javaparser/utils/ProjectRoot;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy;Lorg/checkerframework/com/github/javaparser/utils/ProjectRoot;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$projectRoot"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy$1;->this$0:Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy$1;->val$projectRoot:Lorg/checkerframework/com/github/javaparser/utils/ProjectRoot;

    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    .line 37
    const-string p2, "glob:**.java"

    invoke-virtual {p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object p2

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy$1;->javaMatcher:Ljava/nio/file/PathMatcher;

    return-void
.end method


# virtual methods
.method public bridge synthetic postVisitDirectory(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "dir",
            "e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy$1;->postVisitDirectory(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public postVisitDirectory(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .param p1, "dir"    # Ljava/nio/file/Path;
    .param p2, "e"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dir",
            "e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy$1;->current_root:Ljava/nio/file/Path;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Ljava/nio/file/Files;->isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy$1;->val$projectRoot:Lorg/checkerframework/com/github/javaparser/utils/ProjectRoot;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/utils/ProjectRoot;->addSourceRoot(Ljava/nio/file/Path;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy$1;->current_root:Ljava/nio/file/Path;

    .line 64
    :cond_0
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object v0
.end method

.method public bridge synthetic preVisitDirectory(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "dir",
            "attrs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy$1;->preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .param p1, "dir"    # Ljava/nio/file/Path;
    .param p2, "attrs"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dir",
            "attrs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-static {p1}, Ljava/nio/file/Files;->isHidden(Ljava/nio/file/Path;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy$1;->current_root:Ljava/nio/file/Path;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object v0

    .line 53
    :cond_1
    :goto_0
    sget-object v0, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    return-object v0
.end method

.method public bridge synthetic visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "file",
            "attrs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy$1;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 2
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "attrs"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "attrs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy$1;->javaMatcher:Ljava/nio/file/PathMatcher;

    invoke-interface {v0, p1}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy$1;->this$0:Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy;->getRoot(Ljava/nio/file/Path;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy$1;->current_root:Ljava/nio/file/Path;

    .line 43
    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Ljava/nio/file/FileVisitResult;->SKIP_SIBLINGS:Ljava/nio/file/FileVisitResult;

    return-object v0

    .line 47
    :cond_0
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object v0
.end method
