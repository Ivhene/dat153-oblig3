.class public final synthetic Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda10;->f$0:Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;

    return-void
.end method


# virtual methods
.method public final process(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda10;->f$0:Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->lambda$tryToParseParallelized$5$org-checkerframework-com-github-javaparser-utils-SourceRoot(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method
