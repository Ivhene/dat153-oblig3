.class public Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
.super Ljava/lang/Object;
.source "TextStringBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Appendable;
.implements Ljava/io/Serializable;
.implements Lorg/checkerframework/org/apache/commons/text/Builder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderWriter;,
        Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;,
        Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$TextStringBuilderTokenizer;
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


# static fields
.field static final CAPACITY:I = 0x20

.field private static final FALSE_STRING_SIZE:I

.field private static final TRUE_STRING_SIZE:I

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field buffer:[C

.field private newLine:Ljava/lang/String;

.field private nullText:Ljava/lang/String;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    const-string v0, "false"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->FALSE_STRING_SIZE:I

    .line 83
    const-string v0, "true"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->TRUE_STRING_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 111
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;-><init>(I)V

    .line 112
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    if-gtz p1, :cond_0

    .line 123
    const/16 p1, 0x20

    .line 125
    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/16 v0, 0x20

    if-nez p1, :cond_0

    .line 137
    new-array v0, v0, [C

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    new-array v0, v1, [C

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    .line 140
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 142
    :goto_0
    return-void
.end method

.method private deleteImpl(III)V
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "len"    # I

    .line 1885
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1886
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    sub-int/2addr v0, p3

    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 1887
    return-void
.end method

.method private replaceImpl(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;Ljava/lang/String;III)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 10
    .param p1, "matcher"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .param p2, "replaceStr"    # Ljava/lang/String;
    .param p3, "from"    # I
    .param p4, "to"    # I
    .param p5, "replaceCount"    # I

    .line 2237
    if-eqz p1, :cond_5

    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    if-nez v0, :cond_0

    goto :goto_3

    .line 2240
    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2241
    .local v0, "replaceLen":I
    :goto_0
    move v1, p3

    move v7, v1

    .local v7, "i":I
    :goto_1
    if-ge v7, p4, :cond_4

    if-eqz p5, :cond_4

    .line 2242
    iget-object v8, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    .line 2243
    .local v8, "buf":[C
    invoke-interface {p1, v8, v7, p3, p4}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v9

    .line 2244
    .local v9, "removeLen":I
    if-lez v9, :cond_3

    .line 2245
    add-int v3, v7, v9

    move-object v1, p0

    move v2, v7

    move v4, v9

    move-object v5, p2

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->replaceImpl(IIILjava/lang/String;I)V

    .line 2246
    sub-int v1, p4, v9

    add-int/2addr v1, v0

    .line 2247
    .end local p4    # "to":I
    .local v1, "to":I
    add-int p4, v7, v0

    add-int/lit8 v7, p4, -0x1

    .line 2248
    if-lez p5, :cond_2

    .line 2249
    add-int/lit8 p5, p5, -0x1

    move p4, v1

    goto :goto_2

    .line 2248
    :cond_2
    move p4, v1

    .line 2241
    .end local v1    # "to":I
    .end local v8    # "buf":[C
    .end local v9    # "removeLen":I
    .restart local p4    # "to":I
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2253
    .end local v7    # "i":I
    :cond_4
    return-object p0

    .line 2238
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

    .line 2037
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    sub-int/2addr v0, p3

    add-int/2addr v0, p5

    .line 2038
    .local v0, "newSize":I
    if-eq p5, p3, :cond_0

    .line 2039
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 2040
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    add-int v2, p1, p5

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    sub-int/2addr v3, p2

    invoke-static {v1, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2041
    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 2043
    :cond_0
    if-lez p5, :cond_1

    .line 2044
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    invoke-virtual {p4, v1, p5, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 2046
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

    .line 73
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(C)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

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

    .line 73
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

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

    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/CharSequence;II)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(C)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 4
    .param p1, "ch"    # C

    .line 951
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->length()I

    move-result v0

    .line 952
    .local v0, "len":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 953
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    aput-char p1, v1, v2

    .line 954
    return-object p0
.end method

.method public append(D)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "value"    # D

    .line 998
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(F)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "value"    # F

    .line 987
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "value"    # I

    .line 965
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(J)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "value"    # J

    .line 976
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .line 549
    if-nez p1, :cond_0

    .line 550
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0

    .line 552
    :cond_0
    instance-of v0, p1, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    if-eqz v0, :cond_1

    .line 553
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0

    .line 555
    :cond_1
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    .line 556
    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/StringBuilder;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0

    .line 558
    :cond_2
    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_3

    .line 559
    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/StringBuffer;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0

    .line 561
    :cond_3
    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_4

    .line 562
    move-object v0, p1

    check-cast v0, Ljava/nio/CharBuffer;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/nio/CharBuffer;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0

    .line 564
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 2
    .param p1, "seq"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 580
    if-nez p1, :cond_0

    .line 581
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0

    .line 583
    :cond_0
    if-lez p3, :cond_2

    .line 586
    if-ge p2, p3, :cond_1

    .line 589
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sub-int v1, p3, p2

    invoke-virtual {p0, v0, p2, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;II)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0

    .line 587
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "endIndex must be greater than startIndex"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "endIndex must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append(Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 531
    if-nez p1, :cond_0

    .line 532
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0

    .line 534
    :cond_0
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 535
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0

    .line 537
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 600
    if-nez p1, :cond_0

    .line 601
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0

    .line 603
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 604
    .local v0, "strLen":I
    if-lez v0, :cond_1

    .line 605
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->length()I

    move-result v1

    .line 606
    .local v1, "len":I
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 607
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 608
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 610
    .end local v1    # "len":I
    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/String;II)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 625
    if-nez p1, :cond_0

    .line 626
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0

    .line 628
    :cond_0
    if-ltz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    .line 631
    if-ltz p3, :cond_2

    add-int v0, p2, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 634
    if-lez p3, :cond_1

    .line 635
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->length()I

    move-result v0

    .line 636
    .local v0, "len":I
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 637
    add-int v1, p2, p3

    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 638
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 640
    .end local v0    # "len":I
    :cond_1
    return-object p0

    .line 632
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "length must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_3
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "startIndex must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs append(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "objs"    # [Ljava/lang/Object;

    .line 654
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/StringBuffer;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 4
    .param p1, "str"    # Ljava/lang/StringBuffer;

    .line 721
    if-nez p1, :cond_0

    .line 722
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0

    .line 724
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 725
    .local v0, "strLen":I
    if-lez v0, :cond_1

    .line 726
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->length()I

    move-result v1

    .line 727
    .local v1, "len":I
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 728
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 729
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 731
    .end local v1    # "len":I
    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/StringBuffer;II)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 3
    .param p1, "str"    # Ljava/lang/StringBuffer;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 746
    if-nez p1, :cond_0

    .line 747
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0

    .line 749
    :cond_0
    if-ltz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    .line 752
    if-ltz p3, :cond_2

    add-int v0, p2, p3

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 755
    if-lez p3, :cond_1

    .line 756
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->length()I

    move-result v0

    .line 757
    .local v0, "len":I
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 758
    add-int v1, p2, p3

    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 759
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 761
    .end local v0    # "len":I
    :cond_1
    return-object p0

    .line 753
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "length must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_3
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "startIndex must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append(Ljava/lang/StringBuilder;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 4
    .param p1, "str"    # Ljava/lang/StringBuilder;

    .line 772
    if-nez p1, :cond_0

    .line 773
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0

    .line 775
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 776
    .local v0, "strLen":I
    if-lez v0, :cond_1

    .line 777
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->length()I

    move-result v1

    .line 778
    .local v1, "len":I
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 779
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 780
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 782
    .end local v1    # "len":I
    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/StringBuilder;II)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 3
    .param p1, "str"    # Ljava/lang/StringBuilder;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 797
    if-nez p1, :cond_0

    .line 798
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0

    .line 800
    :cond_0
    if-ltz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    .line 803
    if-ltz p3, :cond_2

    add-int v0, p2, p3

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 806
    if-lez p3, :cond_1

    .line 807
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->length()I

    move-result v0

    .line 808
    .local v0, "len":I
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 809
    add-int v1, p2, p3

    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 810
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 812
    .end local v0    # "len":I
    :cond_1
    return-object p0

    .line 804
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "length must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 801
    :cond_3
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "startIndex must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append(Ljava/nio/CharBuffer;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 5
    .param p1, "buf"    # Ljava/nio/CharBuffer;

    .line 665
    if-nez p1, :cond_0

    .line 666
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0

    .line 668
    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    .line 670
    .local v0, "length":I
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->length()I

    move-result v1

    .line 671
    .local v1, "len":I
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 672
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    invoke-static {v2, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 673
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 674
    .end local v0    # "length":I
    .end local v1    # "len":I
    goto :goto_0

    .line 675
    :cond_1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 677
    :goto_0
    return-object p0
.end method

.method public append(Ljava/nio/CharBuffer;II)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 5
    .param p1, "buf"    # Ljava/nio/CharBuffer;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 692
    if-nez p1, :cond_0

    .line 693
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0

    .line 695
    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 696
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    .line 697
    .local v0, "totalLength":I
    if-ltz p2, :cond_2

    if-gt p2, v0, :cond_2

    .line 700
    if-ltz p3, :cond_1

    add-int v1, p2, p3

    if-gt v1, v0, :cond_1

    .line 703
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->length()I

    move-result v1

    .line 704
    .local v1, "len":I
    add-int v2, v1, p3

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 705
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    iget-object v4, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    invoke-static {v2, v3, v4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 706
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v2, p3

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 707
    .end local v0    # "totalLength":I
    .end local v1    # "len":I
    goto :goto_0

    .line 701
    .restart local v0    # "totalLength":I
    :cond_1
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v2, "length must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 698
    :cond_2
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v2, "startIndex must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 708
    .end local v0    # "totalLength":I
    :cond_3
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;II)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 710
    :goto_0
    return-object p0
.end method

.method public append(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 5
    .param p1, "str"    # Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 823
    if-nez p1, :cond_0

    .line 824
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0

    .line 826
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->length()I

    move-result v0

    .line 827
    .local v0, "strLen":I
    if-lez v0, :cond_1

    .line 828
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->length()I

    move-result v1

    .line 829
    .local v1, "len":I
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 830
    iget-object v2, p1, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    invoke-static {v2, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 831
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 833
    .end local v1    # "len":I
    :cond_1
    return-object p0
.end method

.method public append(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;II)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 3
    .param p1, "str"    # Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 848
    if-nez p1, :cond_0

    .line 849
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0

    .line 851
    :cond_0
    if-ltz p2, :cond_3

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    .line 854
    if-ltz p3, :cond_2

    add-int v0, p2, p3

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 857
    if-lez p3, :cond_1

    .line 858
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->length()I

    move-result v0

    .line 859
    .local v0, "len":I
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 860
    add-int v1, p2, p3

    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->getChars(II[CI)V

    .line 861
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 863
    .end local v0    # "len":I
    :cond_1
    return-object p0

    .line 855
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "length must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 852
    :cond_3
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "startIndex must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append(Z)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 5
    .param p1, "value"    # Z

    .line 925
    const/16 v0, 0x65

    if-eqz p1, :cond_0

    .line 926
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    sget v2, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->TRUE_STRING_SIZE:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 927
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    const/16 v4, 0x74

    aput-char v4, v1, v2

    .line 928
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    const/16 v4, 0x72

    aput-char v4, v1, v3

    .line 929
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    const/16 v4, 0x75

    aput-char v4, v1, v2

    .line 930
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    aput-char v0, v1, v3

    goto :goto_0

    .line 932
    :cond_0
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    sget v2, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->FALSE_STRING_SIZE:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 933
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    const/16 v4, 0x66

    aput-char v4, v1, v2

    .line 934
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    const/16 v4, 0x61

    aput-char v4, v1, v3

    .line 935
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    const/16 v4, 0x6c

    aput-char v4, v1, v2

    .line 936
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    const/16 v4, 0x73

    aput-char v4, v1, v3

    .line 937
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    aput-char v0, v1, v2

    .line 939
    :goto_0
    return-object p0
.end method

.method public append([C)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 4
    .param p1, "chars"    # [C

    .line 874
    if-nez p1, :cond_0

    .line 875
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0

    .line 877
    :cond_0
    array-length v0, p1

    .line 878
    .local v0, "strLen":I
    if-lez v0, :cond_1

    .line 879
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->length()I

    move-result v1

    .line 880
    .local v1, "len":I
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 881
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 882
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 884
    .end local v1    # "len":I
    :cond_1
    return-object p0
.end method

.method public append([CII)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 3
    .param p1, "chars"    # [C
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 899
    if-nez p1, :cond_0

    .line 900
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNull()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0

    .line 902
    :cond_0
    if-ltz p2, :cond_3

    array-length v0, p1

    if-gt p2, v0, :cond_3

    .line 905
    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 908
    if-lez p3, :cond_1

    .line 909
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->length()I

    move-result v0

    .line 910
    .local v0, "len":I
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 911
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 912
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 914
    .end local v0    # "len":I
    :cond_1
    return-object p0

    .line 906
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

    .line 903
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

.method public appendAll(Ljava/lang/Iterable;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;"
        }
    .end annotation

    .line 1266
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-eqz p1, :cond_0

    .line 1267
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1268
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 1269
    .end local v1    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 1271
    :cond_0
    return-object p0
.end method

.method public appendAll(Ljava/util/Iterator;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;)",
            "Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;"
        }
    .end annotation

    .line 1283
    .local p1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-eqz p1, :cond_0

    .line 1284
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1285
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    goto :goto_0

    .line 1288
    :cond_0
    return-object p0
.end method

.method public varargs appendAll([Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;"
        }
    .end annotation

    .line 1249
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 1250
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 1251
    .local v2, "element":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 1250
    .end local v2    # "element":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1254
    :cond_0
    return-object p0
.end method

.method public appendFixedWidthPadLeft(IIC)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "value"    # I
    .param p2, "width"    # I
    .param p3, "padChar"    # C

    .line 1593
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendFixedWidthPadLeft(Ljava/lang/Object;IC)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFixedWidthPadLeft(Ljava/lang/Object;IC)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "width"    # I
    .param p3, "padChar"    # C

    .line 1559
    if-lez p2, :cond_4

    .line 1560
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 1561
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->getNullText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1562
    .local v0, "str":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    .line 1563
    const-string v0, ""

    .line 1565
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1566
    .local v1, "strLen":I
    if-lt v1, p2, :cond_2

    .line 1567
    sub-int v2, v1, p2

    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    iget v4, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    invoke-virtual {v0, v2, v1, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_2

    .line 1569
    :cond_2
    sub-int v2, p2, v1

    .line 1570
    .local v2, "padLen":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 1571
    iget-object v4, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    iget v5, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v5, v3

    aput-char p3, v4, v5

    .line 1570
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1573
    .end local v3    # "i":I
    :cond_3
    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    iget v4, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v4, v2

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1575
    .end local v2    # "padLen":I
    :goto_2
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v2, p2

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 1577
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "strLen":I
    :cond_4
    return-object p0
.end method

.method public appendFixedWidthPadRight(IIC)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "value"    # I
    .param p2, "width"    # I
    .param p3, "padChar"    # C

    .line 1644
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendFixedWidthPadRight(Ljava/lang/Object;IC)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFixedWidthPadRight(Ljava/lang/Object;IC)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "width"    # I
    .param p3, "padChar"    # C

    .line 1610
    if-lez p2, :cond_4

    .line 1611
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 1612
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->getNullText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1613
    .local v0, "str":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    .line 1614
    const-string v0, ""

    .line 1616
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1617
    .local v1, "strLen":I
    const/4 v2, 0x0

    if-lt v1, p2, :cond_2

    .line 1618
    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    iget v4, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    invoke-virtual {v0, v2, p2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_2

    .line 1620
    :cond_2
    sub-int v3, p2, v1

    .line 1621
    .local v3, "padLen":I
    iget-object v4, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    iget v5, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    invoke-virtual {v0, v2, v1, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 1622
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 1623
    iget-object v4, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    iget v5, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v5, v1

    add-int/2addr v5, v2

    aput-char p3, v4, v5

    .line 1622
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1626
    .end local v2    # "i":I
    .end local v3    # "padLen":I
    :cond_3
    :goto_2
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v2, p2

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 1628
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "strLen":I
    :cond_4
    return-object p0
.end method

.method public appendNewLine()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1

    .line 504
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->newLine:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 505
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 506
    return-object p0

    .line 508
    :cond_0
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendNull()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1

    .line 517
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->nullText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 518
    return-object p0

    .line 520
    :cond_0
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendPadding(IC)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 4
    .param p1, "length"    # I
    .param p2, "padChar"    # C

    .line 1535
    if-ltz p1, :cond_0

    .line 1536
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 1537
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 1538
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    aput-char p2, v1, v2

    .line 1537
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1541
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public appendSeparator(C)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "separator"    # C

    .line 1439
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1440
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(C)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 1442
    :cond_0
    return-object p0
.end method

.method public appendSeparator(CC)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "standard"    # C
    .param p2, "defaultIfEmpty"    # C

    .line 1458
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1459
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(C)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    goto :goto_0

    .line 1461
    :cond_0
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(C)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 1463
    :goto_0
    return-object p0
.end method

.method public appendSeparator(CI)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 0
    .param p1, "separator"    # C
    .param p2, "loopIndex"    # I

    .line 1518
    if-lez p2, :cond_0

    .line 1519
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(C)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 1521
    :cond_0
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "separator"    # Ljava/lang/String;

    .line 1382
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendSeparator(Ljava/lang/String;I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 0
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "loopIndex"    # I

    .line 1489
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    .line 1490
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 1492
    :cond_0
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "standard"    # Ljava/lang/String;
    .param p2, "defaultIfEmpty"    # Ljava/lang/String;

    .line 1413
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 1414
    .local v0, "str":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 1415
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 1417
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

    .line 2868
    instance-of v0, p1, Ljava/io/Writer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2869
    move-object v0, p1

    check-cast v0, Ljava/io/Writer;

    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 2870
    :cond_0
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 2871
    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2872
    :cond_1
    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_2

    .line 2873
    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2874
    :cond_2
    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_3

    .line 2875
    move-object v0, p1

    check-cast v0, Ljava/nio/CharBuffer;

    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    goto :goto_0

    .line 2877
    :cond_3
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 2879
    :goto_0
    return-void
.end method

.method public appendWithSeparators(Ljava/lang/Iterable;Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 3
    .param p2, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;"
        }
    .end annotation

    .line 1325
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-eqz p1, :cond_1

    .line 1326
    const-string v0, ""

    invoke-static {p2, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1327
    .local v0, "sep":Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1328
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1329
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 1330
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1331
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    goto :goto_0

    .line 1335
    .end local v0    # "sep":Ljava/lang/String;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    return-object p0
.end method

.method public appendWithSeparators(Ljava/util/Iterator;Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 2
    .param p2, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;"
        }
    .end annotation

    .line 1349
    .local p1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-eqz p1, :cond_1

    .line 1350
    const-string v0, ""

    invoke-static {p2, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1351
    .local v0, "sep":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1352
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 1353
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1354
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    goto :goto_0

    .line 1358
    .end local v0    # "sep":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public appendWithSeparators([Ljava/lang/Object;Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 3
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "separator"    # Ljava/lang/String;

    .line 1303
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 1304
    const-string v0, ""

    invoke-static {p2, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1305
    .local v0, "sep":Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 1306
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1307
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 1308
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 1306
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1311
    .end local v0    # "sep":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    return-object p0
.end method

.method public appendln(C)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "ch"    # C

    .line 1185
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(C)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(D)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "value"    # D

    .line 1229
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(D)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(F)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "value"    # F

    .line 1218
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(F)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "value"    # I

    .line 1196
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(J)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "value"    # J

    .line 1207
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(J)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1010
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 1021
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/String;II)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 1037
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;II)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs appendln(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "objs"    # [Ljava/lang/Object;

    .line 1051
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/StringBuffer;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/StringBuffer;

    .line 1063
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/StringBuffer;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/StringBuffer;II)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/StringBuffer;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 1107
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/StringBuilder;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/StringBuilder;

    .line 1075
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/StringBuilder;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/StringBuilder;II)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/StringBuilder;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 1091
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Ljava/lang/StringBuilder;II)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "str"    # Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 1119
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;II)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "str"    # Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 1135
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;II)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Z)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "value"    # Z

    .line 1174
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append(Z)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln([C)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "chars"    # [C

    .line 1147
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append([C)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln([CII)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "chars"    # [C
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 1163
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->append([CII)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->appendNewLine()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public asReader()Ljava/io/Reader;
    .locals 1

    .line 2831
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;-><init>(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;)V

    return-object v0
.end method

.method public asTokenizer()Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
    .locals 1

    .line 2810
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$TextStringBuilderTokenizer;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$TextStringBuilderTokenizer;-><init>(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;)V

    return-object v0
.end method

.method public asWriter()Ljava/io/Writer;
    .locals 1

    .line 2852
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderWriter;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderWriter;-><init>(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public build()Ljava/lang/String;
    .locals 1

    .line 3001
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 322
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 325
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    aget-char v0, v0, p1

    return v0

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public clear()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1

    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 305
    return-object p0
.end method

.method public contains(C)Z
    .locals 3
    .param p1, "ch"    # C

    .line 2489
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    .line 2490
    .local v0, "thisBuf":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    if-ge v1, v2, :cond_1

    .line 2491
    aget-char v2, v0, v1

    if-ne v2, p1, :cond_0

    .line 2492
    const/4 v2, 0x1

    return v2

    .line 2490
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2495
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 2506
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public contains(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Z
    .locals 2
    .param p1, "matcher"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 2520
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->indexOf(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public delete(II)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 1901
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->validateRange(II)I

    move-result p2

    .line 1902
    sub-int v0, p2, p1

    .line 1903
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 1904
    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->deleteImpl(III)V

    .line 1906
    :cond_0
    return-object p0
.end method

.method public deleteAll(C)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 3
    .param p1, "ch"    # C

    .line 1918
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    if-ge v0, v1, :cond_3

    .line 1919
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_2

    .line 1920
    move v1, v0

    .line 1921
    .local v1, "start":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    if-ge v0, v2, :cond_1

    .line 1922
    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    aget-char v2, v2, v0

    if-eq v2, p1, :cond_0

    .line 1923
    nop

    .line 1926
    :cond_1
    sub-int v2, v0, v1

    .line 1927
    .local v2, "len":I
    invoke-direct {p0, v1, v0, v2}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->deleteImpl(III)V

    .line 1928
    sub-int/2addr v0, v2

    .line 1918
    .end local v1    # "start":I
    .end local v2    # "len":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1931
    .end local v0    # "i":I
    :cond_3
    return-object p0
.end method

.method public deleteAll(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 1960
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1961
    .local v1, "len":I
    :goto_0
    if-lez v1, :cond_1

    .line 1962
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1963
    .local v0, "index":I
    :goto_1
    if-ltz v0, :cond_1

    .line 1964
    add-int v2, v0, v1

    invoke-direct {p0, v0, v2, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->deleteImpl(III)V

    .line 1965
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    .line 1968
    .end local v0    # "index":I
    :cond_1
    return-object p0
.end method

.method public deleteAll(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 6
    .param p1, "matcher"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 2001
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->replace(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;Ljava/lang/String;III)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public deleteCharAt(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 2
    .param p1, "index"    # I

    .line 361
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    if-ge p1, v0, :cond_0

    .line 364
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->deleteImpl(III)V

    .line 365
    return-object p0

    .line 362
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public deleteFirst(C)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 3
    .param p1, "ch"    # C

    .line 1942
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    if-ge v0, v1, :cond_1

    .line 1943
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1944
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->deleteImpl(III)V

    .line 1945
    goto :goto_1

    .line 1942
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1948
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-object p0
.end method

.method public deleteFirst(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 1979
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1980
    .local v1, "len":I
    :goto_0
    if-lez v1, :cond_1

    .line 1981
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 1982
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 1983
    add-int v2, v0, v1

    invoke-direct {p0, v0, v2, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->deleteImpl(III)V

    .line 1986
    .end local v0    # "index":I
    :cond_1
    return-object p0
.end method

.method public deleteFirst(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 6
    .param p1, "matcher"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 2015
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->replace(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;Ljava/lang/String;III)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .line 2344
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2345
    return v0

    .line 2347
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2348
    .local v1, "len":I
    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2349
    return v2

    .line 2351
    :cond_1
    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    if-le v1, v3, :cond_2

    .line 2352
    return v0

    .line 2354
    :cond_2
    sub-int/2addr v3, v1

    .line 2355
    .local v3, "pos":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_4

    .line 2356
    iget-object v5, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    aget-char v5, v5, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_3

    .line 2357
    return v0

    .line 2355
    :cond_3
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2360
    .end local v4    # "i":I
    :cond_4
    return v2
.end method

.method public ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 4
    .param p1, "capacity"    # I

    .line 247
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 248
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    .line 249
    .local v0, "old":[C
    mul-int/lit8 v1, p1, 0x2

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    .line 250
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    .end local v0    # "old":[C
    :cond_0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2944
    instance-of v0, p1, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->equals(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;)Z
    .locals 7
    .param p1, "other"    # Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 2916
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2917
    return v0

    .line 2919
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 2920
    return v1

    .line 2922
    :cond_1
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    iget v3, p1, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    if-eq v2, v3, :cond_2

    .line 2923
    return v1

    .line 2925
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    .line 2926
    .local v3, "thisBuf":[C
    iget-object v4, p1, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    .line 2927
    .local v4, "otherBuf":[C
    sub-int/2addr v2, v0

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 2928
    aget-char v5, v3, v2

    aget-char v6, v4, v2

    if-eq v5, v6, :cond_3

    .line 2929
    return v1

    .line 2927
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2932
    .end local v2    # "i":I
    :cond_4
    return v0
.end method

.method public equalsIgnoreCase(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;)Z
    .locals 9
    .param p1, "other"    # Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 2890
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2891
    return v0

    .line 2893
    :cond_0
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    iget v2, p1, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    .line 2894
    return v3

    .line 2896
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    .line 2897
    .local v2, "thisBuf":[C
    iget-object v4, p1, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    .line 2898
    .local v4, "otherBuf":[C
    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 2899
    aget-char v5, v2, v1

    .line 2900
    .local v5, "c1":C
    aget-char v6, v4, v1

    .line 2901
    .local v6, "c2":C
    if-eq v5, v6, :cond_2

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    if-eq v7, v8, :cond_2

    .line 2902
    return v3

    .line 2898
    .end local v5    # "c1":C
    .end local v6    # "c2":C
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2905
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

    .line 439
    if-ltz p1, :cond_2

    .line 442
    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->length()I

    move-result v0

    if-gt p2, v0, :cond_1

    .line 445
    if-gt p1, p2, :cond_0

    .line 448
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    return-void

    .line 446
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "end < start"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 440
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public getChars([C)[C
    .locals 3
    .param p1, "destination"    # [C

    .line 413
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->length()I

    move-result v0

    .line 414
    .local v0, "len":I
    if-eqz p1, :cond_0

    array-length v1, p1

    if-ge v1, v0, :cond_1

    .line 415
    :cond_0
    new-array p1, v0, [C

    .line 417
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    return-object p1
.end method

.method public getNewLineText()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->newLine:Ljava/lang/String;

    return-object v0
.end method

.method public getNullText()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->nullText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 2954
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    .line 2955
    .local v0, "buf":[C
    const/4 v1, 0x0

    .line 2956
    .local v1, "hash":I
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 2957
    mul-int/lit8 v3, v1, 0x1f

    aget-char v4, v0, v2

    add-int v1, v3, v4

    .line 2956
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2959
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method public indexOf(C)I
    .locals 1
    .param p1, "ch"    # C

    .line 2532
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->indexOf(CI)I

    move-result v0

    return v0
.end method

.method public indexOf(CI)I
    .locals 4
    .param p1, "ch"    # C
    .param p2, "startIndex"    # I

    .line 2545
    if-gez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    move p2, v0

    .line 2546
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    const/4 v1, -0x1

    if-lt p2, v0, :cond_1

    .line 2547
    return v1

    .line 2549
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    .line 2550
    .local v0, "thisBuf":[C
    move v2, p2

    .local v2, "i":I
    :goto_1
    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    if-ge v2, v3, :cond_3

    .line 2551
    aget-char v3, v0, v2

    if-ne v3, p1, :cond_2

    .line 2552
    return v2

    .line 2550
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2555
    .end local v2    # "i":I
    :cond_3
    return v1
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 2568
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "startIndex"    # I

    .line 2584
    const/4 v0, 0x0

    if-gez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    move p2, v1

    .line 2585
    const/4 v1, -0x1

    if-eqz p1, :cond_8

    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    if-lt p2, v2, :cond_1

    goto :goto_3

    .line 2588
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2589
    .local v2, "strLen":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2590
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->indexOf(CI)I

    move-result v0

    return v0

    .line 2592
    :cond_2
    if-nez v2, :cond_3

    .line 2593
    return p2

    .line 2595
    :cond_3
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    if-le v2, v0, :cond_4

    .line 2596
    return v1

    .line 2598
    :cond_4
    iget-object v4, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    .line 2599
    .local v4, "thisBuf":[C
    sub-int/2addr v0, v2

    add-int/2addr v0, v3

    .line 2600
    .local v0, "len":I
    move v3, p2

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_7

    .line 2601
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v2, :cond_6

    .line 2602
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int v7, v3, v5

    aget-char v7, v4, v7

    if-eq v6, v7, :cond_5

    .line 2603
    nop

    .line 2600
    .end local v5    # "j":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2601
    .restart local v5    # "j":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2606
    .end local v5    # "j":I
    :cond_6
    return v3

    .line 2608
    .end local v3    # "i":I
    :cond_7
    return v1

    .line 2586
    .end local v0    # "len":I
    .end local v2    # "strLen":I
    .end local v4    # "thisBuf":[C
    :cond_8
    :goto_3
    return v1
.end method

.method public indexOf(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)I
    .locals 1
    .param p1, "matcher"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 2622
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->indexOf(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;I)I
    .locals 5
    .param p1, "matcher"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .param p2, "startIndex"    # I

    .line 2638
    if-gez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    move p2, v0

    .line 2639
    const/4 v0, -0x1

    if-eqz p1, :cond_4

    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    if-lt p2, v1, :cond_1

    goto :goto_2

    .line 2642
    :cond_1
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 2643
    .local v1, "len":I
    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    .line 2644
    .local v2, "buf":[C
    move v3, p2

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 2645
    invoke-interface {p1, v2, v3, p2, v1}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v4

    if-lez v4, :cond_2

    .line 2646
    return v3

    .line 2644
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2649
    .end local v3    # "i":I
    :cond_3
    return v0

    .line 2640
    .end local v1    # "len":I
    .end local v2    # "buf":[C
    :cond_4
    :goto_2
    return v0
.end method

.method public insert(IC)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # C

    .line 1803
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->validateIndex(I)V

    .line 1804
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 1805
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1806
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    aput-char p2, v0, p1

    .line 1807
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 1808
    return-object p0
.end method

.method public insert(ID)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 1868
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->insert(ILjava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(IF)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # F

    .line 1853
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->insert(ILjava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(II)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1823
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->insert(ILjava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(IJ)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 1838
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->insert(ILjava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/Object;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1661
    if-nez p2, :cond_0

    .line 1662
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->insert(ILjava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0

    .line 1664
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->insert(ILjava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 5
    .param p1, "index"    # I
    .param p2, "str"    # Ljava/lang/String;

    .line 1679
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->validateIndex(I)V

    .line 1680
    if-nez p2, :cond_0

    .line 1681
    iget-object p2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->nullText:Ljava/lang/String;

    .line 1683
    :cond_0
    if-eqz p2, :cond_1

    .line 1684
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1685
    .local v0, "strLen":I
    if-lez v0, :cond_1

    .line 1686
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v1, v0

    .line 1687
    .local v1, "newSize":I
    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 1688
    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    add-int v3, p1, v0

    iget v4, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1689
    iput v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 1690
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    invoke-virtual {p2, v2, v0, v3, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 1693
    .end local v0    # "strLen":I
    .end local v1    # "newSize":I
    :cond_1
    return-object p0
.end method

.method public insert(IZ)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 5
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .line 1769
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->validateIndex(I)V

    .line 1770
    const/16 v0, 0x65

    if-eqz p2, :cond_0

    .line 1771
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    sget v2, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->TRUE_STRING_SIZE:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 1772
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    add-int v3, p1, v2

    iget v4, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1773
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    add-int/lit8 v3, p1, 0x1

    .end local p1    # "index":I
    .local v3, "index":I
    const/16 v4, 0x74

    aput-char v4, v1, p1

    .line 1774
    add-int/lit8 p1, v3, 0x1

    .end local v3    # "index":I
    .restart local p1    # "index":I
    const/16 v4, 0x72

    aput-char v4, v1, v3

    .line 1775
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "index":I
    .restart local v3    # "index":I
    const/16 v4, 0x75

    aput-char v4, v1, p1

    .line 1776
    aput-char v0, v1, v3

    .line 1777
    iget p1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    goto :goto_0

    .line 1779
    .end local v3    # "index":I
    .restart local p1    # "index":I
    :cond_0
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    sget v2, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->FALSE_STRING_SIZE:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 1780
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    add-int v3, p1, v2

    iget v4, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1781
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    add-int/lit8 v3, p1, 0x1

    .end local p1    # "index":I
    .restart local v3    # "index":I
    const/16 v4, 0x66

    aput-char v4, v1, p1

    .line 1782
    add-int/lit8 p1, v3, 0x1

    .end local v3    # "index":I
    .restart local p1    # "index":I
    const/16 v4, 0x61

    aput-char v4, v1, v3

    .line 1783
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "index":I
    .restart local v3    # "index":I
    const/16 v4, 0x6c

    aput-char v4, v1, p1

    .line 1784
    add-int/lit8 p1, v3, 0x1

    .end local v3    # "index":I
    .restart local p1    # "index":I
    const/16 v4, 0x73

    aput-char v4, v1, v3

    .line 1785
    aput-char v0, v1, p1

    .line 1786
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    move v3, p1

    .line 1788
    .end local p1    # "index":I
    .restart local v3    # "index":I
    :goto_0
    return-object p0
.end method

.method public insert(I[C)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 4
    .param p1, "index"    # I
    .param p2, "chars"    # [C

    .line 1708
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->validateIndex(I)V

    .line 1709
    if-nez p2, :cond_0

    .line 1710
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->insert(ILjava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0

    .line 1712
    :cond_0
    array-length v0, p2

    .line 1713
    .local v0, "len":I
    if-lez v0, :cond_1

    .line 1714
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 1715
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    add-int v2, p1, v0

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1716
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    invoke-static {p2, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1717
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 1719
    :cond_1
    return-object p0
.end method

.method public insert(I[CII)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 3
    .param p1, "index"    # I
    .param p2, "chars"    # [C
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 1738
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->validateIndex(I)V

    .line 1739
    if-nez p2, :cond_0

    .line 1740
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->insert(ILjava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0

    .line 1742
    :cond_0
    if-ltz p3, :cond_3

    array-length v0, p2

    if-gt p3, v0, :cond_3

    .line 1745
    if-ltz p4, :cond_2

    add-int v0, p3, p4

    array-length v1, p2

    if-gt v0, v1, :cond_2

    .line 1748
    if-lez p4, :cond_1

    .line 1749
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v0, p4

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 1750
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    add-int v1, p1, p4

    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1751
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1752
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v0, p4

    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 1754
    :cond_1
    return-object p0

    .line 1746
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

    .line 1743
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

    .line 289
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

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

    .line 2661
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->lastIndexOf(CI)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(CI)I
    .locals 3
    .param p1, "ch"    # C
    .param p2, "startIndex"    # I

    .line 2674
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    if-lt p2, v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    move p2, v0

    .line 2675
    const/4 v0, -0x1

    if-gez p2, :cond_1

    .line 2676
    return v0

    .line 2678
    :cond_1
    move v1, p2

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 2679
    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    aget-char v2, v2, v1

    if-ne v2, p1, :cond_2

    .line 2680
    return v1

    .line 2678
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2683
    .end local v1    # "i":I
    :cond_3
    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 2696
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "startIndex"    # I

    .line 2712
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    const/4 v1, 0x1

    if-lt p2, v0, :cond_0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    move p2, v0

    .line 2713
    const/4 v0, -0x1

    if-eqz p1, :cond_8

    if-gez p2, :cond_1

    goto :goto_4

    .line 2716
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2717
    .local v2, "strLen":I
    if-lez v2, :cond_6

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    if-gt v2, v3, :cond_6

    .line 2718
    if-ne v2, v1, :cond_2

    .line 2719
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0, p2}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->lastIndexOf(CI)I

    move-result v0

    return v0

    .line 2722
    :cond_2
    sub-int v3, p2, v2

    add-int/2addr v3, v1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_5

    .line 2723
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, v2, :cond_4

    .line 2724
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    add-int v6, v3, v1

    aget-char v5, v5, v6

    if-eq v4, v5, :cond_3

    .line 2725
    nop

    .line 2722
    .end local v1    # "j":I
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2723
    .restart local v1    # "j":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2728
    .end local v1    # "j":I
    :cond_4
    return v3

    .line 2722
    .end local v3    # "i":I
    :cond_5
    goto :goto_3

    .line 2731
    :cond_6
    if-nez v2, :cond_7

    .line 2732
    return p2

    .line 2734
    :cond_7
    :goto_3
    return v0

    .line 2714
    .end local v2    # "strLen":I
    :cond_8
    :goto_4
    return v0
.end method

.method public lastIndexOf(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;)I
    .locals 1
    .param p1, "matcher"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;

    .line 2748
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->lastIndexOf(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;I)I
    .locals 5
    .param p1, "matcher"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .param p2, "startIndex"    # I

    .line 2764
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    if-lt p2, v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    move p2, v0

    .line 2765
    const/4 v0, -0x1

    if-eqz p1, :cond_4

    if-gez p2, :cond_1

    goto :goto_2

    .line 2768
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    .line 2769
    .local v1, "buf":[C
    add-int/lit8 v2, p2, 0x1

    .line 2770
    .local v2, "endIndex":I
    move v3, p2

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_3

    .line 2771
    const/4 v4, 0x0

    invoke-interface {p1, v1, v3, v4, v2}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;->isMatch([CIII)I

    move-result v4

    if-lez v4, :cond_2

    .line 2772
    return v3

    .line 2770
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2775
    .end local v3    # "i":I
    :cond_3
    return v0

    .line 2766
    .end local v1    # "buf":[C
    .end local v2    # "endIndex":I
    :cond_4
    :goto_2
    return v0
.end method

.method public leftString(I)Ljava/lang/String;
    .locals 4
    .param p1, "length"    # I

    .line 2424
    if-gtz p1, :cond_0

    .line 2425
    const-string v0, ""

    return-object v0

    .line 2426
    :cond_0
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_1

    .line 2427
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 2429
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    invoke-direct {v0, v2, v1, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 199
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    return v0
.end method

.method public midString(II)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 2468
    if-gez p1, :cond_0

    .line 2469
    const/4 p1, 0x0

    .line 2471
    :cond_0
    if-lez p2, :cond_3

    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 2474
    :cond_1
    add-int v1, p1, p2

    if-gt v0, v1, :cond_2

    .line 2475
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 2477
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 2472
    :cond_3
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public minimizeCapacity()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 4

    .line 261
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    array-length v0, v0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 262
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    .line 263
    .local v0, "old":[C
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    .line 264
    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
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

    .line 465
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 466
    .local v0, "oldSize":I
    instance-of v1, p1, Ljava/io/Reader;

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 467
    move-object v1, p1

    check-cast v1, Ljava/io/Reader;

    .line 468
    .local v1, "r":Ljava/io/Reader;
    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 470
    :goto_0
    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    iget v4, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    array-length v5, v3

    sub-int/2addr v5, v4

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v3

    move v4, v3

    .local v4, "read":I
    if-eq v3, v2, :cond_0

    .line 471
    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 472
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    goto :goto_0

    .line 474
    .end local v1    # "r":Ljava/io/Reader;
    .end local v4    # "read":I
    :cond_0
    goto :goto_2

    :cond_1
    instance-of v1, p1, Ljava/nio/CharBuffer;

    if-eqz v1, :cond_2

    .line 475
    move-object v1, p1

    check-cast v1, Ljava/nio/CharBuffer;

    .line 476
    .local v1, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    .line 477
    .local v2, "remaining":I
    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 478
    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    iget v4, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    .line 479
    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 480
    .end local v1    # "cb":Ljava/nio/CharBuffer;
    .end local v2    # "remaining":I
    goto :goto_2

    .line 482
    :cond_2
    :goto_1
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 483
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-static {v1, v3, v4}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 484
    .local v1, "buf":Ljava/nio/CharBuffer;
    invoke-interface {p1, v1}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v3

    .line 485
    .local v3, "read":I
    if-ne v3, v2, :cond_3

    .line 486
    nop

    .line 491
    .end local v1    # "buf":Ljava/nio/CharBuffer;
    .end local v3    # "read":I
    :goto_2
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    sub-int/2addr v1, v0

    return v1

    .line 488
    .restart local v1    # "buf":Ljava/nio/CharBuffer;
    .restart local v3    # "read":I
    :cond_3
    iget v4, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 489
    .end local v1    # "buf":Ljava/nio/CharBuffer;
    .end local v3    # "read":I
    goto :goto_1
.end method

.method public replace(IILjava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 6
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "replaceStr"    # Ljava/lang/String;

    .line 2063
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->validateRange(II)I

    move-result p2

    .line 2064
    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    move v5, v0

    .line 2065
    .local v5, "insertLen":I
    sub-int v3, p2, p1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->replaceImpl(IIILjava/lang/String;I)V

    .line 2066
    return-object p0
.end method

.method public replace(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;Ljava/lang/String;III)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 6
    .param p1, "matcher"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .param p2, "replaceStr"    # Ljava/lang/String;
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .param p5, "replaceCount"    # I

    .line 2211
    invoke-virtual {p0, p3, p4}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->validateRange(II)I

    move-result p4

    .line 2212
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->replaceImpl(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;Ljava/lang/String;III)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replaceAll(CC)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 3
    .param p1, "search"    # C
    .param p2, "replace"    # C

    .line 2080
    if-eq p1, p2, :cond_1

    .line 2081
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    if-ge v0, v1, :cond_1

    .line 2082
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    aget-char v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 2083
    aput-char p2, v1, v0

    .line 2081
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2087
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method public replaceAll(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 9
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "replaceStr"    # Ljava/lang/String;

    .line 2122
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2123
    .local v1, "searchLen":I
    :goto_0
    if-lez v1, :cond_2

    .line 2124
    if-nez p2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    move v8, v2

    .line 2125
    .local v8, "replaceLen":I
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 2126
    .local v0, "index":I
    :goto_2
    if-ltz v0, :cond_2

    .line 2127
    add-int v4, v0, v1

    move-object v2, p0

    move v3, v0

    move v5, v1

    move-object v6, p2

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->replaceImpl(IIILjava/lang/String;I)V

    .line 2128
    add-int v2, v0, v8

    invoke-virtual {p0, p1, v2}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    .line 2131
    .end local v0    # "index":I
    .end local v8    # "replaceLen":I
    :cond_2
    return-object p0
.end method

.method public replaceAll(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 6
    .param p1, "matcher"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .param p2, "replaceStr"    # Ljava/lang/String;

    .line 2169
    const/4 v3, 0x0

    iget v4, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->replace(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;Ljava/lang/String;III)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replaceFirst(CC)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 3
    .param p1, "search"    # C
    .param p2, "replace"    # C

    .line 2100
    if-eq p1, p2, :cond_1

    .line 2101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    if-ge v0, v1, :cond_1

    .line 2102
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    aget-char v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 2103
    aput-char p2, v1, v0

    .line 2104
    goto :goto_1

    .line 2101
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2108
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-object p0
.end method

.method public replaceFirst(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 9
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "replaceStr"    # Ljava/lang/String;

    .line 2144
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2145
    .local v1, "searchLen":I
    :goto_0
    if-lez v1, :cond_2

    .line 2146
    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 2147
    .local v8, "index":I
    if-ltz v8, :cond_2

    .line 2148
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    move v7, v0

    .line 2149
    .local v7, "replaceLen":I
    add-int v4, v8, v1

    move-object v2, p0

    move v3, v8

    move v5, v1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->replaceImpl(IIILjava/lang/String;I)V

    .line 2152
    .end local v7    # "replaceLen":I
    .end local v8    # "index":I
    :cond_2
    return-object p0
.end method

.method public replaceFirst(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 6
    .param p1, "matcher"    # Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .param p2, "replaceStr"    # Ljava/lang/String;

    .line 2185
    const/4 v3, 0x0

    iget v4, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->replace(Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;Ljava/lang/String;III)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 6

    .line 2263
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    if-nez v0, :cond_0

    .line 2264
    return-object p0

    .line 2267
    :cond_0
    div-int/lit8 v1, v0, 0x2

    .line 2268
    .local v1, "half":I
    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    .line 2269
    .local v2, "buf":[C
    const/4 v3, 0x0

    .local v3, "leftIdx":I
    add-int/lit8 v0, v0, -0x1

    .local v0, "rightIdx":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 2270
    aget-char v4, v2, v3

    .line 2271
    .local v4, "swap":C
    aget-char v5, v2, v0

    aput-char v5, v2, v3

    .line 2272
    aput-char v4, v2, v0

    .line 2269
    .end local v4    # "swap":C
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2274
    .end local v0    # "rightIdx":I
    .end local v3    # "leftIdx":I
    :cond_1
    return-object p0
.end method

.method public rightString(I)Ljava/lang/String;
    .locals 4
    .param p1, "length"    # I

    .line 2444
    if-gtz p1, :cond_0

    .line 2445
    const-string v0, ""

    return-object v0

    .line 2446
    :cond_0
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    if-lt p1, v0, :cond_1

    .line 2447
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 2449
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    iget v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public setCharAt(IC)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "ch"    # C

    .line 342
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 345
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    aput-char p2, v0, p1

    .line 346
    return-object p0

    .line 343
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public setLength(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 5
    .param p1, "length"    # I

    .line 212
    if-ltz p1, :cond_2

    .line 215
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    if-ge p1, v0, :cond_0

    .line 216
    iput p1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    goto :goto_1

    .line 217
    :cond_0
    if-le p1, v0, :cond_1

    .line 218
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->ensureCapacity(I)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 219
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 220
    .local v0, "oldEnd":I
    move v1, p1

    .line 221
    .local v1, "newEnd":I
    iput p1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 222
    move v2, v0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 223
    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    const/4 v4, 0x0

    aput-char v4, v3, v2

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    .end local v0    # "oldEnd":I
    .end local v1    # "newEnd":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-object p0

    .line 213
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public setNewLineText(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 0
    .param p1, "newLine"    # Ljava/lang/String;

    .line 162
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->newLine:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public setNullText(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 1
    .param p1, "nullText"    # Ljava/lang/String;

    .line 184
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const/4 p1, 0x0

    .line 187
    :cond_0
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->nullText:Ljava/lang/String;

    .line 188
    return-object p0
.end method

.method public size()I
    .locals 1

    .line 278
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    return v0
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .line 2316
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2317
    return v0

    .line 2319
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2320
    .local v1, "len":I
    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2321
    return v2

    .line 2323
    :cond_1
    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    if-le v1, v3, :cond_2

    .line 2324
    return v0

    .line 2326
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 2327
    iget-object v4, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    aget-char v4, v4, v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_3

    .line 2328
    return v0

    .line 2326
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2331
    .end local v3    # "i":I
    :cond_4
    return v2
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 2369
    if-ltz p1, :cond_2

    .line 2372
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    if-gt p2, v0, :cond_1

    .line 2375
    if-gt p1, p2, :cond_0

    .line 2378
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2376
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 2373
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 2370
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # I

    .line 2391
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 2409
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->validateRange(II)I

    move-result p2

    .line 2410
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toCharArray()[C
    .locals 4

    .line 375
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 376
    new-array v0, v1, [C

    return-object v0

    .line 378
    :cond_0
    new-array v2, v0, [C

    .line 379
    .local v2, "chars":[C
    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    return-object v2
.end method

.method public toCharArray(II)[C
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 395
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->validateRange(II)I

    move-result p2

    .line 396
    sub-int v0, p2, p1

    .line 397
    .local v0, "len":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 398
    new-array v1, v1, [C

    return-object v1

    .line 400
    :cond_0
    new-array v2, v0, [C

    .line 401
    .local v2, "chars":[C
    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    invoke-static {v3, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 2972
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toStringBuffer()Ljava/lang/StringBuffer;
    .locals 4

    .line 2981
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public toStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .line 2990
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public trim()Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
    .locals 5

    .line 2284
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    if-nez v0, :cond_0

    .line 2285
    return-object p0

    .line 2287
    :cond_0
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 2288
    .local v0, "len":I
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    .line 2289
    .local v1, "buf":[C
    const/4 v2, 0x0

    .line 2290
    .local v2, "pos":I
    :goto_0
    const/16 v3, 0x20

    if-ge v2, v0, :cond_1

    aget-char v4, v1, v2

    if-gt v4, v3, :cond_1

    .line 2291
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2293
    :cond_1
    :goto_1
    if-ge v2, v0, :cond_2

    add-int/lit8 v4, v0, -0x1

    aget-char v4, v1, v4

    if-gt v4, v3, :cond_2

    .line 2294
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2296
    :cond_2
    iget v3, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    if-ge v0, v3, :cond_3

    .line 2297
    invoke-virtual {p0, v0, v3}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->delete(II)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 2299
    :cond_3
    if-lez v2, :cond_4

    .line 2300
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->delete(II)Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 2302
    :cond_4
    return-object p0
.end method

.method protected validateIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .line 3038
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    if-gt p1, v0, :cond_0

    .line 3041
    return-void

    .line 3039
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method protected validateRange(II)I
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 3017
    if-ltz p1, :cond_2

    .line 3020
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    if-le p2, v0, :cond_0

    .line 3021
    iget p2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size:I

    .line 3023
    :cond_0
    if-gt p1, p2, :cond_1

    .line 3026
    return p2

    .line 3024
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "end < start"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3018
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method
