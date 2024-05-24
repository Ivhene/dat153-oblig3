.class final Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableSortedMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field final counts:[I

.field final elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/SortedMultiset;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/SortedMultiset<",
            "TE;>;)V"
        }
    .end annotation

    .line 564
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$SerializedForm;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$SerializedForm<TE;>;"
    .local p1, "multiset":Lorg/checkerframework/com/google/common/collect/SortedMultiset;, "Lorg/checkerframework/com/google/common/collect/SortedMultiset<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/SortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$SerializedForm;->comparator:Ljava/util/Comparator;

    .line 566
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/SortedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 567
    .local v0, "n":I
    new-array v1, v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    .line 568
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$SerializedForm;->counts:[I

    .line 569
    const/4 v1, 0x0

    .line 570
    .local v1, "i":I
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/SortedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;

    .line 571
    .local v3, "entry":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<TE;>;"
    iget-object v4, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    invoke-interface {v3}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v1

    .line 572
    iget-object v4, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$SerializedForm;->counts:[I

    invoke-interface {v3}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getCount()I

    move-result v5

    aput v5, v4, v1

    .line 573
    nop

    .end local v3    # "entry":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<TE;>;"
    add-int/lit8 v1, v1, 0x1

    .line 574
    goto :goto_0

    .line 575
    :cond_0
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 5

    .line 578
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$SerializedForm;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$SerializedForm<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    array-length v0, v0

    .line 579
    .local v0, "n":I
    new-instance v1, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$SerializedForm;->comparator:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;-><init>(Ljava/util/Comparator;)V

    .line 580
    .local v1, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 581
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$SerializedForm;->counts:[I

    aget v4, v4, v2

    invoke-virtual {v1, v3, v4}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;->addCopies(Ljava/lang/Object;I)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;

    .line 580
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 583
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableSortedMultiset;

    move-result-object v2

    return-object v2
.end method
