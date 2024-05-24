.class Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$UnicodeUnescaper;
.super Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;
.source "StringEscapeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnicodeUnescaper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 400
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;-><init>(Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$1;

    .line 400
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$UnicodeUnescaper;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 6
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

    .line 407
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_3

    add-int/lit8 v0, p2, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    add-int/lit8 v0, p2, 0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x75

    if-ne v0, v1, :cond_3

    .line 409
    const/4 v0, 0x2

    .line 410
    .local v0, "i":I
    :goto_0
    add-int v2, p2, v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    add-int v2, p2, v0

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_0

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 414
    :cond_0
    add-int v1, p2, v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    add-int v1, p2, v0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1

    .line 415
    add-int/lit8 v0, v0, 0x1

    .line 418
    :cond_1
    add-int v1, p2, v0

    add-int/lit8 v1, v1, 0x4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 420
    add-int v1, p2, v0

    add-int v2, p2, v0

    add-int/lit8 v2, v2, 0x4

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 423
    .local v1, "unicode":Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 424
    .local v2, "value":I
    int-to-char v3, v2

    invoke-virtual {p3, v3}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    .end local v2    # "value":I
    nop

    .line 428
    add-int/lit8 v2, v0, 0x4

    return v2

    .line 425
    :catch_0
    move-exception v2

    .line 426
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse unicode value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 430
    .end local v1    # "unicode":Ljava/lang/CharSequence;
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Less than 4 hex digits in unicode value: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' due to end of CharSequence"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 433
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    return v0
.end method
