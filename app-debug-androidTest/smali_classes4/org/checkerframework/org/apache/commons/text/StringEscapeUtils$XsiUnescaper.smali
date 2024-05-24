.class Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils$XsiUnescaper;
.super Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;
.source "StringEscapeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "XsiUnescaper"
.end annotation


# static fields
.field private static final BACKSLASH:C = '\\'


# direct methods
.method constructor <init>()V
    .locals 0

    .line 371
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 5
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I
    .param p3, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 381
    if-nez p2, :cond_3

    .line 385
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .line 388
    .local v1, "segmentStart":I
    const/4 v2, 0x0

    .line 390
    .local v2, "searchOffset":I
    :goto_0
    const/16 v3, 0x5c

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 391
    .local v3, "pos":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 392
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 404
    .end local v3    # "pos":I
    :cond_0
    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {p1, v3, v4}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result v3

    return v3

    .line 397
    .restart local v3    # "pos":I
    :cond_1
    if-le v3, v1, :cond_2

    .line 398
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 400
    :cond_2
    add-int/lit8 v1, v3, 0x1

    .line 401
    add-int/lit8 v2, v3, 0x2

    .line 402
    .end local v3    # "pos":I
    goto :goto_0

    .line 382
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "segmentStart":I
    .end local v2    # "searchOffset":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "XsiUnescaper should never reach the [1] index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
