.class final Lorg/checkerframework/com/google/common/util/concurrent/Striped$4;
.super Ljava/lang/Object;
.source "Striped.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/util/concurrent/Striped;->lazyWeakSemaphore(II)Lorg/checkerframework/com/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Supplier<",
        "Ljava/util/concurrent/Semaphore;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$permits:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 270
    iput p1, p0, Lorg/checkerframework/com/google/common/util/concurrent/Striped$4;->val$permits:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 270
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/util/concurrent/Striped$4;->get()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/concurrent/Semaphore;
    .locals 3

    .line 273
    new-instance v0, Ljava/util/concurrent/Semaphore;

    iget v1, p0, Lorg/checkerframework/com/google/common/util/concurrent/Striped$4;->val$permits:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    return-object v0
.end method
