.class public Lorg/checkerframework/org/apache/commons/text/StrBuilder;
.super Ljava/lang/Object;
.source "StrBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Appendable;
.implements Ljava/io/Serializable;
.implements Lorg/checkerframework/org/apache/commons/text/Builder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/apache/commons/text/StrBuilder$StrBuilderWriter;,
        Lorg/checkerframework/org/apache/commons/text/StrBuilder$StrBuilderReader;,
        Lorg/checkerframework/org/apache/commons/text/StrBuilder$StrBuilderTokenizer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Appendable;",
        "Ljava/io/Serializable;",
        "Lorg/checkerframework/org/apache/commons/text/Builder<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final CAPACITY:I = 0x20

.field private static final serialVersionUID:J = 0x69dea51fe8fc7e4bL


# instance fields
.field buffer:[C

.field private newLine:Ljava/lang/String;

.field private nullText:Ljava/lang/String;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 99
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;-><init>(I)V

    .line 100
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    if-gtz p1, :cond_0

    .line 110
    const/16 p1, 0x20

    .line 112
    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/16 v0, 0x20

    if-nez p1, :cond_0

    .line 124
    new-array v0, v0, [C

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    new-array v0, v1, [C

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    .line 127
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 129
    :goto_0
    return-void
.end method

.method private deleteImpl(III)V
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "len"    # I

    .line 1752
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1753
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v0, p3

    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 1754
    return-void
.end method

.method private replaceImpl(Lorg/checkerframework/org/apache/commons/text/StrMatcher;Ljava/lang/String;III)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 10
    .param p1, "matcher"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .param p2, "replaceStr"    # Ljava/lang/String;
    .param p3, "from"    # I
    .param p4, "to"    # I
    .param p5, "replaceCount"    # I

    .line 2077
    if-eqz p1, :cond_5

    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    goto :goto_3

    .line 2080
    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2081
    .local v0, "replaceLen":I
    :goto_0
    move v1, p3

    move v7, v1

    .local v7, "i":I
    :goto_1
    if-ge v7, p4, :cond_4

    if-eqz p5, :cond_4

    .line 2082
    iget-object v8, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    .line 2083
    .local v8, "buf":[C
    invoke-virtual {p1, v8, v7, p3, p4}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v9

    .line 2084
    .local v9, "removeLen":I
    if-lez v9, :cond_3

    .line 2085
    add-int v3, v7, v9

    move-object v1, p0

    move v2, v7

    move v4, v9

    move-object v5, p2

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    .line 2086
    sub-int v1, p4, v9

    add-int/2addr v1, v0

    .line 2087
    .end local p4    # "to":I
    .local v1, "to":I
    add-int p4, v7, v0

    add-int/lit8 v7, p4, -0x1

    .line 2088
    if-lez p5, :cond_2

    .line 2089
    add-int/lit8 p5, p5, -0x1

    move p4, v1

    goto :goto_2

    .line 2088
    :cond_2
    move p4, v1

    .line 2081
    .end local v1    # "to":I
    .end local v8    # "buf":[C
    .end local v9    # "removeLen":I
    .restart local p4    # "to":I
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2093
    .end local v7    # "i":I
    :cond_4
    return-object p0

    .line 2078
    .end local v0    # "replaceLen":I
    :cond_5
    :goto_3
    return-object p0
.end method

.method private replaceImpl(IIILjava/lang/String;I)V
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "removeLen"    # I
    .param p4, "insertStr"    # Ljava/lang/String;
    .param p5, "insertLen"    # I

    .line 1895
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v0, p3

    add-int/2addr v0, p5

    .line 1896
    .local v0, "newSize":I
    if-eq p5, p3, :cond_0

    .line 1897
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 1898
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    add-int v2, p1, p5

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v3, p2

    invoke-static {v1, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1899
    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 1901
    :cond_0
    if-lez p5, :cond_1

    .line 1902
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p4, v1, p5, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 1904
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(C)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/CharSequence;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/CharSequence;II)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(C)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 4
    .param p1, "ch"    # C

    .line 899
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->length()I

    move-result v0

    .line 900
    .local v0, "len":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 901
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    aput-char p1, v1, v2

    .line 902
    return-object p0
.end method

.method public append(D)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "value"    # D

    .line 942
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(F)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "value"    # F

    .line 932
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "value"    # I

    .line 912
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(J)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "value"    # J

    .line 922
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .line 520
    if-nez p1, :cond_0

    .line 521
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 523
    :cond_0
    instance-of v0, p1, Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    if-eqz v0, :cond_1

    .line 524
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Lorg/checkerframework/org/apache/commons/text/StrBuilder;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 526
    :cond_1
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    .line 527
    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuilder;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 529
    :cond_2
    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_3

    .line 530
    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuffer;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 532
    :cond_3
    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_4

    .line 533
    move-object v0, p1

    check-cast v0, Ljava/nio/CharBuffer;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/nio/CharBuffer;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 535
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "seq"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 549
    if-nez p1, :cond_0

    .line 550
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 552
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 502
    if-nez p1, :cond_0

    .line 503
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 505
    :cond_0
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 506
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/CharSequence;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 508
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 563
    if-nez p1, :cond_0

    .line 564
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 566
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 567
    .local v0, "strLen":I
    if-lez v0, :cond_1

    .line 568
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->length()I

    move-result v1

    .line 569
    .local v1, "len":I
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 570
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 571
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 573
    .end local v1    # "len":I
    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/String;II)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 587
    if-nez p1, :cond_0

    .line 588
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 590
    :cond_0
    if-ltz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    .line 593
    if-ltz p3, :cond_2

    add-int v0, p2, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 596
    if-lez p3, :cond_1

    .line 597
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->length()I

    move-result v0

    .line 598
    .local v0, "len":I
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 599
    add-int v1, p2, p3

    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 600
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 602
    .end local v0    # "len":I
    :cond_1
    return-object p0

    .line 594
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "length must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_3
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "startIndex must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs append(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "objs"    # [Ljava/lang/Object;

    .line 614
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/StringBuffer;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 4
    .param p1, "str"    # Ljava/lang/StringBuffer;

    .line 679
    if-nez p1, :cond_0

    .line 680
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 682
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 683
    .local v0, "strLen":I
    if-lez v0, :cond_1

    .line 684
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->length()I

    move-result v1

    .line 685
    .local v1, "len":I
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 686
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 687
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 689
    .end local v1    # "len":I
    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/StringBuffer;II)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 3
    .param p1, "str"    # Ljava/lang/StringBuffer;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 702
    if-nez p1, :cond_0

    .line 703
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 705
    :cond_0
    if-ltz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    .line 708
    if-ltz p3, :cond_2

    add-int v0, p2, p3

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 711
    if-lez p3, :cond_1

    .line 712
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->length()I

    move-result v0

    .line 713
    .local v0, "len":I
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 714
    add-int v1, p2, p3

    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 715
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 717
    .end local v0    # "len":I
    :cond_1
    return-object p0

    .line 709
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "length must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_3
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "startIndex must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append(Ljava/lang/StringBuilder;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 4
    .param p1, "str"    # Ljava/lang/StringBuilder;

    .line 728
    if-nez p1, :cond_0

    .line 729
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 731
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 732
    .local v0, "strLen":I
    if-lez v0, :cond_1

    .line 733
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->length()I

    move-result v1

    .line 734
    .local v1, "len":I
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 735
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 736
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 738
    .end local v1    # "len":I
    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/StringBuilder;II)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 3
    .param p1, "str"    # Ljava/lang/StringBuilder;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 751
    if-nez p1, :cond_0

    .line 752
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 754
    :cond_0
    if-ltz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    .line 757
    if-ltz p3, :cond_2

    add-int v0, p2, p3

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 760
    if-lez p3, :cond_1

    .line 761
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->length()I

    move-result v0

    .line 762
    .local v0, "len":I
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 763
    add-int v1, p2, p3

    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 764
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 766
    .end local v0    # "len":I
    :cond_1
    return-object p0

    .line 758
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "length must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 755
    :cond_3
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "startIndex must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append(Ljava/nio/CharBuffer;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 5
    .param p1, "buf"    # Ljava/nio/CharBuffer;

    .line 625
    if-nez p1, :cond_0

    .line 626
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 628
    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 629
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    .line 630
    .local v0, "length":I
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->length()I

    move-result v1

    .line 631
    .local v1, "len":I
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 632
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    invoke-static {v2, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 633
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 634
    .end local v0    # "length":I
    .end local v1    # "len":I
    goto :goto_0

    .line 635
    :cond_1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 637
    :goto_0
    return-object p0
.end method

.method public append(Ljava/nio/CharBuffer;II)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 5
    .param p1, "buf"    # Ljava/nio/CharBuffer;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 650
    if-nez p1, :cond_0

    .line 651
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 653
    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 654
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    .line 655
    .local v0, "totalLength":I
    if-ltz p2, :cond_2

    if-gt p2, v0, :cond_2

    .line 658
    if-ltz p3, :cond_1

    add-int v1, p2, p3

    if-gt v1, v0, :cond_1

    .line 661
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->length()I

    move-result v1

    .line 662
    .local v1, "len":I
    add-int v2, v1, p3

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 663
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    iget-object v4, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    invoke-static {v2, v3, v4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 664
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v2, p3

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 665
    .end local v0    # "totalLength":I
    .end local v1    # "len":I
    goto :goto_0

    .line 659
    .restart local v0    # "totalLength":I
    :cond_1
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v2, "length must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 656
    :cond_2
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v2, "startIndex must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 666
    .end local v0    # "totalLength":I
    :cond_3
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 668
    :goto_0
    return-object p0
.end method

.method public append(Lorg/checkerframework/org/apache/commons/text/StrBuilder;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 5
    .param p1, "str"    # Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 777
    if-nez p1, :cond_0

    .line 778
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 780
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->length()I

    move-result v0

    .line 781
    .local v0, "strLen":I
    if-lez v0, :cond_1

    .line 782
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->length()I

    move-result v1

    .line 783
    .local v1, "len":I
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 784
    iget-object v2, p1, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    invoke-static {v2, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 785
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 787
    .end local v1    # "len":I
    :cond_1
    return-object p0
.end method

.method public append(Lorg/checkerframework/org/apache/commons/text/StrBuilder;II)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 3
    .param p1, "str"    # Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 800
    if-nez p1, :cond_0

    .line 801
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 803
    :cond_0
    if-ltz p2, :cond_3

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    .line 806
    if-ltz p3, :cond_2

    add-int v0, p2, p3

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 809
    if-lez p3, :cond_1

    .line 810
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->length()I

    move-result v0

    .line 811
    .local v0, "len":I
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 812
    add-int v1, p2, p3

    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->getChars(II[CI)V

    .line 813
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 815
    .end local v0    # "len":I
    :cond_1
    return-object p0

    .line 807
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "length must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 804
    :cond_3
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "startIndex must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append(Z)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 5
    .param p1, "value"    # Z

    .line 874
    const/16 v0, 0x65

    if-eqz p1, :cond_0

    .line 875
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 876
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    const/16 v4, 0x74

    aput-char v4, v1, v2

    .line 877
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    const/16 v4, 0x72

    aput-char v4, v1, v3

    .line 878
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    const/16 v4, 0x75

    aput-char v4, v1, v2

    .line 879
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    aput-char v0, v1, v3

    goto :goto_0

    .line 881
    :cond_0
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 882
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    const/16 v4, 0x66

    aput-char v4, v1, v2

    .line 883
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    const/16 v4, 0x61

    aput-char v4, v1, v3

    .line 884
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    const/16 v4, 0x6c

    aput-char v4, v1, v2

    .line 885
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    const/16 v4, 0x73

    aput-char v4, v1, v3

    .line 886
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    aput-char v0, v1, v2

    .line 888
    :goto_0
    return-object p0
.end method

.method public append([C)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 4
    .param p1, "chars"    # [C

    .line 826
    if-nez p1, :cond_0

    .line 827
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 829
    :cond_0
    array-length v0, p1

    .line 830
    .local v0, "strLen":I
    if-lez v0, :cond_1

    .line 831
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->length()I

    move-result v1

    .line 832
    .local v1, "len":I
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 833
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 834
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 836
    .end local v1    # "len":I
    :cond_1
    return-object p0
.end method

.method public append([CII)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 3
    .param p1, "chars"    # [C
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 849
    if-nez p1, :cond_0

    .line 850
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 852
    :cond_0
    if-ltz p2, :cond_3

    array-length v0, p1

    if-gt p2, v0, :cond_3

    .line 855
    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 858
    if-lez p3, :cond_1

    .line 859
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->length()I

    move-result v0

    .line 860
    .local v0, "len":I
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 861
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 862
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 864
    .end local v0    # "len":I
    :cond_1
    return-object p0

    .line 856
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 853
    :cond_3
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid startIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public appendAll(Ljava/lang/Iterable;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lorg/checkerframework/org/apache/commons/text/StrBuilder;"
        }
    .end annotation

    .line 1183
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-eqz p1, :cond_0

    .line 1184
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1185
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 1186
    .end local v1    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 1188
    :cond_0
    return-object p0
.end method

.method public appendAll(Ljava/util/Iterator;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;)",
            "Lorg/checkerframework/org/apache/commons/text/StrBuilder;"
        }
    .end annotation

    .line 1200
    .local p1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-eqz p1, :cond_0

    .line 1201
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1202
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    goto :goto_0

    .line 1205
    :cond_0
    return-object p0
.end method

.method public varargs appendAll([Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lorg/checkerframework/org/apache/commons/text/StrBuilder;"
        }
    .end annotation

    .line 1166
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 1167
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 1168
    .local v2, "element":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 1167
    .end local v2    # "element":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1171
    :cond_0
    return-object p0
.end method

.method public appendFixedWidthPadLeft(IIC)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "value"    # I
    .param p2, "width"    # I
    .param p3, "padChar"    # C

    .line 1497
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendFixedWidthPadLeft(Ljava/lang/Object;IC)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFixedWidthPadLeft(Ljava/lang/Object;IC)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "width"    # I
    .param p3, "padChar"    # C

    .line 1465
    if-lez p2, :cond_4

    .line 1466
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 1467
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->getNullText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1468
    .local v0, "str":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    .line 1469
    const-string v0, ""

    .line 1471
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1472
    .local v1, "strLen":I
    if-lt v1, p2, :cond_2

    .line 1473
    sub-int v2, v1, p2

    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    iget v4, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {v0, v2, v1, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_2

    .line 1475
    :cond_2
    sub-int v2, p2, v1

    .line 1476
    .local v2, "padLen":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 1477
    iget-object v4, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    iget v5, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v5, v3

    aput-char p3, v4, v5

    .line 1476
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1479
    .end local v3    # "i":I
    :cond_3
    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    iget v4, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v4, v2

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1481
    .end local v2    # "padLen":I
    :goto_2
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v2, p2

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 1483
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "strLen":I
    :cond_4
    return-object p0
.end method

.method public appendFixedWidthPadRight(IIC)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "value"    # I
    .param p2, "width"    # I
    .param p3, "padChar"    # C

    .line 1544
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendFixedWidthPadRight(Ljava/lang/Object;IC)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFixedWidthPadRight(Ljava/lang/Object;IC)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "width"    # I
    .param p3, "padChar"    # C

    .line 1512
    if-lez p2, :cond_4

    .line 1513
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 1514
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->getNullText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1515
    .local v0, "str":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    .line 1516
    const-string v0, ""

    .line 1518
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1519
    .local v1, "strLen":I
    const/4 v2, 0x0

    if-lt v1, p2, :cond_2

    .line 1520
    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    iget v4, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {v0, v2, p2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_2

    .line 1522
    :cond_2
    sub-int v3, p2, v1

    .line 1523
    .local v3, "padLen":I
    iget-object v4, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    iget v5, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {v0, v2, v1, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 1524
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 1525
    iget-object v4, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    iget v5, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v5, v1

    add-int/2addr v5, v2

    aput-char p3, v4, v5

    .line 1524
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1528
    .end local v2    # "i":I
    .end local v3    # "padLen":I
    :cond_3
    :goto_2
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v2, p2

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 1530
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "strLen":I
    :cond_4
    return-object p0
.end method

.method public appendNewLine()Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1

    .line 475
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->newLine:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 476
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 477
    return-object p0

    .line 479
    :cond_0
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendNull()Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1

    .line 488
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->nullText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 489
    return-object p0

    .line 491
    :cond_0
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendPadding(IC)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 4
    .param p1, "length"    # I
    .param p2, "padChar"    # C

    .line 1443
    if-ltz p1, :cond_0

    .line 1444
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 1445
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 1446
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    aput-char p2, v1, v2

    .line 1445
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1449
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public appendSeparator(C)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "separator"    # C

    .line 1355
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1356
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(C)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 1358
    :cond_0
    return-object p0
.end method

.method public appendSeparator(CC)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "standard"    # C
    .param p2, "defaultIfEmpty"    # C

    .line 1372
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1373
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(C)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    goto :goto_0

    .line 1375
    :cond_0
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(C)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 1377
    :goto_0
    return-object p0
.end method

.method public appendSeparator(CI)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 0
    .param p1, "separator"    # C
    .param p2, "loopIndex"    # I

    .line 1428
    if-lez p2, :cond_0

    .line 1429
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(C)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 1431
    :cond_0
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "separator"    # Ljava/lang/String;

    .line 1299
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendSeparator(Ljava/lang/String;I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 0
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "loopIndex"    # I

    .line 1401
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    .line 1402
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 1404
    :cond_0
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "standard"    # Ljava/lang/String;
    .param p2, "defaultIfEmpty"    # Ljava/lang/String;

    .line 1329
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 1330
    .local v0, "str":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 1331
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 1333
    :cond_1
    return-object p0
.end method

.method public appendTo(Ljava/lang/Appendable;)V
    .locals 4
    .param p1, "appendable"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2707
    instance-of v0, p1, Ljava/io/Writer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2708
    move-object v0, p1

    check-cast v0, Ljava/io/Writer;

    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 2709
    :cond_0
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 2710
    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2711
    :cond_1
    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_2

    .line 2712
    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2713
    :cond_2
    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_3

    .line 2714
    move-object v0, p1

    check-cast v0, Ljava/nio/CharBuffer;

    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    goto :goto_0

    .line 2716
    :cond_3
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 2718
    :goto_0
    return-void
.end method

.method public appendWithSeparators(Ljava/lang/Iterable;Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 3
    .param p2, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/org/apache/commons/text/StrBuilder;"
        }
    .end annotation

    .line 1242
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-eqz p1, :cond_1

    .line 1243
    const-string v0, ""

    invoke-static {p2, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1244
    .local v0, "sep":Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1245
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1246
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 1247
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1248
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    goto :goto_0

    .line 1252
    .end local v0    # "sep":Ljava/lang/String;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    return-object p0
.end method

.method public appendWithSeparators(Ljava/util/Iterator;Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 2
    .param p2, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/org/apache/commons/text/StrBuilder;"
        }
    .end annotation

    .line 1266
    .local p1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-eqz p1, :cond_1

    .line 1267
    const-string v0, ""

    invoke-static {p2, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1268
    .local v0, "sep":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1269
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 1270
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1271
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    goto :goto_0

    .line 1275
    .end local v0    # "sep":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public appendWithSeparators([Ljava/lang/Object;Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 3
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "separator"    # Ljava/lang/String;

    .line 1220
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 1221
    const-string v0, ""

    invoke-static {p2, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1222
    .local v0, "sep":Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 1223
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1224
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 1225
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 1223
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1228
    .end local v0    # "sep":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    return-object p0
.end method

.method public appendln(C)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "ch"    # C

    .line 1106
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(C)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(D)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "value"    # D

    .line 1146
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(D)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(F)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "value"    # F

    .line 1136
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(F)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "value"    # I

    .line 1116
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(J)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "value"    # J

    .line 1126
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(J)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 954
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 965
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/String;II)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 978
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs appendln(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "objs"    # [Ljava/lang/Object;

    .line 990
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/StringBuffer;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/StringBuffer;

    .line 1001
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuffer;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/StringBuffer;II)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/StringBuffer;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 1038
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/StringBuilder;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/StringBuilder;

    .line 1012
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuilder;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/StringBuilder;II)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/StringBuilder;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 1025
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Ljava/lang/StringBuilder;II)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Lorg/checkerframework/org/apache/commons/text/StrBuilder;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 1049
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Lorg/checkerframework/org/apache/commons/text/StrBuilder;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Lorg/checkerframework/org/apache/commons/text/StrBuilder;II)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 1062
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Lorg/checkerframework/org/apache/commons/text/StrBuilder;II)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Z)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "value"    # Z

    .line 1096
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append(Z)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln([C)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "chars"    # [C

    .line 1073
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append([C)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln([CII)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "chars"    # [C
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 1086
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->append([CII)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public asReader()Ljava/io/Reader;
    .locals 1

    .line 2667
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrBuilder$StrBuilderReader;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder$StrBuilderReader;-><init>(Lorg/checkerframework/org/apache/commons/text/StrBuilder;)V

    return-object v0
.end method

.method public asTokenizer()Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
    .locals 1

    .line 2643
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrBuilder$StrBuilderTokenizer;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder$StrBuilderTokenizer;-><init>(Lorg/checkerframework/org/apache/commons/text/StrBuilder;)V

    return-object v0
.end method

.method public asWriter()Ljava/io/Writer;
    .locals 1

    .line 2692
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrBuilder$StrBuilderWriter;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder$StrBuilderWriter;-><init>(Lorg/checkerframework/org/apache/commons/text/StrBuilder;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public build()Ljava/lang/String;
    .locals 1

    .line 2843
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 305
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 308
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    aget-char v0, v0, p1

    return v0

    .line 306
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public clear()Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1

    .line 289
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 290
    return-object p0
.end method

.method public contains(C)Z
    .locals 3
    .param p1, "ch"    # C

    .line 2330
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    .line 2331
    .local v0, "thisBuf":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    if-ge v1, v2, :cond_1

    .line 2332
    aget-char v2, v0, v1

    if-ne v2, p1, :cond_0

    .line 2333
    const/4 v2, 0x1

    return v2

    .line 2331
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2336
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 2346
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public contains(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Z
    .locals 2
    .param p1, "matcher"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 2361
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->indexOf(Lorg/checkerframework/org/apache/commons/text/StrMatcher;I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public delete(II)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 1766
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->validateRange(II)I

    move-result p2

    .line 1767
    sub-int v0, p2, p1

    .line 1768
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 1769
    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->deleteImpl(III)V

    .line 1771
    :cond_0
    return-object p0
.end method

.method public deleteAll(C)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 3
    .param p1, "ch"    # C

    .line 1782
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_3

    .line 1783
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_2

    .line 1784
    move v1, v0

    .line 1785
    .local v1, "start":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    if-ge v0, v2, :cond_1

    .line 1786
    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    aget-char v2, v2, v0

    if-eq v2, p1, :cond_0

    .line 1787
    nop

    .line 1790
    :cond_1
    sub-int v2, v0, v1

    .line 1791
    .local v2, "len":I
    invoke-direct {p0, v1, v0, v2}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->deleteImpl(III)V

    .line 1792
    sub-int/2addr v0, v2

    .line 1782
    .end local v1    # "start":I
    .end local v2    # "len":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1795
    .end local v0    # "i":I
    :cond_3
    return-object p0
.end method

.method public deleteAll(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 1822
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1823
    .local v1, "len":I
    :goto_0
    if-lez v1, :cond_1

    .line 1824
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1825
    .local v0, "index":I
    :goto_1
    if-ltz v0, :cond_1

    .line 1826
    add-int v2, v0, v1

    invoke-direct {p0, v0, v2, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->deleteImpl(III)V

    .line 1827
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 1830
    .end local v0    # "index":I
    :cond_1
    return-object p0
.end method

.method public deleteAll(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 6
    .param p1, "matcher"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 1862
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->replace(Lorg/checkerframework/org/apache/commons/text/StrMatcher;Ljava/lang/String;III)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public deleteCharAt(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 2
    .param p1, "index"    # I

    .line 339
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    if-ge p1, v0, :cond_0

    .line 342
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->deleteImpl(III)V

    .line 343
    return-object p0

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public deleteFirst(C)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 3
    .param p1, "ch"    # C

    .line 1805
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_1

    .line 1806
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1807
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->deleteImpl(III)V

    .line 1808
    goto :goto_1

    .line 1805
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1811
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-object p0
.end method

.method public deleteFirst(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 1840
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1841
    .local v1, "len":I
    :goto_0
    if-lez v1, :cond_1

    .line 1842
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1843
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 1844
    add-int v2, v0, v1

    invoke-direct {p0, v0, v2, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->deleteImpl(III)V

    .line 1847
    .end local v0    # "index":I
    :cond_1
    return-object p0
.end method

.method public deleteFirst(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 6
    .param p1, "matcher"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 1876
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->replace(Lorg/checkerframework/org/apache/commons/text/StrMatcher;Ljava/lang/String;III)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .line 2183
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2184
    return v0

    .line 2186
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2187
    .local v1, "len":I
    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2188
    return v2

    .line 2190
    :cond_1
    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    if-le v1, v3, :cond_2

    .line 2191
    return v0

    .line 2193
    :cond_2
    sub-int/2addr v3, v1

    .line 2194
    .local v3, "pos":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_4

    .line 2195
    iget-object v5, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    aget-char v5, v5, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_3

    .line 2196
    return v0

    .line 2194
    :cond_3
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2199
    .end local v4    # "i":I
    :cond_4
    return v2
.end method

.method public ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 4
    .param p1, "capacity"    # I

    .line 230
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 231
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    .line 232
    .local v0, "old":[C
    mul-int/lit8 v1, p1, 0x2

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    .line 233
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    .end local v0    # "old":[C
    :cond_0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2782
    instance-of v0, p1, Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 2783
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->equals(Lorg/checkerframework/org/apache/commons/text/StrBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2782
    :goto_0
    return v0
.end method

.method public equals(Lorg/checkerframework/org/apache/commons/text/StrBuilder;)Z
    .locals 7
    .param p1, "other"    # Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 2754
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2755
    return v0

    .line 2757
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 2758
    return v1

    .line 2760
    :cond_1
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    iget v3, p1, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    if-eq v2, v3, :cond_2

    .line 2761
    return v1

    .line 2763
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    .line 2764
    .local v3, "thisBuf":[C
    iget-object v4, p1, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    .line 2765
    .local v4, "otherBuf":[C
    sub-int/2addr v2, v0

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 2766
    aget-char v5, v3, v2

    aget-char v6, v4, v2

    if-eq v5, v6, :cond_3

    .line 2767
    return v1

    .line 2765
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2770
    .end local v2    # "i":I
    :cond_4
    return v0
.end method

.method public equalsIgnoreCase(Lorg/checkerframework/org/apache/commons/text/StrBuilder;)Z
    .locals 9
    .param p1, "other"    # Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 2728
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2729
    return v0

    .line 2731
    :cond_0
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    iget v2, p1, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    .line 2732
    return v3

    .line 2734
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    .line 2735
    .local v2, "thisBuf":[C
    iget-object v4, p1, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    .line 2736
    .local v4, "otherBuf":[C
    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 2737
    aget-char v5, v2, v1

    .line 2738
    .local v5, "c1":C
    aget-char v6, v4, v1

    .line 2739
    .local v6, "c2":C
    if-eq v5, v6, :cond_2

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    if-eq v7, v8, :cond_2

    .line 2740
    return v3

    .line 2736
    .end local v5    # "c1":C
    .end local v6    # "c2":C
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2743
    .end local v1    # "i":I
    :cond_3
    return v0
.end method

.method public getChars(II[CI)V
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "destination"    # [C
    .param p4, "destinationIndex"    # I

    .line 411
    if-ltz p1, :cond_2

    .line 414
    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->length()I

    move-result v0

    if-gt p2, v0, :cond_1

    .line 417
    if-gt p1, p2, :cond_0

    .line 420
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    return-void

    .line 418
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "end < start"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 412
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public getChars([C)[C
    .locals 3
    .param p1, "destination"    # [C

    .line 389
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->length()I

    move-result v0

    .line 390
    .local v0, "len":I
    if-eqz p1, :cond_0

    array-length v1, p1

    if-ge v1, v0, :cond_1

    .line 391
    :cond_0
    new-array p1, v0, [C

    .line 393
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    return-object p1
.end method

.method public getNewLineText()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->newLine:Ljava/lang/String;

    return-object v0
.end method

.method public getNullText()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->nullText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 2793
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    .line 2794
    .local v0, "buf":[C
    const/4 v1, 0x0

    .line 2795
    .local v1, "hash":I
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 2796
    mul-int/lit8 v3, v1, 0x1f

    aget-char v4, v0, v2

    add-int v1, v3, v4

    .line 2795
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2798
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method public indexOf(C)I
    .locals 1
    .param p1, "ch"    # C

    .line 2372
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->indexOf(CI)I

    move-result v0

    return v0
.end method

.method public indexOf(CI)I
    .locals 4
    .param p1, "ch"    # C
    .param p2, "startIndex"    # I

    .line 2383
    if-gez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    move p2, v0

    .line 2384
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    const/4 v1, -0x1

    if-lt p2, v0, :cond_1

    .line 2385
    return v1

    .line 2387
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    .line 2388
    .local v0, "thisBuf":[C
    move v2, p2

    .local v2, "i":I
    :goto_1
    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    if-ge v2, v3, :cond_3

    .line 2389
    aget-char v3, v0, v2

    if-ne v3, p1, :cond_2

    .line 2390
    return v2

    .line 2388
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2393
    .end local v2    # "i":I
    :cond_3
    return v1
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 2405
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "startIndex"    # I

    .line 2419
    const/4 v0, 0x0

    if-gez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    move p2, v1

    .line 2420
    const/4 v1, -0x1

    if-eqz p1, :cond_8

    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    if-lt p2, v2, :cond_1

    goto :goto_3

    .line 2423
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2424
    .local v2, "strLen":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2425
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->indexOf(CI)I

    move-result v0

    return v0

    .line 2427
    :cond_2
    if-nez v2, :cond_3

    .line 2428
    return p2

    .line 2430
    :cond_3
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    if-le v2, v0, :cond_4

    .line 2431
    return v1

    .line 2433
    :cond_4
    iget-object v4, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    .line 2434
    .local v4, "thisBuf":[C
    sub-int/2addr v0, v2

    add-int/2addr v0, v3

    .line 2436
    .local v0, "len":I
    move v3, p2

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_7

    .line 2437
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v2, :cond_6

    .line 2438
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int v7, v3, v5

    aget-char v7, v4, v7

    if-eq v6, v7, :cond_5

    .line 2439
    nop

    .line 2436
    .end local v5    # "j":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2437
    .restart local v5    # "j":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2442
    .end local v5    # "j":I
    :cond_6
    return v3

    .line 2444
    .end local v3    # "i":I
    :cond_7
    return v1

    .line 2421
    .end local v0    # "len":I
    .end local v2    # "strLen":I
    .end local v4    # "thisBuf":[C
    :cond_8
    :goto_3
    return v1
.end method

.method public indexOf(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)I
    .locals 1
    .param p1, "matcher"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 2458
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->indexOf(Lorg/checkerframework/org/apache/commons/text/StrMatcher;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Lorg/checkerframework/org/apache/commons/text/StrMatcher;I)I
    .locals 5
    .param p1, "matcher"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .param p2, "startIndex"    # I

    .line 2474
    if-gez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    move p2, v0

    .line 2475
    const/4 v0, -0x1

    if-eqz p1, :cond_4

    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    if-lt p2, v1, :cond_1

    goto :goto_2

    .line 2478
    :cond_1
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 2479
    .local v1, "len":I
    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    .line 2480
    .local v2, "buf":[C
    move v3, p2

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 2481
    invoke-virtual {p1, v2, v3, p2, v1}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v4

    if-lez v4, :cond_2

    .line 2482
    return v3

    .line 2480
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2485
    .end local v3    # "i":I
    :cond_3
    return v0

    .line 2476
    .end local v1    # "len":I
    .end local v2    # "buf":[C
    :cond_4
    :goto_2
    return v0
.end method

.method public insert(IC)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # C

    .line 1686
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->validateIndex(I)V

    .line 1687
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 1688
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1689
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    aput-char p2, v0, p1

    .line 1690
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 1691
    return-object p0
.end method

.method public insert(ID)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 1739
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(IF)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # F

    .line 1727
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(II)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1703
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(IJ)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 1715
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1558
    if-nez p2, :cond_0

    .line 1559
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 1561
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 5
    .param p1, "index"    # I
    .param p2, "str"    # Ljava/lang/String;

    .line 1574
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->validateIndex(I)V

    .line 1575
    if-nez p2, :cond_0

    .line 1576
    iget-object p2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->nullText:Ljava/lang/String;

    .line 1578
    :cond_0
    if-eqz p2, :cond_1

    .line 1579
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1580
    .local v0, "strLen":I
    if-lez v0, :cond_1

    .line 1581
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v1, v0

    .line 1582
    .local v1, "newSize":I
    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 1583
    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    add-int v3, p1, v0

    iget v4, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1584
    iput v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 1585
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p2, v2, v0, v3, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 1588
    .end local v0    # "strLen":I
    .end local v1    # "newSize":I
    :cond_1
    return-object p0
.end method

.method public insert(IZ)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .line 1655
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->validateIndex(I)V

    .line 1656
    const/16 v0, 0x65

    if-eqz p2, :cond_0

    .line 1657
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 1658
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, p1, 0x4

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1659
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .local v2, "index":I
    const/16 v3, 0x74

    aput-char v3, v1, p1

    .line 1660
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "index":I
    .restart local p1    # "index":I
    const/16 v3, 0x72

    aput-char v3, v1, v2

    .line 1661
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .restart local v2    # "index":I
    const/16 v3, 0x75

    aput-char v3, v1, p1

    .line 1662
    aput-char v0, v1, v2

    .line 1663
    iget p1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    goto :goto_0

    .line 1665
    .end local v2    # "index":I
    .restart local p1    # "index":I
    :cond_0
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 1666
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, p1, 0x5

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1667
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .restart local v2    # "index":I
    const/16 v3, 0x66

    aput-char v3, v1, p1

    .line 1668
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "index":I
    .restart local p1    # "index":I
    const/16 v3, 0x61

    aput-char v3, v1, v2

    .line 1669
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .restart local v2    # "index":I
    const/16 v3, 0x6c

    aput-char v3, v1, p1

    .line 1670
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "index":I
    .restart local p1    # "index":I
    const/16 v3, 0x73

    aput-char v3, v1, v2

    .line 1671
    aput-char v0, v1, p1

    .line 1672
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    move v2, p1

    .line 1674
    .end local p1    # "index":I
    .restart local v2    # "index":I
    :goto_0
    return-object p0
.end method

.method public insert(I[C)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 4
    .param p1, "index"    # I
    .param p2, "chars"    # [C

    .line 1601
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->validateIndex(I)V

    .line 1602
    if-nez p2, :cond_0

    .line 1603
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 1605
    :cond_0
    array-length v0, p2

    .line 1606
    .local v0, "len":I
    if-lez v0, :cond_1

    .line 1607
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 1608
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    add-int v2, p1, v0

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1609
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    invoke-static {p2, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1610
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 1612
    :cond_1
    return-object p0
.end method

.method public insert(I[CII)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 3
    .param p1, "index"    # I
    .param p2, "chars"    # [C
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 1627
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->validateIndex(I)V

    .line 1628
    if-nez p2, :cond_0

    .line 1629
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 1631
    :cond_0
    if-ltz p3, :cond_3

    array-length v0, p2

    if-gt p3, v0, :cond_3

    .line 1634
    if-ltz p4, :cond_2

    add-int v0, p3, p4

    array-length v1, p2

    if-gt v0, v1, :cond_2

    .line 1637
    if-lez p4, :cond_1

    .line 1638
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v0, p4

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 1639
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    add-int v1, p1, p4

    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1640
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1641
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v0, p4

    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 1643
    :cond_1
    return-object p0

    .line 1635
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1632
    :cond_3
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 274
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastIndexOf(C)I
    .locals 1
    .param p1, "ch"    # C

    .line 2496
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->lastIndexOf(CI)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(CI)I
    .locals 3
    .param p1, "ch"    # C
    .param p2, "startIndex"    # I

    .line 2507
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    if-lt p2, v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    move p2, v0

    .line 2508
    const/4 v0, -0x1

    if-gez p2, :cond_1

    .line 2509
    return v0

    .line 2511
    :cond_1
    move v1, p2

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 2512
    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    aget-char v2, v2, v1

    if-ne v2, p1, :cond_2

    .line 2513
    return v1

    .line 2511
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2516
    .end local v1    # "i":I
    :cond_3
    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 2528
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "startIndex"    # I

    .line 2542
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    const/4 v1, 0x1

    if-lt p2, v0, :cond_0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    move p2, v0

    .line 2543
    const/4 v0, -0x1

    if-eqz p1, :cond_8

    if-gez p2, :cond_1

    goto :goto_4

    .line 2546
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2547
    .local v2, "strLen":I
    if-lez v2, :cond_6

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    if-gt v2, v3, :cond_6

    .line 2548
    if-ne v2, v1, :cond_2

    .line 2549
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->lastIndexOf(CI)I

    move-result v0

    return v0

    .line 2553
    :cond_2
    sub-int v3, p2, v2

    add-int/2addr v3, v1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_5

    .line 2554
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, v2, :cond_4

    .line 2555
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    add-int v6, v3, v1

    aget-char v5, v5, v6

    if-eq v4, v5, :cond_3

    .line 2556
    nop

    .line 2553
    .end local v1    # "j":I
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2554
    .restart local v1    # "j":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2559
    .end local v1    # "j":I
    :cond_4
    return v3

    .line 2553
    .end local v3    # "i":I
    :cond_5
    goto :goto_3

    .line 2562
    :cond_6
    if-nez v2, :cond_7

    .line 2563
    return p2

    .line 2565
    :cond_7
    :goto_3
    return v0

    .line 2544
    .end local v2    # "strLen":I
    :cond_8
    :goto_4
    return v0
.end method

.method public lastIndexOf(Lorg/checkerframework/org/apache/commons/text/StrMatcher;)I
    .locals 1
    .param p1, "matcher"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 2579
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->lastIndexOf(Lorg/checkerframework/org/apache/commons/text/StrMatcher;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Lorg/checkerframework/org/apache/commons/text/StrMatcher;I)I
    .locals 5
    .param p1, "matcher"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .param p2, "startIndex"    # I

    .line 2595
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    if-lt p2, v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    move p2, v0

    .line 2596
    const/4 v0, -0x1

    if-eqz p1, :cond_4

    if-gez p2, :cond_1

    goto :goto_2

    .line 2599
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    .line 2600
    .local v1, "buf":[C
    add-int/lit8 v2, p2, 0x1

    .line 2601
    .local v2, "endIndex":I
    move v3, p2

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_3

    .line 2602
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v3, v4, v2}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v4

    if-lez v4, :cond_2

    .line 2603
    return v3

    .line 2601
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2606
    .end local v3    # "i":I
    :cond_3
    return v0

    .line 2597
    .end local v1    # "buf":[C
    .end local v2    # "endIndex":I
    :cond_4
    :goto_2
    return v0
.end method

.method public leftString(I)Ljava/lang/String;
    .locals 4
    .param p1, "length"    # I

    .line 2262
    if-gtz p1, :cond_0

    .line 2263
    const-string v0, ""

    return-object v0

    .line 2264
    :cond_0
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_1

    .line 2265
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 2267
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    invoke-direct {v0, v2, v1, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 184
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    return v0
.end method

.method public midString(II)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 2310
    if-gez p1, :cond_0

    .line 2311
    const/4 p1, 0x0

    .line 2313
    :cond_0
    if-lez p2, :cond_3

    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 2316
    :cond_1
    add-int v1, p1, p2

    if-gt v0, v1, :cond_2

    .line 2317
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 2319
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 2314
    :cond_3
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public minimizeCapacity()Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 4

    .line 244
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    array-length v0, v0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 245
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    .line 246
    .local v0, "old":[C
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    .line 247
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    .end local v0    # "old":[C
    :cond_0
    return-object p0
.end method

.method public readFrom(Ljava/lang/Readable;)I
    .locals 6
    .param p1, "readable"    # Ljava/lang/Readable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 436
    .local v0, "oldSize":I
    instance-of v1, p1, Ljava/io/Reader;

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 437
    move-object v1, p1

    check-cast v1, Ljava/io/Reader;

    .line 438
    .local v1, "r":Ljava/io/Reader;
    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 440
    :goto_0
    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    iget v4, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    array-length v5, v3

    sub-int/2addr v5, v4

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v3

    move v4, v3

    .local v4, "read":I
    if-eq v3, v2, :cond_0

    .line 441
    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 442
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    goto :goto_0

    .line 444
    .end local v1    # "r":Ljava/io/Reader;
    .end local v4    # "read":I
    :cond_0
    goto :goto_2

    :cond_1
    instance-of v1, p1, Ljava/nio/CharBuffer;

    if-eqz v1, :cond_2

    .line 445
    move-object v1, p1

    check-cast v1, Ljava/nio/CharBuffer;

    .line 446
    .local v1, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    .line 447
    .local v2, "remaining":I
    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 448
    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    iget v4, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    .line 449
    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 450
    .end local v1    # "cb":Ljava/nio/CharBuffer;
    .end local v2    # "remaining":I
    goto :goto_2

    .line 452
    :cond_2
    :goto_1
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 453
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-static {v1, v3, v4}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 454
    .local v1, "buf":Ljava/nio/CharBuffer;
    invoke-interface {p1, v1}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v3

    .line 455
    .local v3, "read":I
    if-ne v3, v2, :cond_3

    .line 456
    nop

    .line 461
    .end local v1    # "buf":Ljava/nio/CharBuffer;
    .end local v3    # "read":I
    :goto_2
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v1, v0

    return v1

    .line 458
    .restart local v1    # "buf":Ljava/nio/CharBuffer;
    .restart local v3    # "read":I
    :cond_3
    iget v4, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 459
    .end local v1    # "buf":Ljava/nio/CharBuffer;
    .end local v3    # "read":I
    goto :goto_1
.end method

.method public replace(IILjava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 6
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "replaceStr"    # Ljava/lang/String;

    .line 1918
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->validateRange(II)I

    move-result p2

    .line 1919
    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    move v5, v0

    .line 1920
    .local v5, "insertLen":I
    sub-int v3, p2, p1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    .line 1921
    return-object p0
.end method

.method public replace(Lorg/checkerframework/org/apache/commons/text/StrMatcher;Ljava/lang/String;III)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 6
    .param p1, "matcher"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .param p2, "replaceStr"    # Ljava/lang/String;
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .param p5, "replaceCount"    # I

    .line 2055
    invoke-virtual {p0, p3, p4}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->validateRange(II)I

    move-result p4

    .line 2056
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->replaceImpl(Lorg/checkerframework/org/apache/commons/text/StrMatcher;Ljava/lang/String;III)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replaceAll(CC)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 3
    .param p1, "search"    # C
    .param p2, "replace"    # C

    .line 1934
    if-eq p1, p2, :cond_1

    .line 1935
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_1

    .line 1936
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    aget-char v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 1937
    aput-char p2, v1, v0

    .line 1935
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1941
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method public replaceAll(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 9
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "replaceStr"    # Ljava/lang/String;

    .line 1973
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1974
    .local v1, "searchLen":I
    :goto_0
    if-lez v1, :cond_2

    .line 1975
    if-nez p2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    move v8, v2

    .line 1976
    .local v8, "replaceLen":I
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1977
    .local v0, "index":I
    :goto_2
    if-ltz v0, :cond_2

    .line 1978
    add-int v4, v0, v1

    move-object v2, p0

    move v3, v0

    move v5, v1

    move-object v6, p2

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    .line 1979
    add-int v2, v0, v8

    invoke-virtual {p0, p1, v2}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    .line 1982
    .end local v0    # "index":I
    .end local v8    # "replaceLen":I
    :cond_2
    return-object p0
.end method

.method public replaceAll(Lorg/checkerframework/org/apache/commons/text/StrMatcher;Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 6
    .param p1, "matcher"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .param p2, "replaceStr"    # Ljava/lang/String;

    .line 2017
    const/4 v3, 0x0

    iget v4, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->replace(Lorg/checkerframework/org/apache/commons/text/StrMatcher;Ljava/lang/String;III)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replaceFirst(CC)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 3
    .param p1, "search"    # C
    .param p2, "replace"    # C

    .line 1953
    if-eq p1, p2, :cond_1

    .line 1954
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_1

    .line 1955
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    aget-char v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 1956
    aput-char p2, v1, v0

    .line 1957
    goto :goto_1

    .line 1954
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1961
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-object p0
.end method

.method public replaceFirst(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 9
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "replaceStr"    # Ljava/lang/String;

    .line 1993
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1994
    .local v1, "searchLen":I
    :goto_0
    if-lez v1, :cond_2

    .line 1995
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 1996
    .local v8, "index":I
    if-ltz v8, :cond_2

    .line 1997
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    move v7, v0

    .line 1998
    .local v7, "replaceLen":I
    add-int v4, v8, v1

    move-object v2, p0

    move v3, v8

    move v5, v1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    .line 2001
    .end local v7    # "replaceLen":I
    .end local v8    # "index":I
    :cond_2
    return-object p0
.end method

.method public replaceFirst(Lorg/checkerframework/org/apache/commons/text/StrMatcher;Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 6
    .param p1, "matcher"    # Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .param p2, "replaceStr"    # Ljava/lang/String;

    .line 2032
    const/4 v3, 0x0

    iget v4, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->replace(Lorg/checkerframework/org/apache/commons/text/StrMatcher;Ljava/lang/String;III)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 6

    .line 2103
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    .line 2104
    return-object p0

    .line 2107
    :cond_0
    div-int/lit8 v1, v0, 0x2

    .line 2108
    .local v1, "half":I
    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    .line 2109
    .local v2, "buf":[C
    const/4 v3, 0x0

    .local v3, "leftIdx":I
    add-int/lit8 v0, v0, -0x1

    .local v0, "rightIdx":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 2110
    aget-char v4, v2, v3

    .line 2111
    .local v4, "swap":C
    aget-char v5, v2, v0

    aput-char v5, v2, v3

    .line 2112
    aput-char v4, v2, v0

    .line 2109
    .end local v4    # "swap":C
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2114
    .end local v0    # "rightIdx":I
    .end local v3    # "leftIdx":I
    :cond_1
    return-object p0
.end method

.method public rightString(I)Ljava/lang/String;
    .locals 4
    .param p1, "length"    # I

    .line 2284
    if-gtz p1, :cond_0

    .line 2285
    const-string v0, ""

    return-object v0

    .line 2286
    :cond_0
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_1

    .line 2287
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 2289
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public setCharAt(IC)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "ch"    # C

    .line 322
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 325
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    aput-char p2, v0, p1

    .line 326
    return-object p0

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public setLength(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 5
    .param p1, "length"    # I

    .line 196
    if-ltz p1, :cond_2

    .line 199
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    if-ge p1, v0, :cond_0

    .line 200
    iput p1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    goto :goto_1

    .line 201
    :cond_0
    if-le p1, v0, :cond_1

    .line 202
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 203
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 204
    .local v0, "oldEnd":I
    move v1, p1

    .line 205
    .local v1, "newEnd":I
    iput p1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 206
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 207
    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    const/4 v4, 0x0

    aput-char v4, v3, v2

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    .end local v0    # "oldEnd":I
    .end local v1    # "newEnd":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-object p0

    .line 197
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public setNewLineText(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 0
    .param p1, "newLine"    # Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->newLine:Ljava/lang/String;

    .line 149
    return-object p0
.end method

.method public setNullText(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 1
    .param p1, "nullText"    # Ljava/lang/String;

    .line 169
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const/4 p1, 0x0

    .line 172
    :cond_0
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->nullText:Ljava/lang/String;

    .line 173
    return-object p0
.end method

.method public size()I
    .locals 1

    .line 262
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    return v0
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .line 2156
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2157
    return v0

    .line 2159
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2160
    .local v1, "len":I
    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2161
    return v2

    .line 2163
    :cond_1
    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    if-le v1, v3, :cond_2

    .line 2164
    return v0

    .line 2166
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 2167
    iget-object v4, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    aget-char v4, v4, v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_3

    .line 2168
    return v0

    .line 2166
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2171
    .end local v3    # "i":I
    :cond_4
    return v2
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 2208
    if-ltz p1, :cond_2

    .line 2211
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    if-gt p2, v0, :cond_1

    .line 2214
    if-gt p1, p2, :cond_0

    .line 2217
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2215
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 2212
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 2209
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # I

    .line 2228
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 2245
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->validateRange(II)I

    move-result p2

    .line 2246
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toCharArray()[C
    .locals 4

    .line 353
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 354
    new-array v0, v1, [C

    return-object v0

    .line 356
    :cond_0
    new-array v2, v0, [C

    .line 357
    .local v2, "chars":[C
    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 358
    return-object v2
.end method

.method public toCharArray(II)[C
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 372
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->validateRange(II)I

    move-result p2

    .line 373
    sub-int v0, p2, p1

    .line 374
    .local v0, "len":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 375
    new-array v1, v1, [C

    return-object v1

    .line 377
    :cond_0
    new-array v2, v0, [C

    .line 378
    .local v2, "chars":[C
    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    invoke-static {v3, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 2813
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toStringBuffer()Ljava/lang/StringBuffer;
    .locals 4

    .line 2823
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public toStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .line 2833
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public trim()Lorg/checkerframework/org/apache/commons/text/StrBuilder;
    .locals 5

    .line 2125
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    .line 2126
    return-object p0

    .line 2128
    :cond_0
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 2129
    .local v0, "len":I
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    .line 2130
    .local v1, "buf":[C
    const/4 v2, 0x0

    .line 2131
    .local v2, "pos":I
    :goto_0
    const/16 v3, 0x20

    if-ge v2, v0, :cond_1

    aget-char v4, v1, v2

    if-gt v4, v3, :cond_1

    .line 2132
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2134
    :cond_1
    :goto_1
    if-ge v2, v0, :cond_2

    add-int/lit8 v4, v0, -0x1

    aget-char v4, v1, v4

    if-gt v4, v3, :cond_2

    .line 2135
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2137
    :cond_2
    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    if-ge v0, v3, :cond_3

    .line 2138
    invoke-virtual {p0, v0, v3}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->delete(II)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 2140
    :cond_3
    if-lez v2, :cond_4

    .line 2141
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->delete(II)Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 2143
    :cond_4
    return-object p0
.end method

.method protected validateIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .line 2876
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    if-gt p1, v0, :cond_0

    .line 2879
    return-void

    .line 2877
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method protected validateRange(II)I
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 2857
    if-ltz p1, :cond_2

    .line 2860
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    if-le p2, v0, :cond_0

    .line 2861
    iget p2, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size:I

    .line 2863
    :cond_0
    if-gt p1, p2, :cond_1

    .line 2866
    return p2

    .line 2864
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "end < start"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2858
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method
