.class final enum Lorg/checkerframework/com/google/common/cache/LocalCache$Strength$2;
.super Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 396
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/google/common/cache/LocalCache$Strength;-><init>(Ljava/lang/String;ILorg/checkerframework/com/google/common/cache/LocalCache$1;)V

    return-void
.end method


# virtual methods
.method defaultEquivalence()Lorg/checkerframework/com/google/common/base/Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 408
    invoke-static {}, Lorg/checkerframework/com/google/common/base/Equivalence;->identity()Lorg/checkerframework/com/google/common/base/Equivalence;

    move-result-object v0

    return-object v0
.end method

.method referenceValue(Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference;
    .locals 2
    .param p4, "weight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;",
            "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<",
            "TK;TV;>;TV;I)",
            "Lorg/checkerframework/com/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 400
    .local p1, "segment":Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;, "Lorg/checkerframework/com/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p2, "entry":Lorg/checkerframework/com/google/common/cache/ReferenceEntry;, "Lorg/checkerframework/com/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    new-instance v0, Lorg/checkerframework/com/google/common/cache/LocalCache$SoftValueReference;

    iget-object v1, p1, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p3, p2}, Lorg/checkerframework/com/google/common/cache/LocalCache$SoftValueReference;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeightedSoftValueReference;

    iget-object v1, p1, Lorg/checkerframework/com/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1, p3, p2, p4}, Lorg/checkerframework/com/google/common/cache/LocalCache$WeightedSoftValueReference;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lorg/checkerframework/com/google/common/cache/ReferenceEntry;I)V

    :goto_0
    return-object v0
.end method