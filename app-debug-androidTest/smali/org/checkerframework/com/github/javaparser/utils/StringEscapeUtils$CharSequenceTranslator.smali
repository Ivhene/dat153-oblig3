.class abstract Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;
.super Ljava/lang/Object;
.source "StringEscapeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CharSequenceTranslator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$1;

    .line 123
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "index",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final translate(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "input"
        }
    .end annotation

    .line 146
    if-nez p1, :cond_0

    .line 147
    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 151
    .local v0, "writer":Ljava/io/StringWriter;
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;->translate(Ljava/lang/CharSequence;Ljava/io/Writer;)V

    .line 152
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 153
    .end local v0    # "writer":Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 155
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final translate(Ljava/lang/CharSequence;Ljava/io/Writer;)V
    .locals 6
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "input",
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    if-eqz p2, :cond_6

    .line 171
    if-nez p1, :cond_0

    .line 172
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x0

    .line 175
    .local v0, "pos":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 176
    .local v1, "len":I
    :cond_1
    :goto_0
    if-ge v0, v1, :cond_5

    .line 177
    invoke-virtual {p0, p1, v0, p2}, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;->translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I

    move-result v2

    .line 178
    .local v2, "consumed":I
    if-nez v2, :cond_3

    .line 181
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 182
    .local v3, "c1":C
    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(I)V

    .line 183
    add-int/lit8 v0, v0, 0x1

    .line 184
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_1

    if-ge v0, v1, :cond_1

    .line 185
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 186
    .local v4, "c2":C
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 187
    invoke-virtual {p2, v4}, Ljava/io/Writer;->write(I)V

    .line 188
    add-int/lit8 v0, v0, 0x1

    .line 190
    .end local v4    # "c2":C
    :cond_2
    goto :goto_0

    .line 195
    .end local v3    # "c1":C
    :cond_3
    const/4 v3, 0x0

    .local v3, "pt":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 196
    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 198
    .end local v2    # "consumed":I
    .end local v3    # "pt":I
    :cond_4
    goto :goto_0

    .line 199
    :cond_5
    return-void

    .line 169
    .end local v0    # "pos":I
    .end local v1    # "len":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Writer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final varargs with([Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;)Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;
    .locals 4
    .param p1, "translators"    # [Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "translators"
        }
    .end annotation

    .line 209
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;

    .line 210
    .local v0, "newArray":[Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;
    const/4 v2, 0x0

    aput-object p0, v0, v2

    .line 211
    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$AggregateTranslator;

    invoke-direct {v1, v0}, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$AggregateTranslator;-><init>([Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;)V

    return-object v1
.end method
