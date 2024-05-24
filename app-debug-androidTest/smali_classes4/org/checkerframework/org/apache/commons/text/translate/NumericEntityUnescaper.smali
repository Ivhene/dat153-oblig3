.class public Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper;
.super Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;
.source "NumericEntityUnescaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper$OPTION;
    }
.end annotation


# instance fields
.field private final options:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper$OPTION;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper$OPTION;)V
    .locals 3
    .param p1, "options"    # [Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper$OPTION;

    .line 56
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;-><init>()V

    .line 57
    array-length v0, p1

    if-lez v0, :cond_0

    .line 58
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper;->options:Ljava/util/EnumSet;

    goto :goto_0

    .line 60
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper$OPTION;

    const/4 v1, 0x0

    sget-object v2, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper$OPTION;->semiColonRequired:Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper$OPTION;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper;->options:Ljava/util/EnumSet;

    .line 62
    :goto_0
    return-void
.end method


# virtual methods
.method public isSet(Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper$OPTION;)Z
    .locals 1
    .param p1, "option"    # Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper$OPTION;

    .line 71
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper;->options:Ljava/util/EnumSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 11
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I
    .param p3, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 81
    .local v0, "seqEnd":I
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x26

    const/4 v3, 0x0

    if-ne v1, v2, :cond_d

    add-int/lit8 v1, v0, -0x2

    if-ge p2, v1, :cond_d

    add-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_d

    .line 82
    add-int/lit8 v1, p2, 0x2

    .line 83
    .local v1, "start":I
    const/4 v2, 0x0

    .line 85
    .local v2, "isHex":Z
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 86
    .local v4, "firstChar":C
    const/16 v5, 0x78

    if-eq v4, v5, :cond_0

    const/16 v5, 0x58

    if-ne v4, v5, :cond_1

    .line 87
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 88
    const/4 v2, 0x1

    .line 91
    if-ne v1, v0, :cond_1

    .line 92
    return v3

    .line 96
    :cond_1
    move v5, v1

    .line 98
    .local v5, "end":I
    :goto_0
    if-ge v5, v0, :cond_5

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-lt v6, v7, :cond_2

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x39

    if-le v6, v7, :cond_4

    .line 99
    :cond_2
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x61

    if-lt v6, v7, :cond_3

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x66

    if-le v6, v7, :cond_4

    .line 100
    :cond_3
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x41

    if-lt v6, v7, :cond_5

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x46

    if-gt v6, v7, :cond_5

    .line 101
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 104
    :cond_5
    const/4 v6, 0x1

    if-eq v5, v0, :cond_6

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x3b

    if-ne v7, v8, :cond_6

    move v7, v6

    goto :goto_1

    :cond_6
    move v7, v3

    .line 106
    .local v7, "semiNext":Z
    :goto_1
    if-nez v7, :cond_9

    .line 107
    sget-object v8, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper$OPTION;->semiColonRequired:Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper$OPTION;

    invoke-virtual {p0, v8}, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper;->isSet(Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper$OPTION;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 108
    return v3

    .line 110
    :cond_7
    sget-object v8, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper$OPTION;->errorIfNoSemiColon:Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper$OPTION;

    invoke-virtual {p0, v8}, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper;->isSet(Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper$OPTION;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_2

    .line 111
    :cond_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v6, "Semi-colon required at end of numeric entity"

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 117
    :cond_9
    :goto_2
    if-eqz v2, :cond_a

    .line 118
    :try_start_0
    invoke-interface {p1, v1, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .local v8, "entityValue":I
    goto :goto_3

    .line 120
    .end local v8    # "entityValue":I
    :cond_a
    invoke-interface {p1, v1, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .restart local v8    # "entityValue":I
    :goto_3
    nop

    .line 126
    const v9, 0xffff

    if-le v8, v9, :cond_b

    .line 127
    invoke-static {v8}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v9

    .line 128
    .local v9, "chrs":[C
    aget-char v10, v9, v3

    invoke-virtual {p3, v10}, Ljava/io/Writer;->write(I)V

    .line 129
    aget-char v10, v9, v6

    invoke-virtual {p3, v10}, Ljava/io/Writer;->write(I)V

    .line 130
    .end local v9    # "chrs":[C
    goto :goto_4

    .line 131
    :cond_b
    invoke-virtual {p3, v8}, Ljava/io/Writer;->write(I)V

    .line 134
    :goto_4
    add-int/lit8 v9, v5, 0x2

    sub-int/2addr v9, v1

    add-int/2addr v9, v2

    if-eqz v7, :cond_c

    move v3, v6

    :cond_c
    add-int/2addr v9, v3

    return v9

    .line 122
    .end local v8    # "entityValue":I
    :catch_0
    move-exception v6

    .line 123
    .local v6, "nfe":Ljava/lang/NumberFormatException;
    return v3

    .line 136
    .end local v1    # "start":I
    .end local v2    # "isHex":Z
    .end local v4    # "firstChar":C
    .end local v5    # "end":I
    .end local v6    # "nfe":Ljava/lang/NumberFormatException;
    .end local v7    # "semiNext":Z
    :cond_d
    return v3
.end method
