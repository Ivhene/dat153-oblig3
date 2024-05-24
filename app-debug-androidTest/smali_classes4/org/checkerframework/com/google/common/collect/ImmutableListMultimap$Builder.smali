.class public final Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;
.super Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;
.source "ImmutableListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;
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
        "Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 227
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 316
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableMultimap;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;

    return-object v0
.end method

.method public bridge synthetic build()Lorg/checkerframework/com/google/common/collect/ImmutableMultimap;
    .locals 1

    .line 222
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->build()Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method combine(Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder<",
            "TK;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 285
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    .local p1, "other":Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;->combine(Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;

    .line 286
    return-object p0
.end method

.method bridge synthetic combine(Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 222
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->combine(Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public orderKeysBy(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 297
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    .local p1, "keyComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;->orderKeysBy(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;

    .line 298
    return-object p0
.end method

.method public bridge synthetic orderKeysBy(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 222
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->orderKeysBy(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public orderValuesBy(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 309
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    .local p1, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;->orderValuesBy(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;

    .line 310
    return-object p0
.end method

.method public bridge synthetic orderValuesBy(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 222
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->orderValuesBy(Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 232
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;

    .line 233
    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 244
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;->put(Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;

    .line 245
    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 222
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 222
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/util/Map$Entry;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 257
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    .local p1, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;

    .line 258
    return-object p0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 264
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;

    .line 265
    return-object p0
.end method

.method public varargs putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 271
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;

    .line 272
    return-object p0
.end method

.method public putAll(Lorg/checkerframework/com/google/common/collect/Multimap;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "+TK;+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 278
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    .local p1, "multimap":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<+TK;+TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;->putAll(Lorg/checkerframework/com/google/common/collect/Multimap;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;

    .line 279
    return-object p0
.end method

.method public bridge synthetic putAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 222
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->putAll(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 222
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 222
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putAll(Lorg/checkerframework/com/google/common/collect/Multimap;)Lorg/checkerframework/com/google/common/collect/ImmutableMultimap$Builder;
    .locals 0

    .line 222
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;, "Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;->putAll(Lorg/checkerframework/com/google/common/collect/Multimap;)Lorg/checkerframework/com/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object p1

    return-object p1
.end method
