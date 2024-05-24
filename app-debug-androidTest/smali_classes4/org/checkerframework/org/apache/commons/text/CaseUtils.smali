.class public Lorg/checkerframework/org/apache/commons/text/CaseUtils;
.super Ljava/lang/Object;
.source "CaseUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method private static generateDelimiterSet([C)Ljava/util/Set;
    .locals 4
    .param p0, "delimiters"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 123
    .local v0, "delimiterHashSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    new-array v1, v1, [C

    const/16 v2, 0x20

    const/4 v3, 0x0

    aput-char v2, v1, v3

    invoke-static {v1, v3}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    if-eqz p0, :cond_2

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 128
    :cond_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 129
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "index":I
    :cond_1
    return-object v0

    .line 125
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static varargs toCamelCase(Ljava/lang/String;Z[C)Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "capitalizeFirstLetter"    # Z
    .param p2, "delimiters"    # [C

    .line 77
    invoke-static {p0}, Lorg/checkerframework/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    return-object p0

    .line 80
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 81
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 82
    .local v0, "strLen":I
    new-array v1, v0, [I

    .line 83
    .local v1, "newCodePoints":[I
    const/4 v2, 0x0

    .line 84
    .local v2, "outOffset":I
    invoke-static {p2}, Lorg/checkerframework/org/apache/commons/text/CaseUtils;->generateDelimiterSet([C)Ljava/util/Set;

    move-result-object v3

    .line 85
    .local v3, "delimiterSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 86
    .local v4, "capitalizeNext":Z
    if-eqz p1, :cond_1

    .line 87
    const/4 v4, 0x1

    .line 89
    :cond_1
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    if-ge v5, v0, :cond_6

    .line 90
    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 92
    .local v6, "codePoint":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 93
    const/4 v4, 0x1

    .line 94
    if-nez v2, :cond_2

    .line 95
    const/4 v4, 0x0

    .line 97
    :cond_2
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v5, v7

    goto :goto_2

    .line 98
    :cond_3
    if-nez v4, :cond_5

    if-nez v2, :cond_4

    if-eqz p1, :cond_4

    goto :goto_1

    .line 104
    :cond_4
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "outOffset":I
    .local v7, "outOffset":I
    aput v6, v1, v2

    .line 105
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v5, v2

    move v2, v7

    goto :goto_2

    .line 99
    .end local v7    # "outOffset":I
    .restart local v2    # "outOffset":I
    :cond_5
    :goto_1
    invoke-static {v6}, Ljava/lang/Character;->toTitleCase(I)I

    move-result v7

    .line 100
    .local v7, "titleCaseCodePoint":I
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "outOffset":I
    .local v8, "outOffset":I
    aput v7, v1, v2

    .line 101
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v5, v2

    .line 102
    const/4 v2, 0x0

    .line 103
    .end local v4    # "capitalizeNext":Z
    .end local v7    # "titleCaseCodePoint":I
    .local v2, "capitalizeNext":Z
    move v4, v2

    move v2, v8

    .line 107
    .end local v6    # "codePoint":I
    .end local v8    # "outOffset":I
    .local v2, "outOffset":I
    .restart local v4    # "capitalizeNext":Z
    :goto_2
    goto :goto_0

    .line 108
    .end local v5    # "index":I
    :cond_6
    if-eqz v2, :cond_7

    .line 109
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6, v2}, Ljava/lang/String;-><init>([III)V

    return-object v5

    .line 111
    :cond_7
    return-object p0
.end method
