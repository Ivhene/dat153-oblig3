.class interface abstract Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;
.super Ljava/lang/Object;
.source "SourceRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "VisitFileCallback"
.end annotation


# virtual methods
.method public abstract process(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
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
.end method
