.class final Lorg/checkerframework/com/google/common/cache/LocalCache$WeightedStrongValueReference;
.super Lorg/checkerframework/com/google/common/cache/LocalCache$StrongValueReference;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeightedStrongValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/cache/LocalCache$StrongValueReference<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final weight:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .param p2, "weight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .line 1632
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WeightedStrongValueReference;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WeightedStrongValueReference<TK;TV;>;"
    .local p1, "referent":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/cache/LocalCache$StrongValueReference;-><init>(Ljava/lang/Object;)V

    .line 1633
    iput p2, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeightedStrongValueReference;->weight:I

    .line 1634
    return-void
.end method


# virtual methods
.method public getWeight()I
    .locals 1

    .line 1638
    .local p0, "this":Lorg/checkerframework/com/google/common/cache/LocalCache$WeightedStrongValueReference;, "Lorg/checkerframework/com/google/common/cache/LocalCache$WeightedStrongValueReference<TK;TV;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/cache/LocalCache$WeightedStrongValueReference;->weight:I

    return v0
.end method
