.class public Lorg/checkerframework/common/value/util/DoubleMath;
.super Lorg/checkerframework/common/value/util/NumberMath;
.source "DoubleMath.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/common/value/util/NumberMath<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field number:D


# direct methods
.method public constructor <init>(D)V
    .locals 0
    .param p1, "i"    # D

    .line 6
    invoke-direct {p0}, Lorg/checkerframework/common/value/util/NumberMath;-><init>()V

    .line 7
    iput-wide p1, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

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
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 85
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

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
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v2

    float-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 90
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 91
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 93
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 94
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 96
    :cond_4
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_5

    .line 97
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v0

    int-to-double v5, v0

    cmpl-double v0, v3, v5

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-double v5, v0

    cmpl-double v0, v3, v5

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-double v5, v0

    cmpl-double v0, v3, v5

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    long-to-double v5, v5

    cmpl-double v0, v3, v5

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v0

    int-to-double v5, v0

    cmpl-double v0, v3, v5

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v0

    int-to-double v5, v0

    cmpl-double v0, v3, v5

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-double v5, v0

    cmpl-double v0, v3, v5

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-double v5, v0

    cmpl-double v0, v3, v5

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    long-to-double v5, v5

    cmpl-double v0, v3, v5

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v0

    int-to-double v5, v0

    cmpl-double v0, v3, v5

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v0

    int-to-double v5, v0

    cmpl-double v0, v3, v5

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-double v5, v0

    cmpl-double v0, v3, v5

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-double v5, v0

    cmpl-double v0, v3, v5

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    long-to-double v5, v5

    cmpl-double v0, v3, v5

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v0

    int-to-double v5, v0

    cmpl-double v0, v3, v5

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v0

    int-to-double v5, v0

    cmpg-double v0, v3, v5

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-double v5, v0

    cmpg-double v0, v3, v5

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-double v5, v0

    cmpg-double v0, v3, v5

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    long-to-double v5, v5

    cmpg-double v0, v3, v5

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v0

    int-to-double v5, v0

    cmpg-double v0, v3, v5

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v0

    int-to-double v5, v0

    cmpg-double v0, v3, v5

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-double v5, v0

    cmpg-double v0, v3, v5

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-double v5, v0

    cmpg-double v0, v3, v5

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    long-to-double v5, v5

    cmpg-double v0, v3, v5

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v0

    int-to-double v5, v0

    cmpg-double v0, v3, v5

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
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v2

    int-to-double v2, v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 38
    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 39
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

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
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v2

    float-to-double v2, v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 44
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 45
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-double v2, v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 47
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 48
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 50
    :cond_4
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_5

    .line 51
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v2

    int-to-double v2, v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v0

    int-to-double v5, v0

    cmpl-double v0, v3, v5

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-double v5, v0

    cmpl-double v0, v3, v5

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-double v5, v0

    cmpl-double v0, v3, v5

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    long-to-double v5, v5

    cmpl-double v0, v3, v5

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
    iget-wide v3, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v0

    int-to-double v5, v0

    cmpl-double v0, v3, v5

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
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 15
    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 16
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

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
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v2

    float-to-double v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 21
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 22
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 24
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 25
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 27
    :cond_4
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_5

    .line 28
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

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
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v2

    int-to-double v2, v2

    rem-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 107
    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 108
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

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
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v2

    float-to-double v2, v2

    rem-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 113
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 114
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-double v2, v2

    rem-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 116
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 117
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    rem-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 119
    :cond_4
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_5

    .line 120
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v2

    int-to-double v2, v2

    rem-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

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
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 62
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

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
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 67
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 68
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 70
    :cond_3
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 71
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 73
    :cond_4
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_5

    .line 74
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

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

    .line 162
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public unaryPlus()Ljava/lang/Number;
    .locals 2

    .line 157
    iget-wide v0, p0, Lorg/checkerframework/common/value/util/DoubleMath;->number:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

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
