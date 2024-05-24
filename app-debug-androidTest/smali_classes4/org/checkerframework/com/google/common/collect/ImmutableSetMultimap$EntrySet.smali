.class final Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$EntrySet;
.super Lorg/checkerframework/com/google/common/collect/ImmutableSet;
.source "ImmutableSetMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final transient multimap:Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 530
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$EntrySet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$EntrySet<TK;TV;>;"
    .local p1, "multimap":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;-><init>()V

    .line 531
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$EntrySet;->multimap:Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    .line 532
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 536
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$EntrySet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$EntrySet<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 537
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 538
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$EntrySet;->multimap:Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 540
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .line 555
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$EntrySet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$EntrySet<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 527
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$EntrySet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$EntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$EntrySet;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 550
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$EntrySet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$EntrySet<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$EntrySet;->multimap:Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->entryIterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 545
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$EntrySet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$EntrySet<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap$EntrySet;->multimap:Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSetMultimap;->size()I

    move-result v0

    return v0
.end method
