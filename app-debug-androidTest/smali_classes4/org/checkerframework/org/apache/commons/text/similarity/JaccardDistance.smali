.class public Lorg/checkerframework/org/apache/commons/text/similarity/JaccardDistance;
.super Ljava/lang/Object;
.source "JaccardDistance.java"

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
.field private final jaccardSimilarity:Lorg/checkerframework/org/apache/commons/text/similarity/JaccardSimilarity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/similarity/JaccardSimilarity;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/similarity/JaccardSimilarity;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/similarity/JaccardDistance;->jaccardSimilarity:Lorg/checkerframework/org/apache/commons/text/similarity/JaccardSimilarity;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Double;
    .locals 4
    .param p1, "left"    # Ljava/lang/CharSequence;
    .param p2, "right"    # Ljava/lang/CharSequence;

    .line 50
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 53
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/similarity/JaccardDistance;->jaccardSimilarity:Lorg/checkerframework/org/apache/commons/text/similarity/JaccardSimilarity;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/similarity/JaccardSimilarity;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/similarity/JaccardDistance;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
