.class public abstract Lorg/checkerframework/common/value/util/NumberMath;
.super Ljava/lang/Object;
.source "NumberMath.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Number;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    .local p0, "this":Lorg/checkerframework/common/value/util/NumberMath;, "Lorg/checkerframework/common/value/util/NumberMath<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNumberMath(Ljava/lang/Number;)Lorg/checkerframework/common/value/util/NumberMath;
    .locals 3
    .param p0, "number"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            ")",
            "Lorg/checkerframework/common/value/util/NumberMath<",
            "*>;"
        }
    .end annotation

    .line 5
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lorg/checkerframework/common/value/util/ByteMath;

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/common/value/util/ByteMath;-><init>(B)V

    return-object v0

    .line 8
    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, Lorg/checkerframework/common/value/util/DoubleMath;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/common/value/util/DoubleMath;-><init>(D)V

    return-object v0

    .line 11
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 12
    new-instance v0, Lorg/checkerframework/common/value/util/FloatMath;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/common/value/util/FloatMath;-><init>(F)V

    return-object v0

    .line 14
    :cond_2
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 15
    new-instance v0, Lorg/checkerframework/common/value/util/IntegerMath;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/common/value/util/IntegerMath;-><init>(I)V

    return-object v0

    .line 17
    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 18
    new-instance v0, Lorg/checkerframework/common/value/util/LongMath;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/common/value/util/LongMath;-><init>(J)V

    return-object v0

    .line 20
    :cond_4
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_5

    .line 21
    new-instance v0, Lorg/checkerframework/common/value/util/ShortMath;

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/common/value/util/ShortMath;-><init>(I)V

    return-object v0

    .line 23
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isIntegralZero(Ljava/lang/Number;)Z
    .locals 7
    .param p0, "number"    # Ljava/lang/Number;

    .line 75
    instance-of v0, p0, Ljava/lang/Byte;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 77
    :cond_1
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 78
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    .line 79
    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 80
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1

    .line 81
    :cond_5
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_7

    .line 82
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    return v1

    .line 84
    :cond_7
    return v2
.end method


# virtual methods
.method public abstract bitwiseAnd(Ljava/lang/Number;)Ljava/lang/Number;
.end method

.method public abstract bitwiseComplement()Ljava/lang/Number;
.end method

.method public abstract bitwiseOr(Ljava/lang/Number;)Ljava/lang/Number;
.end method

.method public abstract bitwiseXor(Ljava/lang/Number;)Ljava/lang/Number;
.end method

.method public abstract divide(Ljava/lang/Number;)Ljava/lang/Number;
.end method

.method public abstract equalTo(Ljava/lang/Number;)Ljava/lang/Boolean;
.end method

.method public abstract greaterThan(Ljava/lang/Number;)Ljava/lang/Boolean;
.end method

.method public abstract greaterThanEq(Ljava/lang/Number;)Ljava/lang/Boolean;
.end method

.method public abstract lessThan(Ljava/lang/Number;)Ljava/lang/Boolean;
.end method

.method public abstract lessThanEq(Ljava/lang/Number;)Ljava/lang/Boolean;
.end method

.method public abstract minus(Ljava/lang/Number;)Ljava/lang/Number;
.end method

.method public abstract notEqualTo(Ljava/lang/Number;)Ljava/lang/Boolean;
.end method

.method public abstract plus(Ljava/lang/Number;)Ljava/lang/Number;
.end method

.method public abstract remainder(Ljava/lang/Number;)Ljava/lang/Number;
.end method

.method public abstract shiftLeft(Ljava/lang/Number;)Ljava/lang/Number;
.end method

.method public abstract signedShiftRight(Ljava/lang/Number;)Ljava/lang/Number;
.end method

.method public abstract times(Ljava/lang/Number;)Ljava/lang/Number;
.end method

.method public abstract unaryMinus()Ljava/lang/Number;
.end method

.method public abstract unaryPlus()Ljava/lang/Number;
.end method

.method public abstract unsignedShiftRight(Ljava/lang/Number;)Ljava/lang/Number;
.end method
