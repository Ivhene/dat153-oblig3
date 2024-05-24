.class public Lorg/checkerframework/org/apache/commons/text/similarity/FuzzyScore;
.super Ljava/lang/Object;
.source "FuzzyScore.java"


# instance fields
.field private final locale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-eqz p1, :cond_0

    .line 56
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/similarity/FuzzyScore;->locale:Ljava/util/Locale;

    .line 57
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Locale must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public fuzzyScore(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/Integer;
    .locals 10
    .param p1, "term"    # Ljava/lang/CharSequence;
    .param p2, "query"    # Ljava/lang/CharSequence;

    .line 83
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/similarity/FuzzyScore;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "termLowerCase":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/similarity/FuzzyScore;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "queryLowerCase":Ljava/lang/String;
    const/4 v2, 0x0

    .line 99
    .local v2, "score":I
    const/4 v3, 0x0

    .line 102
    .local v3, "termIndex":I
    const/high16 v4, -0x80000000

    .line 104
    .local v4, "previousMatchingCharacterIndex":I
    const/4 v5, 0x0

    .local v5, "queryIndex":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 105
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 107
    .local v6, "queryChar":C
    const/4 v7, 0x0

    .line 109
    .local v7, "termCharacterMatchFound":Z
    :goto_1
    nop

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_2

    if-nez v7, :cond_2

    .line 110
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 112
    .local v8, "termChar":C
    if-ne v6, v8, :cond_1

    .line 114
    add-int/lit8 v2, v2, 0x1

    .line 118
    add-int/lit8 v9, v4, 0x1

    if-ne v9, v3, :cond_0

    .line 119
    add-int/lit8 v2, v2, 0x2

    .line 122
    :cond_0
    move v4, v3

    .line 126
    const/4 v7, 0x1

    .line 109
    .end local v8    # "termChar":C
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 104
    .end local v6    # "queryChar":C
    .end local v7    # "termCharacterMatchFound":Z
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 131
    .end local v5    # "queryIndex":I
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5

    .line 84
    .end local v0    # "termLowerCase":Ljava/lang/String;
    .end local v1    # "queryLowerCase":Ljava/lang/String;
    .end local v2    # "score":I
    .end local v3    # "termIndex":I
    .end local v4    # "previousMatchingCharacterIndex":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CharSequences must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/similarity/FuzzyScore;->locale:Ljava/util/Locale;

    return-object v0
.end method
