.class public Lorg/checkerframework/org/apache/commons/text/similarity/CosineDistance;
.super Ljava/lang/Object;
.source "CosineDistance.java"

# interfaces
.implements Lorg/checkerframework/org/apache/commons/text/similarity/EditDistance;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/org/apache/commons/text/similarity/EditDistance<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field private final cosineSimilarity:Lorg/checkerframework/org/apache/commons/text/similarity/CosineSimilarity;

.field private final tokenizer:Lorg/checkerframework/org/apache/commons/text/similarity/Tokenizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/org/apache/commons/text/similarity/Tokenizer<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/similarity/RegexTokenizer;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/similarity/RegexTokenizer;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/similarity/CosineDistance;->tokenizer:Lorg/checkerframework/org/apache/commons/text/similarity/Tokenizer;

    .line 44
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/similarity/CosineSimilarity;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/similarity/CosineSimilarity;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/similarity/CosineDistance;->cosineSimilarity:Lorg/checkerframework/org/apache/commons/text/similarity/CosineSimilarity;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Double;
    .locals 8
    .param p1, "left"    # Ljava/lang/CharSequence;
    .param p2, "right"    # Ljava/lang/CharSequence;

    .line 48
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/similarity/CosineDistance;->tokenizer:Lorg/checkerframework/org/apache/commons/text/similarity/Tokenizer;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/apache/commons/text/similarity/Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 49
    .local v0, "leftTokens":[Ljava/lang/CharSequence;
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/similarity/CosineDistance;->tokenizer:Lorg/checkerframework/org/apache/commons/text/similarity/Tokenizer;

    invoke-interface {v1, p2}, Lorg/checkerframework/org/apache/commons/text/similarity/Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    .line 51
    .local v1, "rightTokens":[Ljava/lang/CharSequence;
    invoke-static {v0}, Lorg/checkerframework/org/apache/commons/text/similarity/Counter;->of([Ljava/lang/CharSequence;)Ljava/util/Map;

    move-result-object v2

    .line 52
    .local v2, "leftVector":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/Integer;>;"
    invoke-static {v1}, Lorg/checkerframework/org/apache/commons/text/similarity/Counter;->of([Ljava/lang/CharSequence;)Ljava/util/Map;

    move-result-object v3

    .line 53
    .local v3, "rightVector":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lorg/checkerframework/org/apache/commons/text/similarity/CosineDistance;->cosineSimilarity:Lorg/checkerframework/org/apache/commons/text/similarity/CosineSimilarity;

    invoke-virtual {v4, v2, v3}, Lorg/checkerframework/org/apache/commons/text/similarity/CosineSimilarity;->cosineSimilarity(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 54
    .local v4, "similarity":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    return-object v6
.end method

.method public bridge synthetic apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/similarity/CosineDistance;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
