.class public abstract Lorg/checkerframework/com/google/common/hash/HashCode;
.super Ljava/lang/Object;
.source "HashCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/hash/HashCode$BytesHashCode;,
        Lorg/checkerframework/com/google/common/hash/HashCode$LongHashCode;,
        Lorg/checkerframework/com/google/common/hash/HashCode$IntHashCode;
    }
.end annotation


# static fields
.field private static final hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 422
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/hash/HashCode;->hexDigits:[C

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decode(C)I
    .locals 3
    .param p0, "ch"    # C

    .line 355
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 356
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 358
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 359
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 361
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal hexadecimal character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromBytes([B)Lorg/checkerframework/com/google/common/hash/HashCode;
    .locals 2
    .param p0, "bytes"    # [B

    .line 240
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "A HashCode must contain at least 1 byte."

    invoke-static {v1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 241
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lorg/checkerframework/com/google/common/hash/HashCode;->fromBytesNoCopy([B)Lorg/checkerframework/com/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method static fromBytesNoCopy([B)Lorg/checkerframework/com/google/common/hash/HashCode;
    .locals 1
    .param p0, "bytes"    # [B

    .line 249
    new-instance v0, Lorg/checkerframework/com/google/common/hash/HashCode$BytesHashCode;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/hash/HashCode$BytesHashCode;-><init>([B)V

    return-object v0
.end method

.method public static fromInt(I)Lorg/checkerframework/com/google/common/hash/HashCode;
    .locals 1
    .param p0, "hash"    # I

    .line 117
    new-instance v0, Lorg/checkerframework/com/google/common/hash/HashCode$IntHashCode;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/hash/HashCode$IntHashCode;-><init>(I)V

    return-object v0
.end method

.method public static fromLong(J)Lorg/checkerframework/com/google/common/hash/HashCode;
    .locals 1
    .param p0, "hash"    # J

    .line 174
    new-instance v0, Lorg/checkerframework/com/google/common/hash/HashCode$LongHashCode;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/hash/HashCode$LongHashCode;-><init>(J)V

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/checkerframework/com/google/common/hash/HashCode;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;

    .line 338
    nop

    .line 339
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 338
    :goto_0
    const-string v4, "input string (%s) must have at least 2 characters"

    invoke-static {v0, v4, p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 340
    nop

    .line 341
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/2addr v0, v3

    if-nez v0, :cond_1

    move v1, v2

    .line 340
    :cond_1
    const-string v0, "input string (%s) must have an even number of characters"

    invoke-static {v1, v0, p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 345
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/2addr v0, v3

    new-array v0, v0, [B

    .line 346
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 347
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/checkerframework/com/google/common/hash/HashCode;->decode(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    .line 348
    .local v2, "ch1":I
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/checkerframework/com/google/common/hash/HashCode;->decode(C)I

    move-result v3

    .line 349
    .local v3, "ch2":I
    div-int/lit8 v4, v1, 0x2

    add-int v5, v2, v3

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 346
    .end local v2    # "ch1":I
    .end local v3    # "ch2":I
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 351
    .end local v1    # "i":I
    :cond_2
    invoke-static {v0}, Lorg/checkerframework/com/google/common/hash/HashCode;->fromBytesNoCopy([B)Lorg/checkerframework/com/google/common/hash/HashCode;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public abstract asBytes()[B
.end method

.method public abstract asInt()I
.end method

.method public abstract asLong()J
.end method

.method public abstract bits()I
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 373
    instance-of v0, p1, Lorg/checkerframework/com/google/common/hash/HashCode;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 374
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/hash/HashCode;

    .line 375
    .local v0, "that":Lorg/checkerframework/com/google/common/hash/HashCode;
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/hash/HashCode;->bits()I

    move-result v2

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/hash/HashCode;->bits()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/hash/HashCode;->equalsSameBits(Lorg/checkerframework/com/google/common/hash/HashCode;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 377
    .end local v0    # "that":Lorg/checkerframework/com/google/common/hash/HashCode;
    :cond_1
    return v1
.end method

.method abstract equalsSameBits(Lorg/checkerframework/com/google/common/hash/HashCode;)Z
.end method

.method getBytesInternal()[B
    .locals 1

    .line 101
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/hash/HashCode;->asBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    .line 389
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/hash/HashCode;->bits()I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    .line 390
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/hash/HashCode;->asInt()I

    move-result v0

    return v0

    .line 393
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/hash/HashCode;->getBytesInternal()[B

    move-result-object v0

    .line 394
    .local v0, "bytes":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    .line 395
    .local v1, "val":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 396
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 398
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method public abstract padToLong()J
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 414
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/hash/HashCode;->getBytesInternal()[B

    move-result-object v0

    .line 415
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 416
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v0, v3

    .line 417
    .local v4, "b":B
    sget-object v5, Lorg/checkerframework/com/google/common/hash/HashCode;->hexDigits:[C

    shr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    and-int/lit8 v7, v4, 0xf

    aget-char v5, v5, v7

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 416
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeBytesTo([BII)I
    .locals 2
    .param p1, "dest"    # [B
    .param p2, "offset"    # I
    .param p3, "maxLength"    # I

    .line 87
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/hash/HashCode;->bits()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    filled-new-array {p3, v0}, [I

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/primitives/Ints;->min([I)I

    move-result p3

    .line 88
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 89
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/hash/HashCode;->writeBytesToImpl([BII)V

    .line 90
    return p3
.end method

.method abstract writeBytesToImpl([BII)V
.end method
