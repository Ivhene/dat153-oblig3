.class public final Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;
.super Ljava/lang/Number;
.source "UnsignedInteger.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

.field public static final ONE:Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

.field public static final ZERO:Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->ZERO:Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    .line 44
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->ONE:Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    .line 45
    const/4 v0, -0x1

    invoke-static {v0}, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->MAX_VALUE:Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "value"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 51
    and-int/lit8 v0, p1, -0x1

    iput v0, p0, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->value:I

    .line 52
    return-void
.end method

.method public static fromIntBits(I)Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;
    .locals 1
    .param p0, "bits"    # I

    .line 67
    new-instance v0, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;-><init>(I)V

    return-object v0
.end method

.method public static valueOf(J)Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;
    .locals 2
    .param p0, "value"    # J

    .line 75
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "value (%s) is outside the range for an unsigned integer value"

    invoke-static {v0, v1, p0, p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 79
    long-to-int v0, p0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 105
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->valueOf(Ljava/lang/String;I)Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I

    .line 116
    invoke-static {p0, p1}, Lorg/checkerframework/com/google/common/primitives/UnsignedInts;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/math/BigInteger;)Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;
    .locals 2
    .param p0, "value"    # Ljava/math/BigInteger;

    .line 89
    invoke-static {p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    nop

    .line 91
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 90
    :goto_0
    const-string v1, "value (%s) is outside the range for an unsigned integer value"

    invoke-static {v0, v1, p0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 2

    .line 209
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 41
    check-cast p1, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->compareTo(Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;)I
    .locals 2
    .param p1, "other"    # Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    .line 219
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->value:I

    iget v1, p1, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/primitives/UnsignedInts;->compare(II)I

    move-result v0

    return v0
.end method

.method public dividedBy(Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;)Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;
    .locals 2
    .param p1, "val"    # Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    .line 158
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    iget v1, v1, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/primitives/UnsignedInts;->divide(II)I

    move-result v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    move-result-object v0

    return-object v0
.end method

.method public doubleValue()D
    .locals 2

    .line 204
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 230
    instance-of v0, p1, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 231
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    .line 232
    .local v0, "other":Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;
    iget v2, p0, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->value:I

    iget v3, v0, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->value:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 234
    .end local v0    # "other":Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;
    :cond_1
    return v1
.end method

.method public floatValue()F
    .locals 2

    .line 195
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->longValue()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 225
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->value:I

    return v0
.end method

.method public intValue()I
    .locals 1

    .line 180
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->value:I

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 186
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {v0}, Lorg/checkerframework/com/google/common/primitives/UnsignedInts;->toLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public minus(Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;)Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;
    .locals 2
    .param p1, "val"    # Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    .line 136
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    iget v1, v1, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->value:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    move-result-object v0

    return-object v0
.end method

.method public mod(Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;)Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;
    .locals 2
    .param p1, "val"    # Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    .line 168
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    iget v1, v1, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/primitives/UnsignedInts;->remainder(II)I

    move-result v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    move-result-object v0

    return-object v0
.end method

.method public plus(Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;)Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;
    .locals 2
    .param p1, "val"    # Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    .line 126
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    iget v1, v1, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->value:I

    add-int/2addr v0, v1

    invoke-static {v0}, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    move-result-object v0

    return-object v0
.end method

.method public times(Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;)Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;
    .locals 2
    .param p1, "val"    # Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    .line 148
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    iget v1, v1, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->value:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->fromIntBits(I)Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 240
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1
    .param p1, "radix"    # I

    .line 249
    iget v0, p0, Lorg/checkerframework/com/google/common/primitives/UnsignedInteger;->value:I

    invoke-static {v0, p1}, Lorg/checkerframework/com/google/common/primitives/UnsignedInts;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
