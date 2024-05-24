.class final Lorg/checkerframework/com/google/common/io/BaseEncoding$Base16Encoding;
.super Lorg/checkerframework/com/google/common/io/BaseEncoding$StandardBaseEncoding;
.source "BaseEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Base16Encoding"
.end annotation


# instance fields
.field final encoding:[C


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "alphabetChars"    # Ljava/lang/String;

    .line 895
    new-instance v0, Lorg/checkerframework/com/google/common/io/BaseEncoding$Alphabet;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/checkerframework/com/google/common/io/BaseEncoding$Alphabet;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0}, Lorg/checkerframework/com/google/common/io/BaseEncoding$Base16Encoding;-><init>(Lorg/checkerframework/com/google/common/io/BaseEncoding$Alphabet;)V

    .line 896
    return-void
.end method

.method private constructor <init>(Lorg/checkerframework/com/google/common/io/BaseEncoding$Alphabet;)V
    .locals 4
    .param p1, "alphabet"    # Lorg/checkerframework/com/google/common/io/BaseEncoding$Alphabet;

    .line 899
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Lorg/checkerframework/com/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V

    .line 892
    const/16 v0, 0x200

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/checkerframework/com/google/common/io/BaseEncoding$Base16Encoding;->encoding:[C

    .line 900
    invoke-static {p1}, Lorg/checkerframework/com/google/common/io/BaseEncoding$Alphabet;->access$000(Lorg/checkerframework/com/google/common/io/BaseEncoding$Alphabet;)[C

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 901
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x100

    if-ge v0, v1, :cond_1

    .line 902
    iget-object v1, p0, Lorg/checkerframework/com/google/common/io/BaseEncoding$Base16Encoding;->encoding:[C

    ushr-int/lit8 v2, v0, 0x4

    invoke-virtual {p1, v2}, Lorg/checkerframework/com/google/common/io/BaseEncoding$Alphabet;->encode(I)C

    move-result v2

    aput-char v2, v1, v0

    .line 903
    iget-object v1, p0, Lorg/checkerframework/com/google/common/io/BaseEncoding$Base16Encoding;->encoding:[C

    or-int/lit16 v2, v0, 0x100

    and-int/lit8 v3, v0, 0xf

    invoke-virtual {p1, v3}, Lorg/checkerframework/com/google/common/io/BaseEncoding$Alphabet;->encode(I)C

    move-result v3

    aput-char v3, v1, v2

    .line 901
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 905
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method decodeTo([BLjava/lang/CharSequence;)I
    .locals 5
    .param p1, "target"    # [B
    .param p2, "chars"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/com/google/common/io/BaseEncoding$DecodingException;
        }
    .end annotation

    .line 920
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 924
    const/4 v0, 0x0

    .line 925
    .local v0, "bytesWritten":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 926
    iget-object v2, p0, Lorg/checkerframework/com/google/common/io/BaseEncoding$Base16Encoding;->alphabet:Lorg/checkerframework/com/google/common/io/BaseEncoding$Alphabet;

    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/google/common/io/BaseEncoding$Alphabet;->decode(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lorg/checkerframework/com/google/common/io/BaseEncoding$Base16Encoding;->alphabet:Lorg/checkerframework/com/google/common/io/BaseEncoding$Alphabet;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/com/google/common/io/BaseEncoding$Alphabet;->decode(C)I

    move-result v3

    or-int/2addr v2, v3

    .line 927
    .local v2, "decoded":I
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "bytesWritten":I
    .local v3, "bytesWritten":I
    int-to-byte v4, v2

    aput-byte v4, p1, v0

    .line 925
    .end local v2    # "decoded":I
    add-int/lit8 v1, v1, 0x2

    move v0, v3

    goto :goto_0

    .line 929
    .end local v1    # "i":I
    .end local v3    # "bytesWritten":I
    .restart local v0    # "bytesWritten":I
    :cond_0
    return v0

    .line 922
    .end local v0    # "bytesWritten":I
    :cond_1
    new-instance v0, Lorg/checkerframework/com/google/common/io/BaseEncoding$DecodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid input length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method encodeTo(Ljava/lang/Appendable;[BII)V
    .locals 4
    .param p1, "target"    # Ljava/lang/Appendable;
    .param p2, "bytes"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 909
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    add-int v0, p3, p4

    array-length v1, p2

    invoke-static {p3, v0, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 911
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 912
    add-int v1, p3, v0

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    .line 913
    .local v1, "b":I
    iget-object v2, p0, Lorg/checkerframework/com/google/common/io/BaseEncoding$Base16Encoding;->encoding:[C

    aget-char v2, v2, v1

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 914
    iget-object v2, p0, Lorg/checkerframework/com/google/common/io/BaseEncoding$Base16Encoding;->encoding:[C

    or-int/lit16 v3, v1, 0x100

    aget-char v2, v2, v3

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 911
    .end local v1    # "b":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 916
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method newInstance(Lorg/checkerframework/com/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)Lorg/checkerframework/com/google/common/io/BaseEncoding;
    .locals 1
    .param p1, "alphabet"    # Lorg/checkerframework/com/google/common/io/BaseEncoding$Alphabet;
    .param p2, "paddingChar"    # Ljava/lang/Character;

    .line 934
    new-instance v0, Lorg/checkerframework/com/google/common/io/BaseEncoding$Base16Encoding;

    invoke-direct {v0, p1}, Lorg/checkerframework/com/google/common/io/BaseEncoding$Base16Encoding;-><init>(Lorg/checkerframework/com/google/common/io/BaseEncoding$Alphabet;)V

    return-object v0
.end method
