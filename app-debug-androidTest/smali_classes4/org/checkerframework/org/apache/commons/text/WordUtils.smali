.class public Lorg/checkerframework/org/apache/commons/text/WordUtils;
.super Ljava/lang/Object;
.source "WordUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static abbreviate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "lower"    # I
    .param p2, "upper"    # I
    .param p3, "appendToEnd"    # Ljava/lang/String;

    .line 860
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-lt p2, v2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const-string v4, "upper value cannot be less than -1"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lorg/checkerframework/org/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 861
    if-ge p2, p1, :cond_2

    if-ne p2, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    const-string v3, "upper value is less than lower value"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lorg/checkerframework/org/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 863
    invoke-static {p0}, Lorg/checkerframework/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 864
    return-object p0

    .line 869
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_4

    .line 870
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    .line 875
    :cond_4
    if-eq p2, v2, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_6

    .line 876
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    .line 879
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 880
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string v3, " "

    invoke-static {p0, v3, p1}, Lorg/checkerframework/org/apache/commons/lang3/StringUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v3

    .line 881
    .local v3, "index":I
    if-ne v3, v2, :cond_7

    .line 882
    invoke-virtual {v0, p0, v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 884
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq p2, v1, :cond_9

    .line 885
    invoke-static {p3}, Lorg/checkerframework/org/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 887
    :cond_7
    if-le v3, p2, :cond_8

    .line 888
    invoke-virtual {v0, p0, v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 889
    invoke-static {p3}, Lorg/checkerframework/org/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 891
    :cond_8
    invoke-virtual {v0, p0, v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 892
    invoke-static {p3}, Lorg/checkerframework/org/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    :cond_9
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 410
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/org/apache/commons/text/WordUtils;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs capitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delimiters"    # [C

    .line 443
    invoke-static {p0}, Lorg/checkerframework/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    return-object p0

    .line 446
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/org/apache/commons/text/WordUtils;->generateDelimiterSet([C)Ljava/util/Set;

    move-result-object v0

    .line 447
    .local v0, "delimiterSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 448
    .local v1, "strLen":I
    new-array v2, v1, [I

    .line 449
    .local v2, "newCodePoints":[I
    const/4 v3, 0x0

    .line 451
    .local v3, "outOffset":I
    const/4 v4, 0x1

    .line 452
    .local v4, "capitalizeNext":Z
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    if-ge v5, v1, :cond_3

    .line 453
    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 455
    .local v6, "codePoint":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 456
    const/4 v4, 0x1

    .line 457
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "outOffset":I
    .local v7, "outOffset":I
    aput v6, v2, v3

    .line 458
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v5, v3

    move v3, v7

    goto :goto_1

    .line 459
    .end local v7    # "outOffset":I
    .restart local v3    # "outOffset":I
    :cond_1
    if-eqz v4, :cond_2

    .line 460
    invoke-static {v6}, Ljava/lang/Character;->toTitleCase(I)I

    move-result v7

    .line 461
    .local v7, "titleCaseCodePoint":I
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "outOffset":I
    .local v8, "outOffset":I
    aput v7, v2, v3

    .line 462
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v5, v3

    .line 463
    const/4 v3, 0x0

    .line 464
    .end local v4    # "capitalizeNext":Z
    .end local v7    # "titleCaseCodePoint":I
    .local v3, "capitalizeNext":Z
    move v4, v3

    move v3, v8

    goto :goto_1

    .line 465
    .end local v8    # "outOffset":I
    .local v3, "outOffset":I
    .restart local v4    # "capitalizeNext":Z
    :cond_2
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "outOffset":I
    .local v7, "outOffset":I
    aput v6, v2, v3

    .line 466
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v5, v3

    move v3, v7

    .line 468
    .end local v6    # "codePoint":I
    .end local v7    # "outOffset":I
    .restart local v3    # "outOffset":I
    :goto_1
    goto :goto_0

    .line 469
    .end local v5    # "index":I
    :cond_3
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6, v3}, Ljava/lang/String;-><init>([III)V

    return-object v5
.end method

.method public static capitalizeFully(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 493
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/org/apache/commons/text/WordUtils;->capitalizeFully(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs capitalizeFully(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delimiters"    # [C

    .line 522
    invoke-static {p0}, Lorg/checkerframework/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    return-object p0

    .line 525
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 526
    invoke-static {p0, p1}, Lorg/checkerframework/org/apache/commons/text/WordUtils;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs containsAllWords(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "word"    # Ljava/lang/CharSequence;
    .param p1, "words"    # [Ljava/lang/CharSequence;

    .line 760
    invoke-static {p0}, Lorg/checkerframework/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {p1}, Lorg/checkerframework/org/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 763
    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 764
    .local v3, "w":Ljava/lang/CharSequence;
    invoke-static {v3}, Lorg/checkerframework/org/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 765
    return v1

    .line 767
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".*\\b"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\\b.*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 768
    .local v4, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_2

    .line 769
    return v1

    .line 763
    .end local v3    # "w":Ljava/lang/CharSequence;
    .end local v4    # "p":Ljava/util/regex/Pattern;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 772
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 761
    :cond_4
    :goto_1
    return v1
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

    .line 909
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 910
    .local v0, "delimiterHashSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_2

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 918
    :cond_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 919
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 918
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 921
    .end local v1    # "index":I
    :cond_1
    return-object v0

    .line 911
    :cond_2
    :goto_1
    if-nez p0, :cond_3

    .line 912
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

    .line 915
    :cond_3
    return-object v0
.end method

.method public static initials(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 682
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/org/apache/commons/text/WordUtils;->initials(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs initials(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delimiters"    # [C

    .line 711
    invoke-static {p0}, Lorg/checkerframework/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    return-object p0

    .line 714
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_1

    .line 715
    const-string v0, ""

    return-object v0

    .line 717
    :cond_1
    invoke-static {p1}, Lorg/checkerframework/org/apache/commons/text/WordUtils;->generateDelimiterSet([C)Ljava/util/Set;

    move-result-object v0

    .line 718
    .local v0, "delimiterSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 719
    .local v1, "strLen":I
    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    .line 720
    .local v2, "newCodePoints":[I
    const/4 v3, 0x0

    .line 721
    .local v3, "count":I
    const/4 v4, 0x1

    .line 722
    .local v4, "lastWasGap":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_5

    .line 723
    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 725
    .local v6, "codePoint":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    if-nez p1, :cond_2

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 727
    :cond_2
    if-eqz v4, :cond_4

    .line 728
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "count":I
    .local v7, "count":I
    aput v6, v2, v3

    .line 729
    const/4 v3, 0x0

    move v4, v3

    move v3, v7

    .end local v4    # "lastWasGap":Z
    .local v3, "lastWasGap":Z
    goto :goto_2

    .line 726
    .end local v7    # "count":I
    .local v3, "count":I
    .restart local v4    # "lastWasGap":Z
    :cond_3
    :goto_1
    const/4 v4, 0x1

    .line 732
    :cond_4
    :goto_2
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v5, v7

    .line 733
    .end local v6    # "codePoint":I
    goto :goto_0

    .line 734
    .end local v5    # "i":I
    :cond_5
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6, v3}, Ljava/lang/String;-><init>([III)V

    return-object v5
.end method

.method public static isDelimiter(C[C)Z
    .locals 4
    .param p0, "ch"    # C
    .param p1, "delimiters"    # [C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 786
    if-nez p1, :cond_0

    .line 787
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    return v0

    .line 789
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-char v3, p1, v2

    .line 790
    .local v3, "delimiter":C
    if-ne p0, v3, :cond_1

    .line 791
    const/4 v0, 0x1

    return v0

    .line 789
    .end local v3    # "delimiter":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 794
    :cond_2
    return v1
.end method

.method public static isDelimiter(I[C)Z
    .locals 3
    .param p0, "codePoint"    # I
    .param p1, "delimiters"    # [C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 808
    if-nez p1, :cond_0

    .line 809
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    return v0

    .line 811
    :cond_0
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 812
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v1

    .line 813
    .local v1, "delimiterCodePoint":I
    if-ne v1, p0, :cond_1

    .line 814
    const/4 v2, 0x1

    return v2

    .line 811
    .end local v1    # "delimiterCodePoint":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 817
    .end local v0    # "index":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .line 630
    invoke-static {p0}, Lorg/checkerframework/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    return-object p0

    .line 633
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 634
    .local v0, "strLen":I
    new-array v1, v0, [I

    .line 635
    .local v1, "newCodePoints":[I
    const/4 v2, 0x0

    .line 636
    .local v2, "outOffset":I
    const/4 v3, 0x1

    .line 637
    .local v3, "whitespace":Z
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v0, :cond_5

    .line 638
    invoke-virtual {p0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    .line 640
    .local v5, "oldCodepoint":I
    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v5}, Ljava/lang/Character;->isTitleCase(I)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 643
    :cond_1
    invoke-static {v5}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 644
    if-eqz v3, :cond_2

    .line 645
    invoke-static {v5}, Ljava/lang/Character;->toTitleCase(I)I

    move-result v6

    .line 646
    .local v6, "newCodePoint":I
    const/4 v3, 0x0

    goto :goto_2

    .line 648
    .end local v6    # "newCodePoint":I
    :cond_2
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v6

    .restart local v6    # "newCodePoint":I
    goto :goto_2

    .line 651
    .end local v6    # "newCodePoint":I
    :cond_3
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v3

    .line 652
    move v6, v5

    .restart local v6    # "newCodePoint":I
    goto :goto_2

    .line 641
    .end local v6    # "newCodePoint":I
    :cond_4
    :goto_1
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v6

    .line 642
    .restart local v6    # "newCodePoint":I
    const/4 v3, 0x0

    .line 654
    :goto_2
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "outOffset":I
    .local v7, "outOffset":I
    aput v6, v1, v2

    .line 655
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v4, v2

    .line 656
    .end local v5    # "oldCodepoint":I
    .end local v6    # "newCodePoint":I
    move v2, v7

    goto :goto_0

    .line 657
    .end local v4    # "index":I
    .end local v7    # "outOffset":I
    .restart local v2    # "outOffset":I
    :cond_5
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5, v2}, Ljava/lang/String;-><init>([III)V

    return-object v4
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 548
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/org/apache/commons/text/WordUtils;->uncapitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs uncapitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delimiters"    # [C

    .line 577
    invoke-static {p0}, Lorg/checkerframework/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    return-object p0

    .line 580
    :cond_0
    invoke-static {p1}, Lorg/checkerframework/org/apache/commons/text/WordUtils;->generateDelimiterSet([C)Ljava/util/Set;

    move-result-object v0

    .line 581
    .local v0, "delimiterSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 582
    .local v1, "strLen":I
    new-array v2, v1, [I

    .line 583
    .local v2, "newCodePoints":[I
    const/4 v3, 0x0

    .line 585
    .local v3, "outOffset":I
    const/4 v4, 0x1

    .line 586
    .local v4, "uncapitalizeNext":Z
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    if-ge v5, v1, :cond_3

    .line 587
    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 589
    .local v6, "codePoint":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 590
    const/4 v4, 0x1

    .line 591
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "outOffset":I
    .local v7, "outOffset":I
    aput v6, v2, v3

    .line 592
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v5, v3

    move v3, v7

    goto :goto_1

    .line 593
    .end local v7    # "outOffset":I
    .restart local v3    # "outOffset":I
    :cond_1
    if-eqz v4, :cond_2

    .line 594
    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v7

    .line 595
    .local v7, "titleCaseCodePoint":I
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "outOffset":I
    .local v8, "outOffset":I
    aput v7, v2, v3

    .line 596
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v5, v3

    .line 597
    const/4 v3, 0x0

    .line 598
    .end local v4    # "uncapitalizeNext":Z
    .end local v7    # "titleCaseCodePoint":I
    .local v3, "uncapitalizeNext":Z
    move v4, v3

    move v3, v8

    goto :goto_1

    .line 599
    .end local v8    # "outOffset":I
    .local v3, "outOffset":I
    .restart local v4    # "uncapitalizeNext":Z
    :cond_2
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "outOffset":I
    .local v7, "outOffset":I
    aput v6, v2, v3

    .line 600
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v5, v3

    move v3, v7

    .line 602
    .end local v6    # "codePoint":I
    .end local v7    # "outOffset":I
    .restart local v3    # "outOffset":I
    :goto_1
    goto :goto_0

    .line 603
    .end local v5    # "index":I
    :cond_3
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6, v3}, Ljava/lang/String;-><init>([III)V

    return-object v5
.end method

.method public static wrap(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapLength"    # I

    .line 106
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/commons/text/WordUtils;->wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapLength"    # I
    .param p2, "newLineStr"    # Ljava/lang/String;
    .param p3, "wrapLongWords"    # Z

    .line 188
    const-string v0, " "

    invoke-static {p0, p1, p2, p3, v0}, Lorg/checkerframework/org/apache/commons/text/WordUtils;->wrap(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapLength"    # I
    .param p2, "newLineStr"    # Ljava/lang/String;
    .param p3, "wrapLongWords"    # Z
    .param p4, "wrapOn"    # Ljava/lang/String;

    .line 288
    if-nez p0, :cond_0

    .line 289
    const/4 v0, 0x0

    return-object v0

    .line 291
    :cond_0
    if-nez p2, :cond_1

    .line 292
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p2

    .line 294
    :cond_1
    const/4 v0, 0x1

    if-ge p1, v0, :cond_2

    .line 295
    const/4 p1, 0x1

    .line 297
    :cond_2
    invoke-static {p4}, Lorg/checkerframework/org/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 298
    const-string p4, " "

    .line 300
    :cond_3
    invoke-static {p4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 301
    .local v0, "patternToWrapOn":Ljava/util/regex/Pattern;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 302
    .local v1, "inputLineLength":I
    const/4 v2, 0x0

    .line 303
    .local v2, "offset":I
    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 304
    .local v3, "wrappedLine":Ljava/lang/StringBuilder;
    const/4 v4, -0x1

    .line 306
    .local v4, "matcherSize":I
    :goto_0
    if-ge v2, v1, :cond_10

    .line 307
    const/4 v5, -0x1

    .line 308
    .local v5, "spaceToWrapAt":I
    add-int v6, v2, p1

    int-to-long v6, v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    .line 309
    const-wide/32 v8, 0x7fffffff

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 308
    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 310
    .local v6, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 311
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    if-nez v7, :cond_5

    .line 312
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    sub-int v4, v7, v8

    .line 313
    if-eqz v4, :cond_4

    .line 314
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    add-int/2addr v2, v7

    .line 315
    goto :goto_0

    .line 317
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 319
    :cond_5
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    add-int v5, v7, v2

    .line 323
    :cond_6
    sub-int v7, v1, v2

    if-gt v7, p1, :cond_7

    .line 324
    goto/16 :goto_3

    .line 327
    :cond_7
    :goto_1
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 328
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    add-int v5, v7, v2

    goto :goto_1

    .line 331
    :cond_8
    if-lt v5, v2, :cond_9

    .line 333
    invoke-virtual {v3, p0, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    add-int/lit8 v2, v5, 0x1

    goto :goto_2

    .line 339
    :cond_9
    if-eqz p3, :cond_b

    .line 340
    if-nez v4, :cond_a

    .line 341
    add-int/lit8 v2, v2, -0x1

    .line 344
    :cond_a
    add-int v7, p1, v2

    invoke-virtual {v3, p0, v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    add-int/2addr v2, p1

    .line 347
    const/4 v4, -0x1

    goto :goto_2

    .line 350
    :cond_b
    add-int v7, v2, p1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 351
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 352
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    sub-int v4, v7, v8

    .line 353
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    add-int/2addr v7, v2

    add-int v5, v7, p1

    .line 356
    :cond_c
    if-ltz v5, :cond_e

    .line 357
    if-nez v4, :cond_d

    if-eqz v2, :cond_d

    .line 358
    add-int/lit8 v2, v2, -0x1

    .line 360
    :cond_d
    invoke-virtual {v3, p0, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    add-int/lit8 v2, v5, 0x1

    goto :goto_2

    .line 364
    :cond_e
    if-nez v4, :cond_f

    if-eqz v2, :cond_f

    .line 365
    add-int/lit8 v2, v2, -0x1

    .line 367
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, p0, v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 368
    move v2, v1

    .line 369
    const/4 v4, -0x1

    .line 373
    .end local v5    # "spaceToWrapAt":I
    .end local v6    # "matcher":Ljava/util/regex/Matcher;
    :goto_2
    goto/16 :goto_0

    .line 375
    :cond_10
    :goto_3
    if-nez v4, :cond_11

    if-ge v2, v1, :cond_11

    .line 376
    add-int/lit8 v2, v2, -0x1

    .line 380
    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, p0, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
