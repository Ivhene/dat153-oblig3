.class Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$OctalUnescaper;
.super Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;
.source "StringEscapeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OctalUnescaper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;-><init>(Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$1;

    .line 339
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$OctalUnescaper;-><init>()V

    return-void
.end method

.method private isOctalDigit(C)Z
    .locals 1
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ch"
        }
    .end annotation

    .line 377
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x37

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isZeroToThree(C)Z
    .locals 1
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ch"
        }
    .end annotation

    .line 387
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x33

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 8
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I
    .param p3, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
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

    .line 346
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 347
    .local v0, "remaining":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    if-lez v0, :cond_1

    add-int/lit8 v3, p2, 0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$OctalUnescaper;->isOctalDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 349
    add-int/lit8 v3, p2, 0x1

    .line 350
    .local v3, "next":I
    add-int/lit8 v4, p2, 0x2

    .line 351
    .local v4, "next2":I
    add-int/lit8 v5, p2, 0x3

    .line 354
    .local v5, "next3":I
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    if-le v0, v1, :cond_0

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-direct {p0, v6}, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$OctalUnescaper;->isOctalDigit(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 357
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    const/4 v6, 0x2

    if-le v0, v6, :cond_0

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-direct {p0, v6}, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$OctalUnescaper;->isZeroToThree(C)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-direct {p0, v6}, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$OctalUnescaper;->isOctalDigit(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 359
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {p3, v6}, Ljava/io/Writer;->write(I)V

    .line 364
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/2addr v6, v1

    return v6

    .line 366
    .end local v3    # "next":I
    .end local v4    # "next2":I
    .end local v5    # "next3":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
