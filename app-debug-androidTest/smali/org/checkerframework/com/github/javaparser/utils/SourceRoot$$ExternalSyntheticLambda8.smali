.class public final synthetic Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;

.field public final synthetic f$1:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

.field public final synthetic f$2:Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda8;->f$0:Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;

    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda8;->f$1:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda8;->f$2:Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;

    return-void
.end method


# virtual methods
.method public final process(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 3

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda8;->f$0:Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda8;->f$1:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda8;->f$2:Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->lambda$parseParallelized$10$org-checkerframework-com-github-javaparser-utils-SourceRoot(Lorg/checkerframework/com/github/javaparser/ParserConfiguration;Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method
