.class public final Lorg/checkerframework/com/google/common/net/InetAddresses;
.super Ljava/lang/Object;
.source "InetAddresses.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/net/InetAddresses$TeredoInfo;
    }
.end annotation


# static fields
.field private static final ANY4:Ljava/net/Inet4Address;

.field private static final IPV4_PART_COUNT:I = 0x4

.field private static final IPV4_SPLITTER:Lorg/checkerframework/com/google/common/base/Splitter;

.field private static final IPV6_PART_COUNT:I = 0x8

.field private static final IPV6_SPLITTER:Lorg/checkerframework/com/google/common/base/Splitter;

.field private static final LOOPBACK4:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 104
    const/16 v0, 0x2e

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Splitter;->on(C)Lorg/checkerframework/com/google/common/base/Splitter;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/base/Splitter;->limit(I)Lorg/checkerframework/com/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/net/InetAddresses;->IPV4_SPLITTER:Lorg/checkerframework/com/google/common/base/Splitter;

    .line 105
    const/16 v0, 0x3a

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Splitter;->on(C)Lorg/checkerframework/com/google/common/base/Splitter;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/base/Splitter;->limit(I)Lorg/checkerframework/com/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/net/InetAddresses;->IPV6_SPLITTER:Lorg/checkerframework/com/google/common/base/Splitter;

    .line 106
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lorg/checkerframework/com/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    .line 107
    const-string v0, "0.0.0.0"

    invoke-static {v0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lorg/checkerframework/com/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/net/Inet4Address;
    .locals 1

    .line 101
    sget-object v0, Lorg/checkerframework/com/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-object v0
.end method

.method private static bytesToInetAddress([B)Ljava/net/InetAddress;
    .locals 2
    .param p0, "addr"    # [B

    .line 315
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static coerceToInteger(Ljava/net/InetAddress;)I
    .locals 1
    .param p0, "ip"    # Ljava/net/InetAddress;

    .line 890
    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/io/ByteStreams;->newDataInput([B)Lorg/checkerframework/com/google/common/io/ByteArrayDataInput;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/io/ByteArrayDataInput;->readInt()I

    move-result v0

    return v0
.end method

.method private static compressLongestRunOfZeroes([I)V
    .locals 5
    .param p0, "hextets"    # [I

    .line 361
    const/4 v0, -0x1

    .line 362
    .local v0, "bestRunStart":I
    const/4 v1, -0x1

    .line 363
    .local v1, "bestRunLength":I
    const/4 v2, -0x1

    .line 364
    .local v2, "runStart":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, 0x1

    if-ge v3, v4, :cond_3

    .line 365
    array-length v4, p0

    if-ge v3, v4, :cond_0

    aget v4, p0, v3

    if-nez v4, :cond_0

    .line 366
    if-gez v2, :cond_2

    .line 367
    move v2, v3

    goto :goto_1

    .line 369
    :cond_0
    if-ltz v2, :cond_2

    .line 370
    sub-int v4, v3, v2

    .line 371
    .local v4, "runLength":I
    if-le v4, v1, :cond_1

    .line 372
    move v0, v2

    .line 373
    move v1, v4

    .line 375
    :cond_1
    const/4 v2, -0x1

    .line 364
    .end local v4    # "runLength":I
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 378
    .end local v3    # "i":I
    :cond_3
    const/4 v3, 0x2

    if-lt v1, v3, :cond_4

    .line 379
    add-int v3, v0, v1

    const/4 v4, -0x1

    invoke-static {p0, v0, v3, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 381
    :cond_4
    return-void
.end method

.method private static convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "ipString"    # Ljava/lang/String;

    .line 271
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 272
    .local v0, "lastColon":I
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "initialPart":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, "dottedQuad":Ljava/lang/String;
    invoke-static {v3}, Lorg/checkerframework/com/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v4

    .line 275
    .local v4, "quad":[B
    if-nez v4, :cond_0

    .line 276
    const/4 v2, 0x0

    return-object v2

    .line 278
    :cond_0
    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v5, 0x1

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "penultimate":Ljava/lang/String;
    const/4 v5, 0x2

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x3

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 280
    .local v5, "ultimate":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static decrement(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 5
    .param p0, "address"    # Ljava/net/InetAddress;

    .line 931
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 932
    .local v0, "addr":[B
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 933
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    aget-byte v3, v0, v1

    if-nez v3, :cond_0

    .line 934
    const/4 v3, -0x1

    aput-byte v3, v0, v1

    .line 935
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 938
    :cond_0
    if-ltz v1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const-string v4, "Decrementing %s would wrap."

    invoke-static {v3, v4, p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 940
    aget-byte v3, v0, v1

    sub-int/2addr v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 941
    invoke-static {v0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2
.end method

.method public static forString(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 3
    .param p0, "ipString"    # Ljava/lang/String;

    .line 139
    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 142
    .local v0, "addr":[B
    if-eqz v0, :cond_0

    .line 146
    invoke-static {v0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1

    .line 143
    :cond_0
    const-string v1, "\'%s\' is not an IP string literal."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method public static forUriString(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 3
    .param p0, "hostAddr"    # Ljava/lang/String;

    .line 456
    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->forUriStringNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 457
    .local v0, "addr":Ljava/net/InetAddress;
    if-eqz v0, :cond_0

    .line 461
    return-object v0

    .line 458
    :cond_0
    const-string v1, "Not a valid URI IP literal: \'%s\'"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method private static forUriStringNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4
    .param p0, "hostAddr"    # Ljava/lang/String;

    .line 465
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "ipString":Ljava/lang/String;
    const/16 v1, 0x10

    .local v1, "expectBytes":I
    goto :goto_0

    .line 474
    .end local v0    # "ipString":Ljava/lang/String;
    .end local v1    # "expectBytes":I
    :cond_0
    move-object v0, p0

    .line 475
    .restart local v0    # "ipString":Ljava/lang/String;
    const/4 v1, 0x4

    .line 479
    .restart local v1    # "expectBytes":I
    :goto_0
    invoke-static {v0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 480
    .local v2, "addr":[B
    if-eqz v2, :cond_2

    array-length v3, v2

    if-eq v3, v1, :cond_1

    goto :goto_1

    .line 484
    :cond_1
    invoke-static {v2}, Lorg/checkerframework/com/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    return-object v3

    .line 481
    :cond_2
    :goto_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private static varargs formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 987
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromInteger(I)Ljava/net/Inet4Address;
    .locals 1
    .param p0, "address"    # I

    .line 900
    invoke-static {p0}, Lorg/checkerframework/com/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static fromLittleEndianByteArray([B)Ljava/net/InetAddress;
    .locals 3
    .param p0, "addr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 914
    array-length v0, p0

    new-array v0, v0, [B

    .line 915
    .local v0, "reversed":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 916
    array-length v2, p0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    .line 915
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 918
    .end local v1    # "i":I
    :cond_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public static get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 3
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 571
    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not a 6to4 address."

    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 573
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;
    .locals 8
    .param p0, "ip"    # Ljava/net/InetAddress;

    .line 827
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 828
    move-object v0, p0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0

    .line 832
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 833
    .local v0, "bytes":[B
    const/4 v1, 0x1

    .line 834
    .local v1, "leadingBytesOfZero":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xf

    if-ge v2, v3, :cond_2

    .line 835
    aget-byte v4, v0, v2

    if-eqz v4, :cond_1

    .line 836
    const/4 v1, 0x0

    .line 837
    goto :goto_1

    .line 834
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 840
    .end local v2    # "i":I
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    aget-byte v2, v0, v3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 841
    sget-object v2, Lorg/checkerframework/com/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    return-object v2

    .line 842
    :cond_3
    if-eqz v1, :cond_4

    aget-byte v2, v0, v3

    if-nez v2, :cond_4

    .line 843
    sget-object v2, Lorg/checkerframework/com/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-object v2

    .line 846
    :cond_4
    move-object v2, p0

    check-cast v2, Ljava/net/Inet6Address;

    .line 847
    .local v2, "ip6":Ljava/net/Inet6Address;
    const-wide/16 v3, 0x0

    .line 848
    .local v3, "addressAsLong":J
    invoke-static {v2}, Lorg/checkerframework/com/google/common/net/InetAddresses;->hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 849
    invoke-static {v2}, Lorg/checkerframework/com/google/common/net/InetAddresses;->getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Inet4Address;->hashCode()I

    move-result v5

    int-to-long v3, v5

    goto :goto_2

    .line 853
    :cond_5
    invoke-virtual {v2}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-static {v5, v6, v7}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    .line 857
    :goto_2
    invoke-static {}, Lorg/checkerframework/com/google/common/hash/Hashing;->murmur3_32()Lorg/checkerframework/com/google/common/hash/HashFunction;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lorg/checkerframework/com/google/common/hash/HashFunction;->hashLong(J)Lorg/checkerframework/com/google/common/hash/HashCode;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/com/google/common/hash/HashCode;->asInt()I

    move-result v5

    .line 860
    .local v5, "coercedHash":I
    const/high16 v6, -0x20000000

    or-int/2addr v5, v6

    .line 864
    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    .line 865
    const/4 v5, -0x2

    .line 868
    :cond_6
    invoke-static {v5}, Lorg/checkerframework/com/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v6

    invoke-static {v6}, Lorg/checkerframework/com/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v6

    return-object v6
.end method

.method public static getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 3
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 540
    nop

    .line 541
    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    .line 540
    const-string v2, "Address \'%s\' is not IPv4-compatible."

    invoke-static {v0, v2, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 543
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 2
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 757
    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0

    .line 761
    :cond_0
    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0

    .line 765
    :cond_1
    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 766
    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->getTeredoInfo(Ljava/net/Inet6Address;)Lorg/checkerframework/com/google/common/net/InetAddresses$TeredoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/net/InetAddresses$TeredoInfo;->getClient()Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0

    .line 769
    :cond_2
    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\'%s\' has no embedded IPv4 address."

    invoke-static {v1, v0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method private static getInet4Address([B)Ljava/net/Inet4Address;
    .locals 3
    .param p0, "bytes"    # [B

    .line 119
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Byte array has invalid length for an IPv4 address: %s != 4."

    array-length v2, p0

    invoke-static {v0, v1, v2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 125
    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0
.end method

.method public static getIsatapIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 3
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 723
    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->isIsatapAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not an ISATAP address."

    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 725
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getTeredoInfo(Ljava/net/Inet6Address;)Lorg/checkerframework/com/google/common/net/InetAddresses$TeredoInfo;
    .locals 7
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 662
    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not a Teredo address."

    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 664
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 665
    .local v0, "bytes":[B
    const/4 v1, 0x4

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v1

    .line 667
    .local v1, "server":Ljava/net/Inet4Address;
    invoke-static {v0, v2}, Lorg/checkerframework/com/google/common/io/ByteStreams;->newDataInput([BI)Lorg/checkerframework/com/google/common/io/ByteArrayDataInput;

    move-result-object v2

    invoke-interface {v2}, Lorg/checkerframework/com/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    .line 670
    .local v2, "flags":I
    const/16 v4, 0xa

    invoke-static {v0, v4}, Lorg/checkerframework/com/google/common/io/ByteStreams;->newDataInput([BI)Lorg/checkerframework/com/google/common/io/ByteArrayDataInput;

    move-result-object v4

    invoke-interface {v4}, Lorg/checkerframework/com/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v4

    not-int v4, v4

    and-int/2addr v3, v4

    .line 672
    .local v3, "port":I
    const/16 v4, 0xc

    const/16 v5, 0x10

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 673
    .local v4, "clientBytes":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_0

    .line 675
    aget-byte v6, v4, v5

    not-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 673
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 677
    .end local v5    # "i":I
    :cond_0
    invoke-static {v4}, Lorg/checkerframework/com/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v5

    .line 679
    .local v5, "client":Ljava/net/Inet4Address;
    new-instance v6, Lorg/checkerframework/com/google/common/net/InetAddresses$TeredoInfo;

    invoke-direct {v6, v1, v5, v3, v2}, Lorg/checkerframework/com/google/common/net/InetAddresses$TeredoInfo;-><init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;II)V

    return-object v6
.end method

.method public static hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z
    .locals 1
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 741
    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static hextetsToIPv6String([I)Ljava/lang/String;
    .locals 5
    .param p0, "hextets"    # [I

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 397
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 398
    .local v1, "lastWasNumber":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_5

    .line 399
    aget v3, p0, v2

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 400
    .local v3, "thisIsNumber":Z
    :goto_1
    if-eqz v3, :cond_2

    .line 401
    if-eqz v1, :cond_1

    .line 402
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 404
    :cond_1
    aget v4, p0, v2

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 406
    :cond_2
    if-eqz v2, :cond_3

    if-eqz v1, :cond_4

    .line 407
    :cond_3
    const-string v4, "::"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    :cond_4
    :goto_2
    move v1, v3

    .line 398
    .end local v3    # "thisIsNumber":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 412
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static increment(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 6
    .param p0, "address"    # Ljava/net/InetAddress;

    .line 954
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 955
    .local v0, "addr":[B
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 956
    .local v1, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ltz v1, :cond_0

    aget-byte v4, v0, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 957
    aput-byte v3, v0, v1

    .line 958
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 961
    :cond_0
    if-ltz v1, :cond_1

    move v3, v2

    :cond_1
    const-string v4, "Incrementing %s would wrap."

    invoke-static {v3, v4, p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 963
    aget-byte v3, v0, v1

    add-int/2addr v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 964
    invoke-static {v0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2
.end method

.method private static ipStringToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "ipString"    # Ljava/lang/String;

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "hasColon":Z
    const/4 v1, 0x0

    .line 164
    .local v1, "hasDot":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_4

    .line 165
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 166
    .local v3, "c":C
    const/16 v5, 0x2e

    if-ne v3, v5, :cond_0

    .line 167
    const/4 v1, 0x1

    goto :goto_1

    .line 168
    :cond_0
    const/16 v5, 0x3a

    if-ne v3, v5, :cond_2

    .line 169
    if-eqz v1, :cond_1

    .line 170
    return-object v4

    .line 172
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 173
    :cond_2
    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 174
    return-object v4

    .line 164
    .end local v3    # "c":C
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 179
    .end local v2    # "i":I
    :cond_4
    if-eqz v0, :cond_6

    .line 180
    if-eqz v1, :cond_5

    .line 181
    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 182
    if-nez p0, :cond_5

    .line 183
    return-object v4

    .line 186
    :cond_5
    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->textToNumericFormatV6(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2

    .line 187
    :cond_6
    if-eqz v1, :cond_7

    .line 188
    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2

    .line 190
    :cond_7
    return-object v4
.end method

.method public static is6to4Address(Ljava/net/Inet6Address;)Z
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 559
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 560
    .local v0, "bytes":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static isCompatIPv4Address(Ljava/net/Inet6Address;)Z
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 517
    invoke-virtual {p0}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 518
    return v1

    .line 521
    :cond_0
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 522
    .local v0, "bytes":[B
    const/16 v2, 0xc

    aget-byte v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    const/16 v2, 0xd

    aget-byte v2, v0, v2

    if-nez v2, :cond_2

    const/16 v2, 0xe

    aget-byte v2, v0, v2

    if-nez v2, :cond_2

    const/16 v2, 0xf

    aget-byte v4, v0, v2

    if-eqz v4, :cond_1

    aget-byte v2, v0, v2

    if-ne v2, v3, :cond_2

    .line 526
    :cond_1
    return v1

    .line 529
    :cond_2
    return v3
.end method

.method public static isInetAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ipString"    # Ljava/lang/String;

    .line 157
    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIsatapAddress(Ljava/net/Inet6Address;)Z
    .locals 4
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 699
    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 700
    return v1

    .line 703
    :cond_0
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 705
    .local v0, "bytes":[B
    const/16 v2, 0x8

    aget-byte v2, v0, v2

    const/4 v3, 0x3

    or-int/2addr v2, v3

    if-eq v2, v3, :cond_1

    .line 709
    return v1

    .line 712
    :cond_1
    const/16 v2, 0x9

    aget-byte v2, v0, v2

    if-nez v2, :cond_2

    const/16 v2, 0xa

    aget-byte v2, v0, v2

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_2

    const/16 v2, 0xb

    aget-byte v2, v0, v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isMappedIPv4Address(Ljava/lang/String;)Z
    .locals 5
    .param p0, "ipString"    # Ljava/lang/String;

    .line 791
    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 792
    .local v0, "bytes":[B
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 793
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 794
    aget-byte v3, v0, v2

    if-eqz v3, :cond_0

    .line 795
    return v1

    .line 793
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 798
    .end local v2    # "i":I
    :cond_1
    const/16 v2, 0xa

    .restart local v2    # "i":I
    :goto_1
    const/16 v3, 0xc

    if-ge v2, v3, :cond_3

    .line 799
    aget-byte v3, v0, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 800
    return v1

    .line 798
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 803
    .end local v2    # "i":I
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 805
    :cond_4
    return v1
.end method

.method public static isMaximum(Ljava/net/InetAddress;)Z
    .locals 4
    .param p0, "address"    # Ljava/net/InetAddress;

    .line 976
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 977
    .local v0, "addr":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 978
    aget-byte v2, v0, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 979
    const/4 v2, 0x0

    return v2

    .line 977
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 982
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static isTeredoAddress(Ljava/net/Inet6Address;)Z
    .locals 4
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .line 647
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 648
    .local v0, "bytes":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    if-ne v3, v2, :cond_0

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    if-nez v3, :cond_0

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    if-nez v3, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static isUriInetAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ipString"    # Ljava/lang/String;

    .line 495
    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->forUriStringNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static parseHextet(Ljava/lang/String;)S
    .locals 2
    .param p0, "ipPart"    # Ljava/lang/String;

    .line 296
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 297
    .local v0, "hextet":I
    const v1, 0xffff

    if-gt v0, v1, :cond_0

    .line 300
    int-to-short v1, v0

    return v1

    .line 298
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1
.end method

.method private static parseOctet(Ljava/lang/String;)B
    .locals 3
    .param p0, "ipPart"    # Ljava/lang/String;

    .line 285
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 288
    .local v0, "octet":I
    const/16 v1, 0xff

    if-gt v0, v1, :cond_1

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 291
    :cond_0
    int-to-byte v1, v0

    return v1

    .line 289
    :cond_1
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1
.end method

.method private static textToNumericFormatV4(Ljava/lang/String;)[B
    .locals 8
    .param p0, "ipString"    # Ljava/lang/String;

    .line 194
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 195
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .line 197
    .local v2, "i":I
    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lorg/checkerframework/com/google/common/net/InetAddresses;->IPV4_SPLITTER:Lorg/checkerframework/com/google/common/base/Splitter;

    invoke-virtual {v4, p0}, Lorg/checkerframework/com/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 198
    .local v5, "octet":Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    :try_start_1
    invoke-static {v5}, Lorg/checkerframework/com/google/common/net/InetAddresses;->parseOctet(Ljava/lang/String;)B

    move-result v7

    aput-byte v7, v1, v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 199
    .end local v5    # "octet":Ljava/lang/String;
    move v2, v6

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    move v2, v6

    goto :goto_1

    .line 202
    .end local v6    # "i":I
    .restart local v2    # "i":I
    :cond_0
    nop

    .line 204
    if-ne v2, v0, :cond_1

    move-object v3, v1

    :cond_1
    return-object v3

    .line 200
    :catch_1
    move-exception v0

    .line 201
    .local v0, "ex":Ljava/lang/NumberFormatException;
    :goto_1
    return-object v3
.end method

.method private static textToNumericFormatV6(Ljava/lang/String;)[B
    .locals 10
    .param p0, "ipString"    # Ljava/lang/String;

    .line 209
    sget-object v0, Lorg/checkerframework/com/google/common/net/InetAddresses;->IPV6_SPLITTER:Lorg/checkerframework/com/google/common/base/Splitter;

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/google/common/base/Splitter;->splitToList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    .line 210
    .local v0, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-lt v1, v2, :cond_d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x9

    if-le v1, v2, :cond_0

    goto/16 :goto_6

    .line 216
    :cond_0
    const/4 v1, -0x1

    .line 217
    .local v1, "skipIndex":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_3

    .line 218
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 219
    if-ltz v1, :cond_1

    .line 220
    return-object v3

    .line 222
    :cond_1
    move v1, v2

    .line 217
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x0

    if-ltz v1, :cond_5

    .line 230
    move v4, v1

    .line 231
    .local v4, "partsHi":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    sub-int/2addr v6, v5

    .line 232
    .local v6, "partsLo":I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    add-int/lit8 v4, v4, -0x1

    if-eqz v4, :cond_4

    .line 233
    return-object v3

    .line 235
    :cond_4
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_6

    add-int/lit8 v6, v6, -0x1

    if-eqz v6, :cond_6

    .line 236
    return-object v3

    .line 241
    .end local v4    # "partsHi":I
    .end local v6    # "partsLo":I
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 242
    .restart local v4    # "partsHi":I
    const/4 v6, 0x0

    .line 247
    .restart local v6    # "partsLo":I
    :cond_6
    add-int v7, v4, v6

    rsub-int/lit8 v7, v7, 0x8

    .line 248
    .local v7, "partsSkipped":I
    if-ltz v1, :cond_7

    if-lt v7, v5, :cond_8

    goto :goto_1

    :cond_7
    if-eqz v7, :cond_9

    .line 249
    :cond_8
    return-object v3

    .line 253
    :cond_9
    :goto_1
    const/16 v5, 0x10

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 255
    .local v5, "rawBytes":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v4, :cond_a

    .line 256
    :try_start_0
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lorg/checkerframework/com/google/common/net/InetAddresses;->parseHextet(Ljava/lang/String;)S

    move-result v9

    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 255
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 264
    .end local v8    # "i":I
    :catch_0
    move-exception v2

    goto :goto_5

    .line 258
    :cond_a
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v7, :cond_b

    .line 259
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 258
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 261
    .end local v8    # "i":I
    :cond_b
    move v2, v6

    .restart local v2    # "i":I
    :goto_4
    if-lez v2, :cond_c

    .line 262
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lorg/checkerframework/com/google/common/net/InetAddresses;->parseHextet(Ljava/lang/String;)S

    move-result v8

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 265
    .local v2, "ex":Ljava/lang/NumberFormatException;
    :goto_5
    return-object v3

    .line 266
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :cond_c
    nop

    .line 267
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2

    .line 211
    .end local v1    # "skipIndex":I
    .end local v4    # "partsHi":I
    .end local v5    # "rawBytes":Ljava/nio/ByteBuffer;
    .end local v6    # "partsLo":I
    .end local v7    # "partsSkipped":I
    :cond_d
    :goto_6
    return-object v3
.end method

.method public static toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 6
    .param p0, "ip"    # Ljava/net/InetAddress;

    .line 337
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 342
    :cond_0
    instance-of v0, p0, Ljava/net/Inet6Address;

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 343
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 344
    .local v0, "bytes":[B
    const/16 v1, 0x8

    new-array v1, v1, [I

    .line 345
    .local v1, "hextets":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 346
    mul-int/lit8 v3, v2, 0x2

    aget-byte v3, v0, v3

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, v0, v4

    const/4 v5, 0x0

    invoke-static {v5, v5, v3, v4}, Lorg/checkerframework/com/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v3

    aput v3, v1, v2

    .line 345
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 348
    .end local v2    # "i":I
    :cond_1
    invoke-static {v1}, Lorg/checkerframework/com/google/common/net/InetAddresses;->compressLongestRunOfZeroes([I)V

    .line 349
    invoke-static {v1}, Lorg/checkerframework/com/google/common/net/InetAddresses;->hextetsToIPv6String([I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static toUriString(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 2
    .param p0, "ip"    # Ljava/net/InetAddress;

    .line 435
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 438
    :cond_0
    invoke-static {p0}, Lorg/checkerframework/com/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method