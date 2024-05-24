.class abstract Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;
.super Ljava/lang/Object;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SetBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field dedupedElements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field distinct:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "expectedCapacity"    # I

    .line 565
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    .line 567
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;->distinct:I

    .line 568
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl<",
            "TE;>;)V"
        }
    .end annotation

    .line 571
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl<TE;>;"
    .local p1, "toCopy":Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iget-object v0, p1, Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    .line 573
    iget v0, p1, Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;->distinct:I

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;->distinct:I

    .line 574
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 2
    .param p1, "minCapacity"    # I

    .line 581
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 582
    array-length v0, v0

    .line 583
    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result v0

    .line 584
    .local v0, "newCapacity":I
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    .line 586
    .end local v0    # "newCapacity":I
    :cond_0
    return-void
.end method


# virtual methods
.method abstract add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl<",
            "TE;>;"
        }
    .end annotation
.end method

.method final addDedupedElement(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 590
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;->distinct:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;->ensureCapacity(I)V

    .line 591
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;->distinct:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;->distinct:I

    aput-object p1, v0, v1

    .line 592
    return-void
.end method

.method abstract build()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method final combine(Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl<",
            "TE;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl<",
            "TE;>;"
        }
    .end annotation

    .line 602
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl<TE;>;"
    .local p1, "other":Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl<TE;>;"
    move-object v0, p0

    .line 603
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl<TE;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p1, Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;->distinct:I

    if-ge v1, v2, :cond_0

    .line 604
    iget-object v2, p1, Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;

    move-result-object v0

    .line 603
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 606
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method abstract copy()Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl<",
            "TE;>;"
        }
    .end annotation
.end method

.method review()Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl<",
            "TE;>;"
        }
    .end annotation

    .line 620
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl<TE;>;"
    return-object p0
.end method
