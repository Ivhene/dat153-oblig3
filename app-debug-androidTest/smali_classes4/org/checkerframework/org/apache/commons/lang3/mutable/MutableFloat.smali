.class public Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;
.super Ljava/lang/Number;
.source "MutableFloat.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/checkerframework/org/apache/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;",
        ">;",
        "Lorg/checkerframework/org/apache/commons/lang3/mutable/Mutable<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x158f131a2L


# instance fields
.field private value:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .param p1, "value"    # F

    .line 52
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 53
    iput p1, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .line 63
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 64
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 75
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 76
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 77
    return-void
.end method


# virtual methods
.method public add(F)V
    .locals 1
    .param p1, "operand"    # F

    .line 206
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 207
    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .line 217
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 218
    return-void
.end method

.method public addAndGet(F)F
    .locals 1
    .param p1, "operand"    # F

    .line 250
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 251
    return v0
.end method

.method public addAndGet(Ljava/lang/Number;)F
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .line 264
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 265
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 27
    check-cast p1, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;

    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->compareTo(Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;)I
    .locals 2
    .param p1, "other"    # Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;

    .line 406
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    iget v1, p1, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public decrement()V
    .locals 2

    .line 170
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 171
    return-void
.end method

.method public decrementAndGet()F
    .locals 2

    .line 194
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 195
    return v0
.end method

.method public doubleValue()D
    .locals 2

    .line 336
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 383
    instance-of v0, p1, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;

    iget v0, v0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 384
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 383
    :goto_0
    return v0
.end method

.method public floatValue()F
    .locals 1

    .line 326
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    return v0
.end method

.method public getAndAdd(F)F
    .locals 2
    .param p1, "operand"    # F

    .line 277
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 278
    .local v0, "last":F
    iget v1, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    add-float/2addr v1, p1

    iput v1, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 279
    return v0
.end method

.method public getAndAdd(Ljava/lang/Number;)F
    .locals 3
    .param p1, "operand"    # Ljava/lang/Number;

    .line 292
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 293
    .local v0, "last":F
    iget v1, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 294
    return v0
.end method

.method public getAndDecrement()F
    .locals 3

    .line 181
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 182
    .local v0, "last":F
    iget v1, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    iput v1, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 183
    return v0
.end method

.method public getAndIncrement()F
    .locals 3

    .line 147
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 148
    .local v0, "last":F
    iget v1, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    iput v1, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 149
    return v0
.end method

.method public getValue()Ljava/lang/Float;
    .locals 1

    .line 87
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->getValue()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 394
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public increment()V
    .locals 2

    .line 136
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 137
    return-void
.end method

.method public incrementAndGet()F
    .locals 2

    .line 160
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 161
    return v0
.end method

.method public intValue()I
    .locals 1

    .line 306
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    float-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .locals 1

    .line 126
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .locals 1

    .line 117
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 316
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public setValue(F)V
    .locals 0
    .param p1, "value"    # F

    .line 96
    iput p1, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 97
    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .line 107
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 108
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(F)V
    .locals 1
    .param p1, "operand"    # F

    .line 227
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 228
    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .line 238
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 239
    return-void
.end method

.method public toFloat()Ljava/lang/Float;
    .locals 1

    .line 346
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 417
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
