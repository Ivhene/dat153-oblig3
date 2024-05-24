.class public interface abstract Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTokenRange;
.super Ljava/lang/Object;
.source "NodeWithTokenRange.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getTokenRange()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setTokenRange(Lorg/checkerframework/com/github/javaparser/TokenRange;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            ")TN;"
        }
    .end annotation
.end method
