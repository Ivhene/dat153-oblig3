.class public interface abstract Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;
.super Ljava/lang/Object;
.source "SourceRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback$Result;
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract process(Ljava/nio/file/Path;Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback$Result;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "localPath",
            "absolutePath",
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback$Result;"
        }
    .end annotation
.end method
