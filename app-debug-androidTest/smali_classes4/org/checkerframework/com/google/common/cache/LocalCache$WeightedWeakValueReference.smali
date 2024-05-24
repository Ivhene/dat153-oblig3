.class final Lorg/checkerframework/com/google/common/cache/LocalCache$WeightedWeakValueReference;
.super Lorg/checkerframework/com/google/common/cache/LocalCache$WeakValueReference;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeightedWeakValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/cache/LocalCache$WeakValueReference<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final weight:I


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;I)V
    .locals 0
    .param p4, "weight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 1589
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WeightedWeakValueReference;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WeightedWeakValueReference<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    .local p2, "referent":Ljava/lang/Object;, "TV;"
    .local p3, "entry":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/cache/LocalCache$WeakValueReference;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    .line 1590
    iput p4, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeightedWeakValueReference;->weight:I

    .line 1591
    return-void
.end method


# virtual methods
.method public copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1601
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WeightedWeakValueReference;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WeightedWeakValueReference<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "entry":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeightedWeakValueReference;

    iget v1, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeightedWeakValueReference;->weight:I

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/checkerframework/com/google/common/cache/LocalCache$WeightedWeakValueReference;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;I)V

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .line 1595
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WeightedWeakValueReference;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WeightedWeakValueReference<TK;TV;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeightedWeakValueReference;->weight:I

    return v0
.end method
