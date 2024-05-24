.class final Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final counts:[I

.field final elements:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Multiset;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "*>;)V"
        }
    .end annotation

    .line 620
    .local p1, "multiset":Lorg/checkerframework/com/google/common/collect/Multiset;, "Lorg/checkerframework/com/google/common/collect/Multiset<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 622
    .local v0, "distinct":I
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    .line 623
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$SerializedForm;->counts:[I

    .line 624
    const/4 v1, 0x0

    .line 625
    .local v1, "i":I
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

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

    .line 626
    .local v3, "entry":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<*>;"
    iget-object v4, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    invoke-interface {v3}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v1

    .line 627
    iget-object v4, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$SerializedForm;->counts:[I

    invoke-interface {v3}, Lorg/checkerframework/com/google/common/collect/Multiset$Entry;->getCount()I

    move-result v5

    aput v5, v4, v1

    .line 628
    nop

    .end local v3    # "entry":Lorg/checkerframework/com/google/common/collect/Multiset$Entry;, "Lorg/checkerframework/com/google/common/collect/Multiset$Entry<*>;"
    add-int/lit8 v1, v1, 0x1

    .line 629
    goto :goto_0

    .line 630
    :cond_0
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 4

    .line 633
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;->create(I)Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    .line 634
    .local v0, "multiset":Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;, "Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$SerializedForm;->elements:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 635
    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset$SerializedForm;->counts:[I

    aget v3, v3, v1

    invoke-virtual {v0, v2, v3}, Lorg/checkerframework/com/google/common/collect/LinkedHashMultiset;->add(Ljava/lang/Object;I)I

    .line 634
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 637
    .end local v1    # "i":I
    :cond_0
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;->copyOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMultiset;

    move-result-object v1

    return-object v1
.end method
