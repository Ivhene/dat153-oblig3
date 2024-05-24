.class public final Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;
.super Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;
.source "ImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 175
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;-><init>()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .line 178
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    .line 179
    return-void
.end method


# virtual methods
.method public build()Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 267
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->size:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 280
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->valueComparator:Ljava/util/Comparator;

    if-eqz v0, :cond_1

    .line 281
    iget-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->entriesUsed:Z

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->entries:[Ljava/util/Map$Entry;

    iget v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->size:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->entries:[Ljava/util/Map$Entry;

    goto :goto_0

    .line 271
    :pswitch_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->entries:[Ljava/util/Map$Entry;

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->entries:[Ljava/util/Map$Entry;

    aget-object v1, v2, v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0

    .line 269
    :pswitch_1
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0

    .line 284
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->entries:[Ljava/util/Map$Entry;

    iget v2, p0, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->size:I

    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->valueComparator:Ljava/util/Comparator;

    .line 288
    invoke-static {v3}, Lorg/checkerframework/com/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v3

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Maps;->valueFunction()Lorg/checkerframework/com/google/common/base/Function;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/com/google/common/collect/Ordering;->onResultOf(Lorg/checkerframework/com/google/common/base/Function;)Lorg/checkerframework/com/google/common/collect/Ordering;

    move-result-object v3

    .line 284
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 290
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->entriesUsed:Z

    .line 291
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->size:I

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->entries:[Ljava/util/Map$Entry;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->fromEntryArray(I[Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic build()Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 1

    .line 169
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method buildJdkBacked()Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 298
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->valueComparator:Ljava/util/Comparator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "buildJdkBacked is for tests only, doesn\'t support orderEntriesByValue"

    invoke-static {v0, v3}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 301
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->size:I

    packed-switch v0, :pswitch_data_0

    .line 307
    iput-boolean v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->entriesUsed:Z

    .line 308
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->size:I

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->entries:[Ljava/util/Map$Entry;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/RegularImmutableBiMap;->fromEntryArray(I[Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0

    .line 305
    :pswitch_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->entries:[Ljava/util/Map$Entry;

    aget-object v0, v0, v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->entries:[Ljava/util/Map$Entry;

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0

    .line 303
    :pswitch_1
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method bridge synthetic buildJdkBacked()Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 1

    .line 169
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->buildJdkBacked()Lorg/checkerframework/com/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method combine(Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;)Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 254
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    .local p1, "builder":Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->combine(Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 255
    return-object p0
.end method

.method bridge synthetic combine(Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 169
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->combine(Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;)Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public orderEntriesByValue(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 247
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    .local p1, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->orderEntriesByValue(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 248
    return-object p0
.end method

.method public bridge synthetic orderEntriesByValue(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 169
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->orderEntriesByValue(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 188
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 189
    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 201
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 202
    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 169
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 169
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 229
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    .local p1, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 230
    return-object p0
.end method

.method public putAll(Ljava/util/Map;)Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 214
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;

    .line 215
    return-object p0
.end method

.method public bridge synthetic putAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 169
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->putAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)Lorg/checkerframework/com/google/common/collect/ImmutableMap$Builder;
    .locals 0

    .line 169
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;->putAll(Ljava/util/Map;)Lorg/checkerframework/com/google/common/collect/ImmutableBiMap$Builder;

    move-result-object p1

    return-object p1
.end method
