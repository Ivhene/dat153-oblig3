.class public Lorg/checkerframework/common/value/util/LongMath;
.super Lorg/checkerframework/common/value/util/NumberMath;
.source "LongMath.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/common/value/util/NumberMath<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field number:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "i"    # J

    .line 6
    invoke-direct {p0}, Lorg/checkerframework/common/value/util/NumberMath;-><init>()V

    .line 7
    iput-wide p1, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    .line 8
    return-void
.end method


# virtual methods
.method public bitwiseAnd(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4
    .param p1, "right"    # Ljava/lang/Number;

    .line 184
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    .line 185
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v2

    int-to-long v2, v2

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 187
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 188
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 190
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 191
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 193
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 194
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v2

    int-to-long v2, v2

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 196
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bitwiseComplement()Ljava/lang/Number;
    .locals 2

    .line 245
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    not-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bitwiseOr(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4
    .param p1, "right"    # Ljava/lang/Number;

    .line 218
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    .line 219
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 221
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 222
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 224
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 225
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 227
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 228
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 230
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bitwiseXor(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4
    .param p1, "right"    # Ljava/lang/Number;

    .line 201
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    .line 202
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v2

    int-to-long v2, v2

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 204
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 205
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-long v2, v2

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 207
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 208
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 210
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 211
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v2

    int-to-long v2, v2

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 213
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public divide(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4
    .param p1, "right"    # Ljava/lang/Number;

    .line 81
    invoke-static {p1}, Lorg/checkerframework/common/value/util/LongMath;->isIntegralZero(Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 85
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 87
    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 88
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    long-to-double v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 90
    :cond_2
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 91
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    long-to-float v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 93
    :cond_3
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 94
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 96
    :cond_4
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 97
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 99
    :cond_5
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_6

    .line 100
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 102
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equalTo(Ljava/lang/Number;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "right"    # Ljava/lang/Number;

    .line 250
    instance-of v0, p1, Ljava/lang/Byte;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 251
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 253
    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 254
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    long-to-double v3, v3

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    cmpl-double v0, v3, v5

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 256
    :cond_3
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 257
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    long-to-float v0, v3

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v3

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 259
    :cond_5
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 260
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 262
    :cond_7
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 263
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 265
    :cond_9
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_b

    .line 266
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    move v1, v2

    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 268
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public greaterThan(Ljava/lang/Number;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "right"    # Ljava/lang/Number;

    .line 296
    instance-of v0, p1, Ljava/lang/Byte;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 297
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 299
    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 300
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    long-to-double v3, v3

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    cmpl-double v0, v3, v5

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 302
    :cond_3
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 303
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    long-to-float v0, v3

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 305
    :cond_5
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 306
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-lez v0, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 308
    :cond_7
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 309
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 311
    :cond_9
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_b

    .line 312
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-lez v0, :cond_a

    goto :goto_5

    :cond_a
    move v1, v2

    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 314
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public greaterThanEq(Ljava/lang/Number;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "right"    # Ljava/lang/Number;

    .line 319
    instance-of v0, p1, Ljava/lang/Byte;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 320
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 322
    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 323
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    long-to-double v3, v3

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 325
    :cond_3
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 326
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    long-to-float v0, v3

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 328
    :cond_5
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 329
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 331
    :cond_7
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 332
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 334
    :cond_9
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_b

    .line 335
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_a

    goto :goto_5

    :cond_a
    move v1, v2

    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 337
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public lessThan(Ljava/lang/Number;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "right"    # Ljava/lang/Number;

    .line 342
    instance-of v0, p1, Ljava/lang/Byte;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 343
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 345
    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 346
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    long-to-double v3, v3

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    cmpg-double v0, v3, v5

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 348
    :cond_3
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 349
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    long-to-float v0, v3

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 351
    :cond_5
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 352
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gez v0, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 354
    :cond_7
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 355
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 357
    :cond_9
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_b

    .line 358
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gez v0, :cond_a

    goto :goto_5

    :cond_a
    move v1, v2

    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 360
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public lessThanEq(Ljava/lang/Number;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "right"    # Ljava/lang/Number;

    .line 365
    instance-of v0, p1, Ljava/lang/Byte;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 366
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 368
    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 369
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    long-to-double v3, v3

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    cmpg-double v0, v3, v5

    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 371
    :cond_3
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 372
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    long-to-float v0, v3

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 374
    :cond_5
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 375
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 377
    :cond_7
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 378
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 380
    :cond_9
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_b

    .line 381
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_a

    goto :goto_5

    :cond_a
    move v1, v2

    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 383
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public minus(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4
    .param p1, "right"    # Ljava/lang/Number;

    .line 35
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    .line 36
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 38
    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 39
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    long-to-double v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 41
    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 42
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    long-to-float v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 44
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 45
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 47
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 48
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 50
    :cond_4
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_5

    .line 51
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 53
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public notEqualTo(Ljava/lang/Number;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "right"    # Ljava/lang/Number;

    .line 273
    instance-of v0, p1, Ljava/lang/Byte;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 274
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 276
    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 277
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    long-to-double v3, v3

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 279
    :cond_3
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 280
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    long-to-float v0, v3

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v3

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 282
    :cond_5
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 283
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 285
    :cond_7
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 286
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 288
    :cond_9
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_b

    .line 289
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    move v1, v2

    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 291
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public plus(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4
    .param p1, "right"    # Ljava/lang/Number;

    .line 12
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    .line 13
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 15
    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 16
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    long-to-double v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 18
    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 19
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    long-to-float v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 21
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 22
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 24
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 25
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 27
    :cond_4
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_5

    .line 28
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 30
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remainder(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4
    .param p1, "right"    # Ljava/lang/Number;

    .line 107
    invoke-static {p1}, Lorg/checkerframework/common/value/util/LongMath;->isIntegralZero(Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x0

    return-object v0

    .line 110
    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 111
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v2

    int-to-long v2, v2

    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 113
    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 114
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    long-to-double v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    rem-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 116
    :cond_2
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 117
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    long-to-float v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    rem-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 119
    :cond_3
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 120
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-long v2, v2

    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 122
    :cond_4
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 123
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 125
    :cond_5
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_6

    .line 126
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v2

    int-to-long v2, v2

    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 128
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public shiftLeft(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4
    .param p1, "right"    # Ljava/lang/Number;

    .line 133
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    .line 134
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v2

    shl-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 136
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 137
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    shl-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 139
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 140
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    long-to-int v2, v2

    shl-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 142
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 143
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v2

    shl-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 145
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public signedShiftRight(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4
    .param p1, "right"    # Ljava/lang/Number;

    .line 150
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    .line 151
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v2

    shr-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 154
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    shr-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 156
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 157
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    long-to-int v2, v2

    shr-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 159
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 160
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v2

    shr-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 162
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public times(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4
    .param p1, "right"    # Ljava/lang/Number;

    .line 58
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    .line 59
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 62
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    long-to-double v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 64
    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 65
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    long-to-float v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 67
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 68
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 70
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 71
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 73
    :cond_4
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_5

    .line 74
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 76
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public unaryMinus()Ljava/lang/Number;
    .locals 2

    .line 240
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public unaryPlus()Ljava/lang/Number;
    .locals 2

    .line 235
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public unsignedShiftRight(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4
    .param p1, "right"    # Ljava/lang/Number;

    .line 167
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    .line 168
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v2

    ushr-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 170
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 171
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    ushr-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 173
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 174
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    long-to-int v2, v2

    ushr-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 176
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 177
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/LongMath;->number:J

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v2

    ushr-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 179
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
