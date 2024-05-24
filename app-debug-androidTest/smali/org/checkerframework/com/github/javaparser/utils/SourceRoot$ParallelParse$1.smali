.class Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse$1;
.super Ljava/nio/file/SimpleFileVisitor;
.source "SourceRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;->compute()V
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
.field final synthetic this$0:Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;

.field final synthetic val$walks:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$walks"
        }
    .end annotation

    .line 567
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse$1;->this$0:Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse$1;->val$walks:Ljava/util/List;

    invoke-direct {p0}, Ljava/nio/file/SimpleFileVisitor;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 567
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse$1;->preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public preVisitDirectory(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 2
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

    .line 570
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->access$100(Ljava/nio/file/Path;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    sget-object v0, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    return-object v0

    .line 573
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse$1;->this$0:Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;->access$300(Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 574
    new-instance v0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse$1;->this$0:Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;

    invoke-static {v1}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;->access$400(Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;-><init>(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;)V

    .line 575
    .local v0, "w":Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 576
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse$1;->val$walks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    sget-object v1, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    return-object v1

    .line 579
    .end local v0    # "w":Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;
    :cond_1
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

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

    .line 567
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse$1;->visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFile(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1
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

    .line 585
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse$1;->this$0:Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;->access$400(Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;->process(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object v0

    return-object v0
.end method
