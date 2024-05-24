.class public Lorg/checkerframework/org/apache/commons/text/similarity/LongestCommonSubsequenceDistance;
.super Ljava/lang/Object;
.source "LongestCommonSubsequenceDistance.java"

# interfaces
.implements Lorg/checkerframework/org/apache/commons/text/similarity/EditDistance;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/org/apache/commons/text/similarity/EditDistance<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final longestCommonSubsequence:Lorg/checkerframework/org/apache/commons/text/similarity/LongestCommonSubsequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/similarity/LongestCommonSubsequence;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/similarity/LongestCommonSubsequence;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/similarity/LongestCommonSubsequenceDistance;->longestCommonSubsequence:Lorg/checkerframework/org/apache/commons/text/similarity/LongestCommonSubsequence;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Integer;
    .locals 2
    .param p1, "left"    # Ljava/lang/CharSequence;
    .param p2, "right"    # Ljava/lang/CharSequence;

    .line 58
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 61
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/similarity/LongestCommonSubsequenceDistance;->longestCommonSubsequence:Lorg/checkerframework/org/apache/commons/text/similarity/LongestCommonSubsequence;

    invoke-virtual {v1, p1, p2}, Lorg/checkerframework/org/apache/commons/text/similarity/LongestCommonSubsequence;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Inputs must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/similarity/LongestCommonSubsequenceDistance;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
