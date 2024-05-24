.class public Lorg/checkerframework/org/apache/commons/text/similarity/JaccardSimilarity;
.super Ljava/lang/Object;
.source "JaccardSimilarity.java"

# interfaces
.implements Lorg/checkerframework/org/apache/commons/text/similarity/SimilarityScore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/org/apache/commons/text/similarity/SimilarityScore<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private calculateJaccardSimilarity(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Double;
    .locals 10
    .param p1, "left"    # Ljava/lang/CharSequence;
    .param p2, "right"    # Ljava/lang/CharSequence;

    .line 65
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 66
    .local v0, "leftLength":I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 67
    .local v1, "rightLength":I
    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_2

    .line 70
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 71
    .local v2, "leftSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 72
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 75
    .local v3, "rightSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 76
    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 78
    .end local v4    # "i":I
    :cond_2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 79
    .local v4, "unionSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 80
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    add-int/2addr v5, v6

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    sub-int/2addr v5, v6

    .line 81
    .local v5, "intersectionSize":I
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    int-to-double v8, v5

    mul-double/2addr v8, v6

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    return-object v6

    .line 68
    .end local v2    # "leftSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    .end local v3    # "rightSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    .end local v4    # "unionSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    .end local v5    # "intersectionSize":I
    :cond_3
    :goto_2
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Double;
    .locals 2
    .param p1, "left"    # Ljava/lang/CharSequence;
    .param p2, "right"    # Ljava/lang/CharSequence;

    .line 48
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 51
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/similarity/JaccardSimilarity;->calculateJaccardSimilarity(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/similarity/JaccardSimilarity;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
