.class public interface abstract Lorg/checkerframework/com/github/javaparser/utils/SourceZip$Callback;
.super Ljava/lang/Object;
.source "SourceZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/utils/SourceZip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract process(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ParseResult;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "relativeZipEntryPath",
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;)V"
        }
    .end annotation
.end method
