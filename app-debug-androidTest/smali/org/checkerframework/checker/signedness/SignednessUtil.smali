.class public final Lorg/checkerframework/checker/signedness/SignednessUtil;
.super Ljava/lang/Object;
.source "SignednessUtil.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Do not instantiate"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static byteFromDouble(D)B
    .locals 2
    .param p0, "d"    # D

    .line 497
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    .line 498
    double-to-int v0, p0

    int-to-byte v0, v0

    return v0

    .line 497
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static byteFromFloat(F)B
    .locals 1
    .param p0, "f"    # F

    .line 469
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    .line 470
    float-to-int v0, p0

    int-to-byte v0, v0

    return v0

    .line 469
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static compareUnsigned(BB)I
    .locals 2
    .param p0, "x"    # B
    .param p1, "y"    # B

    .line 357
    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v0

    return v0
.end method

.method public static compareUnsigned(SS)I
    .locals 2
    .param p0, "x"    # S
    .param p1, "y"    # S

    .line 346
    invoke-static {p0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v0

    return v0
.end method

.method public static getUnsigned(Ljava/nio/ByteBuffer;)B
    .locals 1
    .param p0, "b"    # Ljava/nio/ByteBuffer;

    .line 71
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public static getUnsigned(Ljava/nio/ByteBuffer;I)B
    .locals 1
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # I

    .line 81
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public static getUnsigned(Ljava/nio/IntBuffer;I)I
    .locals 1
    .param p0, "b"    # Ljava/nio/IntBuffer;
    .param p1, "i"    # I

    .line 161
    invoke-virtual {p0, p1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    return v0
.end method

.method public static getUnsigned(Ljava/nio/ByteBuffer;[BII)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .param p1, "bs"    # [B
    .param p2, "i"    # I
    .param p3, "l"    # I

    .line 91
    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getUnsigned(Ljava/nio/ByteBuffer;[B)V
    .locals 0
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .param p1, "bs"    # [B

    .line 335
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 336
    return-void
.end method

.method public static getUnsignedInt(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "b"    # Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public static getUnsignedShort(Ljava/nio/ByteBuffer;)S
    .locals 1
    .param p0, "b"    # Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public static intFromDouble(D)I
    .locals 2
    .param p0, "d"    # D

    .line 511
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    .line 512
    double-to-int v0, p0

    return v0

    .line 511
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static intFromFloat(F)I
    .locals 1
    .param p0, "f"    # F

    .line 483
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    .line 484
    float-to-int v0, p0

    return v0

    .line 483
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static longFromDouble(D)J
    .locals 2
    .param p0, "d"    # D

    .line 518
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    .line 519
    double-to-long v0, p0

    return-wide v0

    .line 518
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static longFromFloat(F)J
    .locals 2
    .param p0, "f"    # F

    .line 490
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    .line 491
    float-to-long v0, p0

    return-wide v0

    .line 490
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static putUnsigned(Ljava/nio/ByteBuffer;B)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .param p1, "ubyte"    # B

    .line 101
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static putUnsigned(Ljava/nio/ByteBuffer;IB)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # I
    .param p2, "ubyte"    # B

    .line 111
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static putUnsigned(Ljava/nio/IntBuffer;I)Ljava/nio/IntBuffer;
    .locals 1
    .param p0, "b"    # Ljava/nio/IntBuffer;
    .param p1, "uint"    # I

    .line 121
    invoke-virtual {p0, p1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static putUnsigned(Ljava/nio/IntBuffer;II)Ljava/nio/IntBuffer;
    .locals 1
    .param p0, "b"    # Ljava/nio/IntBuffer;
    .param p1, "i"    # I
    .param p2, "uint"    # I

    .line 131
    invoke-virtual {p0, p1, p2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static putUnsigned(Ljava/nio/IntBuffer;[I)Ljava/nio/IntBuffer;
    .locals 1
    .param p0, "b"    # Ljava/nio/IntBuffer;
    .param p1, "uints"    # [I

    .line 141
    invoke-virtual {p0, p1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static putUnsigned(Ljava/nio/IntBuffer;[III)Ljava/nio/IntBuffer;
    .locals 1
    .param p0, "b"    # Ljava/nio/IntBuffer;
    .param p1, "uints"    # [I
    .param p2, "i"    # I
    .param p3, "l"    # I

    .line 151
    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static putUnsignedInt(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .param p1, "uint"    # I

    .line 191
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static putUnsignedInt(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # I
    .param p2, "uint"    # I

    .line 201
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static putUnsignedLong(Ljava/nio/ByteBuffer;IJ)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # I
    .param p2, "ulong"    # J

    .line 211
    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static putUnsignedShort(Ljava/nio/ByteBuffer;IS)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .param p1, "i"    # I
    .param p2, "ushort"    # S

    .line 181
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static putUnsignedShort(Ljava/nio/ByteBuffer;S)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .param p1, "ushort"    # S

    .line 171
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static readFullyUnsigned(Ljava/io/RandomAccessFile;[B)V
    .locals 0
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 264
    return-void
.end method

.method public static readUnsigned(Ljava/io/RandomAccessFile;[BII)I
    .locals 1
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public static readUnsignedChar(Ljava/io/RandomAccessFile;)C
    .locals 1
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readChar()C

    move-result v0

    return v0
.end method

.method public static readUnsignedInt(Ljava/io/RandomAccessFile;)I
    .locals 1
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    return v0
.end method

.method public static readUnsignedLong(Ljava/io/RandomAccessFile;)J
    .locals 2
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static shortFromDouble(D)S
    .locals 2
    .param p0, "d"    # D

    .line 504
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    .line 505
    double-to-int v0, p0

    int-to-short v0, v0

    return v0

    .line 504
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static shortFromFloat(F)S
    .locals 1
    .param p0, "f"    # F

    .line 476
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    .line 477
    float-to-int v0, p0

    int-to-short v0, v0

    return v0

    .line 476
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static toDouble(B)D
    .locals 2
    .param p0, "b"    # B

    .line 448
    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedLong(B)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(I)D
    .locals 2
    .param p0, "i"    # I

    .line 458
    invoke-static {p0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(J)D
    .locals 2
    .param p0, "l"    # J

    .line 463
    invoke-static {p0, p1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(S)D
    .locals 2
    .param p0, "s"    # S

    .line 453
    invoke-static {p0}, Ljava/lang/Short;->toUnsignedLong(S)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static toFloat(B)F
    .locals 2
    .param p0, "b"    # B

    .line 428
    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedLong(B)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    return v0
.end method

.method public static toFloat(I)F
    .locals 2
    .param p0, "i"    # I

    .line 438
    invoke-static {p0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    return v0
.end method

.method public static toFloat(J)F
    .locals 1
    .param p0, "l"    # J

    .line 443
    invoke-static {p0, p1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    return v0
.end method

.method public static toFloat(S)F
    .locals 2
    .param p0, "s"    # S

    .line 433
    invoke-static {p0}, Ljava/lang/Short;->toUnsignedLong(S)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    return v0
.end method

.method private static toUnsignedBigInteger(J)Ljava/math/BigInteger;
    .locals 5
    .param p0, "l"    # J

    .line 393
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 394
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 396
    :cond_0
    const/16 v0, 0x20

    ushr-long v1, p0, v0

    long-to-int v1, v1

    .line 397
    .local v1, "upper":I
    long-to-int v2, p0

    .line 400
    .local v2, "lower":I
    invoke-static {v1}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 401
    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 402
    invoke-static {v2}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 400
    return-object v0
.end method

.method public static toUnsignedInt(C)I
    .locals 1
    .param p0, "c"    # C

    .line 418
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static toUnsignedLong(C)J
    .locals 4
    .param p0, "c"    # C

    .line 413
    int-to-long v0, p0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static toUnsignedShort(B)S
    .locals 1
    .param p0, "b"    # B

    .line 408
    and-int/lit16 v0, p0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public static toUnsignedShort(C)S
    .locals 1
    .param p0, "c"    # C

    .line 423
    and-int/lit16 v0, p0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public static toUnsignedString(B)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # B

    .line 375
    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toUnsignedString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUnsignedString(BI)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # B
    .param p1, "radix"    # I

    .line 381
    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Integer;->toUnsignedString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUnsignedString(S)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # S

    .line 363
    invoke-static {p0}, Ljava/lang/Short;->toUnsignedLong(S)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUnsignedString(SI)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # S
    .param p1, "radix"    # I

    .line 369
    invoke-static {p0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Integer;->toUnsignedString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrapUnsigned([B)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "array"    # [B

    .line 31
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static wrapUnsigned([BII)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 41
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static writeUnsigned(Ljava/io/RandomAccessFile;[BII)V
    .locals 0
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .param p1, "bs"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 275
    return-void
.end method

.method public static writeUnsignedByte(Ljava/io/RandomAccessFile;B)V
    .locals 1
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    invoke-static {p1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 285
    return-void
.end method

.method public static writeUnsignedChar(Ljava/io/RandomAccessFile;C)V
    .locals 1
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    invoke-static {p1}, Lorg/checkerframework/checker/signedness/SignednessUtil;->toUnsignedInt(C)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeChar(I)V

    .line 295
    return-void
.end method

.method public static writeUnsignedInt(Ljava/io/RandomAccessFile;I)V
    .locals 0
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 316
    return-void
.end method

.method public static writeUnsignedLong(Ljava/io/RandomAccessFile;J)V
    .locals 0
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .param p1, "l"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 326
    return-void
.end method

.method public static writeUnsignedShort(Ljava/io/RandomAccessFile;S)V
    .locals 1
    .param p0, "f"    # Ljava/io/RandomAccessFile;
    .param p1, "s"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    invoke-static {p1}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 306
    return-void
.end method
