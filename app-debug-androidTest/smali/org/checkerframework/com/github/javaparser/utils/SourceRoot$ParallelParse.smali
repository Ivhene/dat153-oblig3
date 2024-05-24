.class Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;
.super Ljava/util/concurrent/RecursiveAction;
.source "SourceRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParallelParse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final callback:Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;

.field private final path:Ljava/nio/file/Path;


# direct methods
.method constructor <init>(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;)V
    .locals 0
    .param p1, "path"    # Ljava/nio/file/Path;
    .param p2, "callback"    # Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "callback"
        }
    .end annotation

    .line 558
    invoke-direct {p0}, Ljava/util/concurrent/RecursiveAction;-><init>()V

    .line 559
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;->path:Ljava/nio/file/Path;

    .line 560
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;->callback:Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;

    .line 561
    return-void
.end method

.method static synthetic access$300(Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;)Ljava/nio/file/Path;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;

    .line 552
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;->path:Ljava/nio/file/Path;

    return-object v0
.end method

.method static synthetic access$400(Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;

    .line 552
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;->callback:Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;

    return-object v0
.end method


# virtual methods
.method protected compute()V
    .locals 3

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .local v0, "walks":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;>;"
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;->path:Ljava/nio/file/Path;

    new-instance v2, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse$1;

    invoke-direct {v2, p0, v0}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse$1;-><init>(Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;Ljava/util/List;)V

    invoke-static {v1, v2}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    goto :goto_0

    .line 588
    :catch_0
    move-exception v1

    .line 589
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lorg/checkerframework/com/github/javaparser/utils/Log;->error(Ljava/lang/Throwable;)V

    .line 592
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;

    .line 593
    .local v2, "w":Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;->join()Ljava/lang/Object;

    .line 594
    .end local v2    # "w":Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;
    goto :goto_1

    .line 595
    :cond_0
    return-void
.end method
