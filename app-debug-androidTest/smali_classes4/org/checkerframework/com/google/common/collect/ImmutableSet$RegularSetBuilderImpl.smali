.class final Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;
.super Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RegularSetBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private expandTableThreshold:I

.field private hashCode:I

.field private hashTable:[Ljava/lang/Object;

.field private maxRunBeforeFallback:I


# direct methods
.method constructor <init>(I)V
    .locals 5
    .param p1, "expectedCapacity"    # I

    .line 759
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl<TE;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;-><init>(I)V

    .line 760
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v0

    .line 761
    .local v0, "tableSize":I
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    .line 762
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->access$000(I)I

    move-result v1

    iput v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback:I

    .line 763
    const-wide v1, 0x3fe6666666666666L    # 0.7

    int-to-double v3, v0

    mul-double/2addr v3, v1

    double-to-int v1, v3

    iput v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->expandTableThreshold:I

    .line 764
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl<",
            "TE;>;)V"
        }
    .end annotation

    .line 767
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl<TE;>;"
    .local p1, "toCopy":Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl<TE;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;)V

    .line 768
    iget-object v0, p1, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    .line 769
    iget v0, p1, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback:I

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback:I

    .line 770
    iget v0, p1, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->expandTableThreshold:I

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->expandTableThreshold:I

    .line 771
    iget v0, p1, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashCode:I

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashCode:I

    .line 772
    return-void
.end method


# virtual methods
.method add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl<",
            "TE;>;"
        }
    .end annotation

    .line 785
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 787
    .local v0, "eHash":I
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Hashing;->smear(I)I

    move-result v1

    .line 788
    .local v1, "i0":I
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 789
    .local v2, "mask":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    sub-int v4, v3, v1

    iget v5, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback:I

    if-ge v4, v5, :cond_2

    .line 790
    and-int v4, v3, v2

    .line 791
    .local v4, "index":I
    iget-object v5, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    aget-object v5, v5, v4

    .line 792
    .local v5, "tableEntry":Ljava/lang/Object;
    if-nez v5, :cond_0

    .line 793
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->addDedupedElement(Ljava/lang/Object;)V

    .line 794
    iget-object v6, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    aput-object p1, v6, v4

    .line 795
    iget v6, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashCode:I

    add-int/2addr v6, v0

    iput v6, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashCode:I

    .line 796
    iget v6, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->distinct:I

    invoke-virtual {p0, v6}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->ensureTableCapacity(I)V

    .line 797
    return-object p0

    .line 798
    :cond_0
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 799
    return-object p0

    .line 789
    .end local v4    # "index":I
    .end local v5    # "tableEntry":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 803
    .end local v3    # "i":I
    :cond_2
    new-instance v3, Lorg/checkerframework/com/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;

    invoke-direct {v3, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;)V

    invoke-virtual {v3, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;->add(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;

    move-result-object v3

    return-object v3
.end method

.method build()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 824
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl<TE;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->distinct:I

    packed-switch v0, :pswitch_data_0

    .line 830
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->distinct:I

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    goto :goto_0

    .line 828
    :pswitch_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 826
    :pswitch_1
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->of()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 830
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    iget v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->distinct:I

    .line 833
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    nop

    .line 834
    .local v0, "elements":[Ljava/lang/Object;
    new-instance v1, Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;

    iget v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashCode:I

    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/checkerframework/com/google/common/collect/RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method copy()Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl<",
            "TE;>;"
        }
    .end annotation

    .line 808
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl<TE;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;)V

    return-object v0
.end method

.method ensureTableCapacity(I)V
    .locals 5
    .param p1, "minCapacity"    # I

    .line 775
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl<TE;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->expandTableThreshold:I

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    array-length v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ge v1, v2, :cond_0

    .line 776
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 777
    .local v0, "newTableSize":I
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    iget v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->distinct:I

    invoke-static {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->rebuildHashTable(I[Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    .line 778
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->access$000(I)I

    move-result v1

    iput v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback:I

    .line 779
    const-wide v1, 0x3fe6666666666666L    # 0.7

    int-to-double v3, v0

    mul-double/2addr v3, v1

    double-to-int v1, v3

    iput v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->expandTableThreshold:I

    .line 781
    .end local v0    # "newTableSize":I
    :cond_0
    return-void
.end method

.method review()Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl<",
            "TE;>;"
        }
    .end annotation

    .line 813
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl<TE;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->distinct:I

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v0

    .line 814
    .local v0, "targetTableSize":I
    mul-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 815
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->dedupedElements:[Ljava/lang/Object;

    iget v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->distinct:I

    invoke-static {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->rebuildHashTable(I[Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    .line 816
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->access$000(I)I

    move-result v1

    iput v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->maxRunBeforeFallback:I

    .line 817
    const-wide v1, 0x3fe6666666666666L    # 0.7

    int-to-double v3, v0

    mul-double/2addr v3, v1

    double-to-int v1, v3

    iput v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->expandTableThreshold:I

    .line 819
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSet$RegularSetBuilderImpl;->hashTable:[Ljava/lang/Object;

    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->hashFloodingDetected([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet$JdkBackedSetBuilderImpl;-><init>(Lorg/checkerframework/com/google/common/collect/ImmutableSet$SetBuilderImpl;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    return-object v1
.end method
