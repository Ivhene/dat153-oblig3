.class public interface abstract Lorg/checkerframework/com/google/common/cache/RemovalListener;
.super Ljava/lang/Object;
.source "RemovalListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract onRemoval(Lorg/checkerframework/com/google/common/cache/RemovalNotification;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/cache/RemovalNotification<",
            "TK;TV;>;)V"
        }
    .end annotation
.end method