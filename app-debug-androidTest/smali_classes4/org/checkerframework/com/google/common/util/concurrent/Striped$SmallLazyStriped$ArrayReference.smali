.class final Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;
.super Ljava/lang/ref/WeakReference;
.source "Striped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArrayReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field final index:I


# direct methods
.method constructor <init>(Ljava/lang/Object;ILjava/lang/ref/ReferenceQueue;)V
    .locals 0
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "I",
            "Ljava/lang/ref/ReferenceQueue<",
            "T",
            "L;",
            ">;)V"
        }
    .end annotation

    .line 497
    .local p0, "this":Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;, "Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference<TL;>;"
    .local p1, "referent":Ljava/lang/Object;, "TL;"
    .local p3, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TL;>;"
    invoke-direct {p0, p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 498
    iput p2, p0, Lorg/checkerframework/com/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;->index:I

    .line 499
    return-void
.end method
