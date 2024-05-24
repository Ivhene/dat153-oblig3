.class public Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity;
.super Ljava/lang/Object;
.source "IntersectionSimilarity.java"

# interfaces
.implements Lorg/checkerframework/org/apache/commons/text/similarity/SimilarityScore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;,
        Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$BagCount;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/org/apache/commons/text/similarity/SimilarityScore<",
        "Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final converter:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Collection<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Collection<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 131
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity;, "Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity<TT;>;"
    .local p1, "converter":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/CharSequence;Ljava/util/Collection<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    if-eqz p1, :cond_0

    .line 135
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity;->converter:Ljava/util/function/Function;

    .line 136
    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Converter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getIntersection(Ljava/util/Set;Ljava/util/Set;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/Set<",
            "TT;>;)I"
        }
    .end annotation

    .line 210
    .local p0, "setA":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p1, "setB":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    const/4 v0, 0x0

    .line 211
    .local v0, "intersection":I
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 212
    .local v2, "element":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    add-int/lit8 v0, v0, 0x1

    .line 215
    .end local v2    # "element":Ljava/lang/Object;, "TT;"
    :cond_0
    goto :goto_0

    .line 216
    :cond_1
    return v0
.end method

.method private getIntersection(Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity<",
            "TT;>.TinyBag;",
            "Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity<",
            "TT;>.TinyBag;)I"
        }
    .end annotation

    .line 228
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity;, "Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity<TT;>;"
    .local p1, "bagA":Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;, "Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity<TT;>.TinyBag;"
    .local p2, "bagB":Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;, "Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity<TT;>.TinyBag;"
    const/4 v0, 0x0

    .line 229
    .local v0, "intersection":I
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 230
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$BagCount;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 231
    .local v3, "element":Ljava/lang/Object;, "TT;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$BagCount;

    iget v4, v4, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$BagCount;->count:I

    .line 233
    .local v4, "count":I
    invoke-virtual {p2, v3}, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;->getCount(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr v0, v5

    .line 234
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$BagCount;>;"
    .end local v3    # "element":Ljava/lang/Object;, "TT;"
    .end local v4    # "count":I
    goto :goto_0

    .line 235
    :cond_0
    return v0
.end method

.method private toBag(Ljava/util/Collection;)Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity<",
            "TT;>.TinyBag;"
        }
    .end annotation

    .line 193
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity;, "Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity<TT;>;"
    .local p1, "objects":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;-><init>(Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity;I)V

    .line 194
    .local v0, "bag":Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;, "Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity<TT;>.TinyBag;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 195
    .local v2, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;->add(Ljava/lang/Object;)V

    .line 196
    .end local v2    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 197
    :cond_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 0

    .line 38
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity;, "Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity<TT;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionResult;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionResult;
    .locals 8
    .param p1, "left"    # Ljava/lang/CharSequence;
    .param p2, "right"    # Ljava/lang/CharSequence;

    .line 148
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity;, "Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity<TT;>;"
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 153
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity;->converter:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 154
    .local v0, "objectsA":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity;->converter:Ljava/util/function/Function;

    invoke-interface {v1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 155
    .local v1, "objectsB":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    .line 156
    .local v2, "sizeA":I
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    .line 159
    .local v3, "sizeB":I
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-nez v4, :cond_0

    .line 161
    new-instance v4, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionResult;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v3, v5}, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionResult;-><init>(III)V

    return-object v4

    .line 166
    :cond_0
    instance-of v4, v0, Ljava/util/Set;

    if-eqz v4, :cond_2

    instance-of v4, v1, Ljava/util/Set;

    if-eqz v4, :cond_2

    .line 169
    if-ge v2, v3, :cond_1

    move-object v4, v0

    check-cast v4, Ljava/util/Set;

    move-object v5, v1

    check-cast v5, Ljava/util/Set;

    .line 170
    invoke-static {v4, v5}, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity;->getIntersection(Ljava/util/Set;Ljava/util/Set;)I

    move-result v4

    goto :goto_0

    :cond_1
    move-object v4, v1

    check-cast v4, Ljava/util/Set;

    move-object v5, v0

    check-cast v5, Ljava/util/Set;

    .line 171
    invoke-static {v4, v5}, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity;->getIntersection(Ljava/util/Set;Ljava/util/Set;)I

    move-result v4

    :goto_0
    nop

    .local v4, "intersection":I
    goto :goto_2

    .line 174
    .end local v4    # "intersection":I
    :cond_2
    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity;->toBag(Ljava/util/Collection;)Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;

    move-result-object v4

    .line 175
    .local v4, "bagA":Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;, "Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity<TT;>.TinyBag;"
    invoke-direct {p0, v1}, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity;->toBag(Ljava/util/Collection;)Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;

    move-result-object v5

    .line 177
    .local v5, "bagB":Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;, "Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity<TT;>.TinyBag;"
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;->uniqueElementSize()I

    move-result v6

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;->uniqueElementSize()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 178
    invoke-direct {p0, v4, v5}, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity;->getIntersection(Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;)I

    move-result v6

    goto :goto_1

    .line 179
    :cond_3
    invoke-direct {p0, v5, v4}, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity;->getIntersection(Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;)I

    move-result v6

    :goto_1
    move v4, v6

    .line 182
    .end local v5    # "bagB":Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;, "Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity<TT;>.TinyBag;"
    .local v4, "intersection":I
    :goto_2
    new-instance v5, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionResult;

    invoke-direct {v5, v2, v3, v4}, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionResult;-><init>(III)V

    return-object v5

    .line 149
    .end local v0    # "objectsA":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .end local v1    # "objectsB":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .end local v2    # "sizeA":I
    .end local v3    # "sizeB":I
    .end local v4    # "intersection":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
