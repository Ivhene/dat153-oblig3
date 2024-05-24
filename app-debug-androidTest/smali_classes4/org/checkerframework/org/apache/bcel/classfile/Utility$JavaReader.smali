.class Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaReader;
.super Ljava/io/FilterReader;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/bcel/classfile/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JavaReader"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0
    .param p1, "in"    # Ljava/io/Reader;

    .line 1410
    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    .line 1411
    return-void
.end method


# virtual methods
.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1416
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 1417
    .local v0, "b":I
    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    .line 1418
    return v0

    .line 1420
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaReader;->in:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result v1

    .line 1421
    .local v1, "i":I
    const/4 v2, -0x1

    if-gez v1, :cond_1

    .line 1422
    return v2

    .line 1424
    :cond_1
    const/16 v3, 0x30

    if-lt v1, v3, :cond_2

    const/16 v3, 0x39

    if-le v1, v3, :cond_3

    :cond_2
    const/16 v3, 0x61

    if-lt v1, v3, :cond_5

    const/16 v3, 0x66

    if-gt v1, v3, :cond_5

    .line 1425
    :cond_3
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaReader;->in:Ljava/io/Reader;

    invoke-virtual {v3}, Ljava/io/Reader;->read()I

    move-result v3

    .line 1426
    .local v3, "j":I
    if-gez v3, :cond_4

    .line 1427
    return v2

    .line 1429
    :cond_4
    const/4 v2, 0x2

    new-array v2, v2, [C

    const/4 v4, 0x0

    int-to-char v5, v1

    aput-char v5, v2, v4

    const/4 v4, 0x1

    int-to-char v5, v3

    aput-char v5, v2, v4

    .line 1432
    .local v2, "tmp":[C
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 1433
    .local v4, "s":I
    return v4

    .line 1435
    .end local v2    # "tmp":[C
    .end local v3    # "j":I
    .end local v4    # "s":I
    :cond_5
    invoke-static {}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->access$000()[I

    move-result-object v2

    aget v2, v2, v1

    return v2
.end method

.method public read([CII)I
    .locals 3
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1441
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 1442
    add-int v1, p2, v0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaReader;->read()I

    move-result v2

    int-to-char v2, v2

    aput-char v2, p1, v1

    .line 1441
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1444
    .end local v0    # "i":I
    :cond_0
    return p3
.end method
