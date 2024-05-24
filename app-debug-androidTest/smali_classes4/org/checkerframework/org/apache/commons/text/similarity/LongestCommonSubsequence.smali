.class public Lorg/checkerframework/org/apache/commons/text/similarity/LongestCommonSubsequence;
.super Ljava/lang/Object;
.source "LongestCommonSubsequence.java"

# interfaces
.implements Lorg/checkerframework/org/apache/commons/text/similarity/SimilarityScore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/org/apache/commons/text/similarity/SimilarityScore<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/similarity/LongestCommonSubsequence;->longestCommonSubsequence(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

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

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/similarity/LongestCommonSubsequence;->apply(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public logestCommonSubsequence(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "left"    # Ljava/lang/CharSequence;
    .param p2, "right"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/similarity/LongestCommonSubsequence;->longestCommonSubsequence(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public longestCommonSubsequence(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "left"    # Ljava/lang/CharSequence;
    .param p2, "right"    # Ljava/lang/CharSequence;

    .line 120
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 124
    .local v0, "longestCommonSubstringArray":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/similarity/LongestCommonSubsequence;->longestCommonSubstringLengthArray(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[[I

    move-result-object v1

    .line 125
    .local v1, "lcsLengthArray":[[I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 126
    .local v2, "i":I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 127
    .local v3, "j":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    aget-object v4, v1, v4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    aget v4, v4, v5

    add-int/lit8 v4, v4, -0x1

    .line 128
    .local v4, "k":I
    :goto_0
    if-ltz v4, :cond_2

    .line 129
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_0

    .line 130
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    add-int/lit8 v2, v2, -0x1

    .line 132
    add-int/lit8 v3, v3, -0x1

    .line 133
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 134
    :cond_0
    add-int/lit8 v5, v2, 0x1

    aget-object v5, v1, v5

    aget v5, v5, v3

    aget-object v6, v1, v2

    add-int/lit8 v7, v3, 0x1

    aget v6, v6, v7

    if-ge v5, v6, :cond_1

    .line 135
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 137
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 121
    .end local v0    # "longestCommonSubstringArray":Ljava/lang/StringBuilder;
    .end local v1    # "lcsLengthArray":[[I
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "k":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Inputs must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public longestCommonSubstringLengthArray(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[[I
    .locals 8
    .param p1, "left"    # Ljava/lang/CharSequence;
    .param p2, "right"    # Ljava/lang/CharSequence;

    .line 154
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 155
    .local v0, "lcsLengthArray":[[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 156
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 157
    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 158
    aget-object v4, v0, v1

    aput v3, v4, v2

    .line 160
    :cond_0
    if-nez v2, :cond_1

    .line 161
    aget-object v4, v0, v1

    aput v3, v4, v2

    .line 163
    :cond_1
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_2

    .line 164
    add-int/lit8 v3, v1, 0x1

    aget-object v3, v0, v3

    add-int/lit8 v4, v2, 0x1

    aget-object v5, v0, v1

    aget v5, v5, v2

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    goto :goto_2

    .line 166
    :cond_2
    add-int/lit8 v3, v1, 0x1

    aget-object v3, v0, v3

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v1, 0x1

    aget-object v5, v0, v5

    aget v5, v5, v2

    aget-object v6, v0, v1

    add-int/lit8 v7, v2, 0x1

    aget v6, v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, v3, v4

    .line 156
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 155
    .end local v2    # "j":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .end local v1    # "i":I
    :cond_4
    return-object v0
.end method
