.class public Lorg/checkerframework/common/value/util/FloatMath;
.super Lorg/checkerframework/common/value/util/NumberMath;
.source "FloatMath.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/common/value/util/NumberMath<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field number:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "i"    # F

    .line 6
    invoke-direct {p0}, Lorg/checkerframework/common/value/util/NumberMath;-><init>()V

    .line 7
    iput p1, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    .line 8
    return-void
.end method


# virtual methods
.method public bitwiseAnd(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 1
    .param p1, "right"    # Ljava/lang/Number;

    .line 142
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bitwiseComplement()Ljava/lang/Number;
    .locals 1

    .line 167
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bitwiseOr(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 1
    .param p1, "right"    # Ljava/lang/Number;

    .line 152
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bitwiseXor(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 1
    .param p1, "right"    # Ljava/lang/Number;

    .line 147
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public divide(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4
    .param p1, "right"    # Ljava/lang/Number;

    .line 81
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    .line 82
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 85
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    float-to-double v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 87
    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 88
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 90
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 91
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 93
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 94
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 96
    :cond_4
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_5

    .line 97
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 99
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equalTo(Ljava/lang/Number;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "right"    # Ljava/lang/Number;

    .line 172
    instance-of v0, p1, Ljava/lang/Byte;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 173
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 175
    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 176
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    float-to-double v3, v0

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

    .line 178
    :cond_3
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 179
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

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

    .line 181
    :cond_5
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 182
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 184
    :cond_7
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 185
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    long-to-float v3, v3

    cmpl-float v0, v0, v3

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 187
    :cond_9
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_b

    .line 188
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    move v1, v2

    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 190
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public greaterThan(Ljava/lang/Number;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "right"    # Ljava/lang/Number;

    .line 218
    instance-of v0, p1, Ljava/lang/Byte;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 219
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 221
    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 222
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    float-to-double v3, v0

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

    .line 224
    :cond_3
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 225
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

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

    .line 227
    :cond_5
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 228
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 230
    :cond_7
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 231
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    long-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 233
    :cond_9
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_b

    .line 234
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_a

    goto :goto_5

    :cond_a
    move v1, v2

    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 236
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public greaterThanEq(Ljava/lang/Number;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "right"    # Ljava/lang/Number;

    .line 241
    instance-of v0, p1, Ljava/lang/Byte;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 242
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 244
    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 245
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    float-to-double v3, v0

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

    .line 247
    :cond_3
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 248
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

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

    .line 250
    :cond_5
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 251
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 253
    :cond_7
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 254
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    long-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 256
    :cond_9
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_b

    .line 257
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_a

    goto :goto_5

    :cond_a
    move v1, v2

    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 259
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public lessThan(Ljava/lang/Number;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "right"    # Ljava/lang/Number;

    .line 264
    instance-of v0, p1, Ljava/lang/Byte;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 265
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 267
    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 268
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    float-to-double v3, v0

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

    .line 270
    :cond_3
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 271
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

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

    .line 273
    :cond_5
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 274
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 276
    :cond_7
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 277
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    long-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 279
    :cond_9
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_b

    .line 280
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_a

    goto :goto_5

    :cond_a
    move v1, v2

    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 282
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public lessThanEq(Ljava/lang/Number;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "right"    # Ljava/lang/Number;

    .line 287
    instance-of v0, p1, Ljava/lang/Byte;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 288
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 290
    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 291
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    float-to-double v3, v0

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

    .line 293
    :cond_3
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 294
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

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

    .line 296
    :cond_5
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 297
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 299
    :cond_7
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 300
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    long-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 302
    :cond_9
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_b

    .line 303
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_a

    goto :goto_5

    :cond_a
    move v1, v2

    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 305
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
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 38
    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 39
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    float-to-double v0, v0

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
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

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
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 47
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 48
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    long-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 50
    :cond_4
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_5

    .line 51
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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

    .line 195
    instance-of v0, p1, Ljava/lang/Byte;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 196
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 198
    :cond_1
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3

    .line 199
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    float-to-double v3, v0

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

    .line 201
    :cond_3
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 202
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

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

    .line 204
    :cond_5
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 205
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 207
    :cond_7
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 208
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    long-to-float v3, v3

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 210
    :cond_9
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_b

    .line 211
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    move v1, v2

    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 213
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
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 15
    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 16
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    float-to-double v0, v0

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
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

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
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 24
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 25
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    long-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 27
    :cond_4
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_5

    .line 28
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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

    .line 104
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    .line 105
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    int-to-float v1, v1

    rem-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 107
    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 108
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    float-to-double v0, v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    rem-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 110
    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 111
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    rem-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 113
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 114
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-float v1, v1

    rem-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 116
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 117
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    long-to-float v1, v1

    rem-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 119
    :cond_4
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_5

    .line 120
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    int-to-float v1, v1

    rem-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 122
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public shiftLeft(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 1
    .param p1, "right"    # Ljava/lang/Number;

    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public signedShiftRight(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 1
    .param p1, "right"    # Ljava/lang/Number;

    .line 132
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
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 62
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    float-to-double v0, v0

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
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

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
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 70
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 71
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 73
    :cond_4
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_5

    .line 74
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 76
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public unaryMinus()Ljava/lang/Number;
    .locals 1

    .line 162
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    neg-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public unaryPlus()Ljava/lang/Number;
    .locals 1

    .line 157
    iget v0, p0, Lorg/checkerframework/common/value/util/FloatMath;->number:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public unsignedShiftRight(Ljava/lang/Number;)Ljava/lang/Number;
    .locals 1
    .param p1, "right"    # Ljava/lang/Number;

    .line 137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
