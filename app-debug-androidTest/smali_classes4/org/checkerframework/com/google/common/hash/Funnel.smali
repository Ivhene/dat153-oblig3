.class public interface abstract Lorg/checkerframework/com/google/common/hash/Funnel;
.super Ljava/lang/Object;
.source "Funnel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public abstract funnel(Ljava/lang/Object;Lorg/checkerframework/com/google/common/hash/PrimitiveSink;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/checkerframework/com/google/common/hash/PrimitiveSink;",
            ")V"
        }
    .end annotation
.end method
