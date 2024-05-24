.class final Lorg/checkerframework/com/google/common/util/concurrent/Striped$1;
.super Ljava/lang/Object;
.source "Striped.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/util/concurrent/Striped;->lock(I)Lorg/checkerframework/com/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Supplier<",
        "Ljava/util/concurrent/locks/Lock;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 208
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/Striped$1;->get()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 211
    new-instance v0, Lorg/checkerframework/com/google/common/util/concurrent/Striped$PaddedLock;

    invoke-direct {v0}, Lorg/checkerframework/com/google/common/util/concurrent/Striped$PaddedLock;-><init>()V

    return-object v0
.end method
