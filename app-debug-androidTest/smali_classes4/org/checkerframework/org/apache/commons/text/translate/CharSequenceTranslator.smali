.class public abstract Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;
.super Ljava/lang/Object;
.source "CharSequenceTranslator.java"


# static fields
.field static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hex(I)Ljava/lang/String;
    .locals 2
    .param p0, "codepoint"    # I

    .line 138
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final translate(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/CharSequence;

    .line 63
    if-nez p1, :cond_0

    .line 64
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 68
    .local v0, "writer":Ljava/io/StringWriter;
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;Ljava/io/Writer;)V

    .line 69
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 70
    .end local v0    # "writer":Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final translate(Ljava/lang/CharSequence;Ljava/io/Writer;)V
    .locals 6
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "The Writer must not be null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lorg/checkerframework/org/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 86
    if-nez p1, :cond_1

    .line 87
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x0

    .line 90
    .local v0, "pos":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 91
    .local v1, "len":I
    :cond_2
    :goto_1
    if-ge v0, v1, :cond_6

    .line 92
    invoke-virtual {p0, p1, v0, p2}, Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I

    move-result v2

    .line 93
    .local v2, "consumed":I
    if-nez v2, :cond_4

    .line 96
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 97
    .local v3, "c1":C
    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(I)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    .line 99
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2

    if-ge v0, v1, :cond_2

    .line 100
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 101
    .local v4, "c2":C
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 102
    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(I)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    .line 105
    .end local v4    # "c2":C
    :cond_3
    goto :goto_1

    .line 110
    .end local v3    # "c1":C
    :cond_4
    const/4 v3, 0x0

    .local v3, "pt":I
    :goto_2
    if-ge v3, v2, :cond_5

    .line 111
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 113
    .end local v2    # "consumed":I
    .end local v3    # "pt":I
    :cond_5
    goto :goto_1

    .line 114
    :cond_6
    return-void
.end method

.method public final varargs with([Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;)Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;
    .locals 4
    .param p1, "translators"    # [Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    .line 124
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    .line 125
    .local v0, "newArray":[Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;
    const/4 v2, 0x0

    aput-object p0, v0, v2

    .line 126
    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    new-instance v1, Lorg/checkerframework/org/apache/commons/text/translate/AggregateTranslator;

    invoke-direct {v1, v0}, Lorg/checkerframework/org/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;)V

    return-object v1
.end method
