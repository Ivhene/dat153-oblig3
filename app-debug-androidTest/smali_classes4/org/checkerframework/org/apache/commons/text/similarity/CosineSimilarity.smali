.class public Lorg/checkerframework/org/apache/commons/text/similarity/CosineSimilarity;
.super Ljava/lang/Object;
.source "CosineSimilarity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dot(Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/CharSequence;",
            ">;)D"
        }
    .end annotation

    .line 95
    .local p1, "leftVector":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/Integer;>;"
    .local p2, "rightVector":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/Integer;>;"
    .local p3, "intersection":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/CharSequence;>;"
    const-wide/16 v0, 0x0

    .line 96
    .local v0, "dotProduct":J
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 97
    .local v3, "key":Ljava/lang/CharSequence;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 98
    .end local v3    # "key":Ljava/lang/CharSequence;
    goto :goto_0

    .line 99
    :cond_0
    long-to-double v2, v0

    return-wide v2
.end method

.method private getIntersection(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 78
    .local p1, "leftVector":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/Integer;>;"
    .local p2, "rightVector":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 79
    .local v0, "intersection":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/CharSequence;>;"
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 80
    return-object v0
.end method


# virtual methods
.method public cosineSimilarity(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Double;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Double;"
        }
    .end annotation

    .line 45
    .local p1, "leftVector":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/Integer;>;"
    .local p2, "rightVector":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/similarity/CosineSimilarity;->getIntersection(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 51
    .local v0, "intersection":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/CharSequence;>;"
    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/org/apache/commons/text/similarity/CosineSimilarity;->dot(Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;)D

    move-result-wide v1

    .line 52
    .local v1, "dotProduct":D
    const-wide/16 v3, 0x0

    .line 53
    .local v3, "d1":D
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 54
    .local v6, "value":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-double v9, v9

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v3, v7

    .line 55
    .end local v6    # "value":Ljava/lang/Integer;
    goto :goto_0

    .line 56
    :cond_0
    const-wide/16 v5, 0x0

    .line 57
    .local v5, "d2":D
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 58
    .local v10, "value":Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    int-to-double v11, v11

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    add-double/2addr v5, v11

    .line 59
    .end local v10    # "value":Ljava/lang/Integer;
    goto :goto_1

    .line 61
    :cond_1
    const-wide/16 v7, 0x0

    cmpg-double v9, v3, v7

    if-lez v9, :cond_3

    cmpg-double v7, v5, v7

    if-gtz v7, :cond_2

    goto :goto_2

    .line 64
    :cond_2
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    div-double v7, v1, v7

    .local v7, "cosineSimilarity":D
    goto :goto_3

    .line 62
    .end local v7    # "cosineSimilarity":D
    :cond_3
    :goto_2
    const-wide/16 v7, 0x0

    .line 66
    .restart local v7    # "cosineSimilarity":D
    :goto_3
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    return-object v9

    .line 46
    .end local v0    # "intersection":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/CharSequence;>;"
    .end local v1    # "dotProduct":D
    .end local v3    # "d1":D
    .end local v5    # "d2":D
    .end local v7    # "cosineSimilarity":D
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Vectors must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
