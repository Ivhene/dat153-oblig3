.class Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaWriter;
.super Ljava/io/FilterWriter;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/bcel/classfile/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JavaWriter"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 0
    .param p1, "out"    # Ljava/io/Writer;

    .line 1455
    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    .line 1456
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1461
    int-to-char v0, p1

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->isJavaIdentifierPart(C)Z

    move-result v0

    const/16 v1, 0x24

    if-eqz v0, :cond_0

    if-eq p1, v1, :cond_0

    .line 1462
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 1464
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 1466
    const/16 v0, 0x30

    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 1467
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaWriter;->out:Ljava/io/Writer;

    invoke-static {}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->access$100()[I

    move-result-object v1

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 1469
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1470
    .local v1, "tmp":[C
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 1471
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(I)V

    .line 1472
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaWriter;->out:Ljava/io/Writer;

    aget-char v2, v1, v3

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 1474
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaWriter;->out:Ljava/io/Writer;

    aget-char v2, v1, v3

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    .line 1475
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaWriter;->out:Ljava/io/Writer;

    aget-char v2, v1, v4

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(I)V

    .line 1479
    .end local v1    # "tmp":[C
    :goto_0
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1492
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaWriter;->write([CII)V

    .line 1493
    return-void
.end method

.method public write([CII)V
    .locals 2
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1484
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 1485
    add-int v1, p2, v0

    aget-char v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaWriter;->write(I)V

    .line 1484
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1487
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
