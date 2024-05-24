.class Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;
.super Ljava/lang/Object;
.source "IntersectionSimilarity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TinyBag"
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$BagCount;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity;


# direct methods
.method constructor <init>(Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity;I)V
    .locals 0
    .param p2, "initialCapacity"    # I

    .line 69
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;, "Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity<TT;>.TinyBag;"
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;->this$0:Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;->map:Ljava/util/Map;

    .line 71
    return-void
.end method


# virtual methods
.method add(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 79
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;, "Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity<TT;>.TinyBag;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$BagCount;

    .line 80
    .local v0, "mut":Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$BagCount;
    if-nez v0, :cond_0

    .line 81
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;->map:Ljava/util/Map;

    new-instance v2, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$BagCount;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$BagCount;-><init>(Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$1;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 83
    :cond_0
    iget v1, v0, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$BagCount;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$BagCount;->count:I

    .line 85
    :goto_0
    return-void
.end method

.method entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$BagCount;",
            ">;>;"
        }
    .end annotation

    .line 108
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;, "Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity<TT;>.TinyBag;"
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getCount(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 95
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;, "Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity<TT;>.TinyBag;"
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$BagCount;

    .line 96
    .local v0, "count":Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$BagCount;
    if-eqz v0, :cond_0

    .line 97
    iget v1, v0, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$BagCount;->count:I

    return v1

    .line 99
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method uniqueElementSize()I
    .locals 1

    .line 117
    .local p0, "this":Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;, "Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity<TT;>.TinyBag;"
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/similarity/IntersectionSimilarity$TinyBag;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
