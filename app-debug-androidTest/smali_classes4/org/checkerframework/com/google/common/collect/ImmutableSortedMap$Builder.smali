.class public Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;
.super Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    .line 459
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 460
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    .line 461
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 1

    .line 451
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 547
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;->size:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 553
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;->entries:[Ljava/util/Map$Entry;

    iget v3, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;->size:I

    invoke-static {v0, v1, v2, v3}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->access$100(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 551
    :pswitch_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;->entries:[Ljava/util/Map$Entry;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;->entries:[Ljava/util/Map$Entry;

    aget-object v1, v3, v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->access$000(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 549
    :pswitch_1
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method bridge synthetic combine(Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 451
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;->combine(Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method combine(Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 535
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, "other":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->combine(Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 536
    return-object p0
.end method

.method public bridge synthetic orderEntriesByValue(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 451
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;->orderEntriesByValue(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public orderEntriesByValue(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 530
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not available on ImmutableSortedMap.Builder"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 451
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 451
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;->put(Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 471
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 472
    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 485
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 486
    return-object p0
.end method

.method public bridge synthetic putAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 451
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;->putAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 451
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;->putAll(Ljava/util/Map;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 515
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 516
    return-object p0
.end method

.method public putAll(Ljava/util/Map;)Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 499
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedMap$Builder<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 500
    return-object p0
.end method
