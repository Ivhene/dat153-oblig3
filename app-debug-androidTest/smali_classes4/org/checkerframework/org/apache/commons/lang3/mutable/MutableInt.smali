.class public Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;
.super Ljava/lang/Number;
.source "MutableInt.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/checkerframework/org/apache/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;",
        ">;",
        "Lorg/checkerframework/org/apache/commons/lang3/mutable/Mutable<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x77401786b8L


# instance fields
.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 55
    iput p1, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .line 65
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 66
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 79
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 1
    .param p1, "operand"    # I

    .line 189
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 190
    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .line 200
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 201
    return-void
.end method

.method public addAndGet(I)I
    .locals 1
    .param p1, "operand"    # I

    .line 233
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 234
    return v0
.end method

.method public addAndGet(Ljava/lang/Number;)I
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .line 247
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 248
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->compareTo(Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;)I
    .locals 2
    .param p1, "other"    # Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;

    .line 368
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    iget v1, p1, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-static {v0, v1}, Lorg/checkerframework/org/apache/commons/lang3/math/NumberUtils;->compare(II)I

    move-result v0

    return v0
.end method

.method public decrement()V
    .locals 1

    .line 153
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 154
    return-void
.end method

.method public decrementAndGet()I
    .locals 1

    .line 177
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 178
    return v0
.end method

.method public doubleValue()D
    .locals 2

    .line 319
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 343
    instance-of v0, p1, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 344
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    move-object v2, p1

    check-cast v2, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 346
    :cond_1
    return v1
.end method

.method public floatValue()F
    .locals 1

    .line 309
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    int-to-float v0, v0

    return v0
.end method

.method public getAndAdd(I)I
    .locals 2
    .param p1, "operand"    # I

    .line 260
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 261
    .local v0, "last":I
    iget v1, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 262
    return v0
.end method

.method public getAndAdd(Ljava/lang/Number;)I
    .locals 3
    .param p1, "operand"    # Ljava/lang/Number;

    .line 275
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 276
    .local v0, "last":I
    iget v1, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 277
    return v0
.end method

.method public getAndDecrement()I
    .locals 2

    .line 164
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 165
    .local v0, "last":I
    iget v1, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 166
    return v0
.end method

.method public getAndIncrement()I
    .locals 2

    .line 130
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 131
    .local v0, "last":I
    iget v1, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 132
    return v0
.end method

.method public getValue()Ljava/lang/Integer;
    .locals 1

    .line 89
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->getValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 356
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    return v0
.end method

.method public increment()V
    .locals 1

    .line 119
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 120
    return-void
.end method

.method public incrementAndGet()I
    .locals 1

    .line 143
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 144
    return v0
.end method

.method public intValue()I
    .locals 1

    .line 289
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 299
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 98
    iput p1, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 99
    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .line 109
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 110
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(I)V
    .locals 1
    .param p1, "operand"    # I

    .line 210
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 211
    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .line 221
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 222
    return-void
.end method

.method public toInteger()Ljava/lang/Integer;
    .locals 1

    .line 329
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 379
    iget v0, p0, Lorg/checkerframework/org/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
