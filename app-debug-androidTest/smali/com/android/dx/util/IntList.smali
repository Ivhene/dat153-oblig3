.class public final Lcom/android/dx/util/IntList;
.super Lcom/android/dx/util/MutabilityControl;
.source "IntList.java"


# static fields
.field public static final EMPTY:Lcom/android/dx/util/IntList;


# instance fields
.field private size:I

.field private sorted:Z

.field private values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/android/dx/util/IntList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/dx/util/IntList;-><init>(I)V

    sput-object v0, Lcom/android/dx/util/IntList;->EMPTY:Lcom/android/dx/util/IntList;

    .line 38
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->setImmutable()V

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/dx/util/IntList;-><init>(I)V

    .line 76
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "initialCapacity"    # I

    .line 84
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/dx/util/MutabilityControl;-><init>(Z)V

    .line 87
    :try_start_0
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/android/dx/util/IntList;->values:[I
    :try_end_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    nop

    .line 93
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/dx/util/IntList;->size:I

    .line 94
    iput-boolean v0, p0, Lcom/android/dx/util/IntList;->sorted:Z

    .line 95
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 90
    .local v0, "ex":Ljava/lang/NegativeArraySizeException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "size < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private growIfNeeded()V
    .locals 4

    .line 272
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    iget-object v1, p0, Lcom/android/dx/util/IntList;->values:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 274
    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xa

    new-array v2, v2, [I

    .line 275
    .local v2, "newv":[I
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    iput-object v2, p0, Lcom/android/dx/util/IntList;->values:[I

    .line 278
    .end local v2    # "newv":[I
    :cond_0
    return-void
.end method

.method public static makeImmutable(I)Lcom/android/dx/util/IntList;
    .locals 2
    .param p0, "value"    # I

    .line 47
    new-instance v0, Lcom/android/dx/util/IntList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/dx/util/IntList;-><init>(I)V

    .line 49
    .local v0, "result":Lcom/android/dx/util/IntList;
    invoke-virtual {v0, p0}, Lcom/android/dx/util/IntList;->add(I)V

    .line 50
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->setImmutable()V

    .line 52
    return-object v0
.end method

.method public static makeImmutable(II)Lcom/android/dx/util/IntList;
    .locals 2
    .param p0, "value0"    # I
    .param p1, "value1"    # I

    .line 62
    new-instance v0, Lcom/android/dx/util/IntList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/dx/util/IntList;-><init>(I)V

    .line 64
    .local v0, "result":Lcom/android/dx/util/IntList;
    invoke-virtual {v0, p0}, Lcom/android/dx/util/IntList;->add(I)V

    .line 65
    invoke-virtual {v0, p1}, Lcom/android/dx/util/IntList;->add(I)V

    .line 66
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->setImmutable()V

    .line 68
    return-object v0
.end method


# virtual methods
.method public add(I)V
    .locals 3
    .param p1, "value"    # I

    .line 215
    invoke-virtual {p0}, Lcom/android/dx/util/IntList;->throwIfImmutable()V

    .line 217
    invoke-direct {p0}, Lcom/android/dx/util/IntList;->growIfNeeded()V

    .line 219
    iget-object v0, p0, Lcom/android/dx/util/IntList;->values:[I

    iget v1, p0, Lcom/android/dx/util/IntList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/dx/util/IntList;->size:I

    aput p1, v0, v1

    .line 221
    iget-boolean v1, p0, Lcom/android/dx/util/IntList;->sorted:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-le v2, v1, :cond_1

    .line 222
    add-int/lit8 v2, v2, -0x2

    aget v0, v0, v2

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/dx/util/IntList;->sorted:Z

    .line 224
    :cond_1
    return-void
.end method

.method public binarysearch(I)I
    .locals 5
    .param p1, "value"    # I

    .line 393
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    .line 395
    .local v0, "sz":I
    iget-boolean v1, p0, Lcom/android/dx/util/IntList;->sorted:Z

    if-nez v1, :cond_2

    .line 397
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 398
    iget-object v2, p0, Lcom/android/dx/util/IntList;->values:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 399
    return v1

    .line 397
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    .end local v1    # "i":I
    :cond_1
    neg-int v1, v0

    return v1

    .line 413
    :cond_2
    const/4 v1, -0x1

    .line 414
    .local v1, "min":I
    move v2, v0

    .line 416
    .local v2, "max":I
    :goto_1
    add-int/lit8 v3, v1, 0x1

    if-le v2, v3, :cond_4

    .line 422
    sub-int v3, v2, v1

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    .line 423
    .local v3, "guessIdx":I
    iget-object v4, p0, Lcom/android/dx/util/IntList;->values:[I

    aget v4, v4, v3

    .line 425
    .local v4, "guess":I
    if-gt p1, v4, :cond_3

    .line 426
    move v2, v3

    goto :goto_2

    .line 428
    :cond_3
    move v1, v3

    .line 430
    .end local v3    # "guessIdx":I
    .end local v4    # "guess":I
    :goto_2
    goto :goto_1

    .line 432
    :cond_4
    if-eq v2, v0, :cond_6

    .line 433
    iget-object v3, p0, Lcom/android/dx/util/IntList;->values:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_5

    move v3, v2

    goto :goto_3

    :cond_5
    neg-int v3, v2

    add-int/lit8 v3, v3, -0x1

    :goto_3
    return v3

    .line 435
    :cond_6
    neg-int v3, v0

    add-int/lit8 v3, v3, -0x1

    return v3
.end method

.method public contains(I)Z
    .locals 1
    .param p1, "value"    # I

    .line 451
    invoke-virtual {p0, p1}, Lcom/android/dx/util/IntList;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 112
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 113
    return v0

    .line 116
    :cond_0
    instance-of v1, p1, Lcom/android/dx/util/IntList;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 117
    return v2

    .line 120
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/dx/util/IntList;

    .line 122
    .local v1, "otherList":Lcom/android/dx/util/IntList;
    iget-boolean v3, p0, Lcom/android/dx/util/IntList;->sorted:Z

    iget-boolean v4, v1, Lcom/android/dx/util/IntList;->sorted:Z

    if-eq v3, v4, :cond_2

    .line 123
    return v2

    .line 126
    :cond_2
    iget v3, p0, Lcom/android/dx/util/IntList;->size:I

    iget v4, v1, Lcom/android/dx/util/IntList;->size:I

    if-eq v3, v4, :cond_3

    .line 127
    return v2

    .line 130
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/android/dx/util/IntList;->size:I

    if-ge v3, v4, :cond_5

    .line 131
    iget-object v4, p0, Lcom/android/dx/util/IntList;->values:[I

    aget v4, v4, v3

    iget-object v5, v1, Lcom/android/dx/util/IntList;->values:[I

    aget v5, v5, v3

    if-eq v4, v5, :cond_4

    .line 132
    return v2

    .line 130
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    .end local v3    # "i":I
    :cond_5
    return v0
.end method

.method public get(I)I
    .locals 3
    .param p1, "n"    # I

    .line 172
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    if-ge p1, v0, :cond_0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/util/IntList;->values:[I

    aget v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 178
    :catch_0
    move-exception v0

    .line 180
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "n < 0"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    .end local v0    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n >= size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 4

    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/dx/util/IntList;->size:I

    if-ge v1, v2, :cond_0

    .line 103
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/android/dx/util/IntList;->values:[I

    aget v3, v3, v1

    add-int v0, v2, v3

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public indexOf(I)I
    .locals 2
    .param p1, "value"    # I

    .line 375
    invoke-virtual {p0, p1}, Lcom/android/dx/util/IntList;->binarysearch(I)I

    move-result v0

    .line 377
    .local v0, "ret":I
    if-ltz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public insert(II)V
    .locals 4
    .param p1, "n"    # I
    .param p2, "value"    # I

    .line 236
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    if-gt p1, v0, :cond_3

    .line 240
    invoke-direct {p0}, Lcom/android/dx/util/IntList;->growIfNeeded()V

    .line 242
    iget-object v0, p0, Lcom/android/dx/util/IntList;->values:[I

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/android/dx/util/IntList;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iget-object v0, p0, Lcom/android/dx/util/IntList;->values:[I

    aput p2, v0, p1

    .line 244
    iget v1, p0, Lcom/android/dx/util/IntList;->size:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/dx/util/IntList;->size:I

    .line 246
    iget-boolean v3, p0, Lcom/android/dx/util/IntList;->sorted:Z

    if-eqz v3, :cond_2

    if-eqz p1, :cond_0

    add-int/lit8 v3, p1, -0x1

    aget v3, v0, v3

    if-le p2, v3, :cond_2

    :cond_0
    sub-int/2addr v1, v2

    if-eq p1, v1, :cond_1

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    if-ge p2, v0, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/dx/util/IntList;->sorted:Z

    .line 249
    return-void

    .line 237
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n > size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mutableCopy()Lcom/android/dx/util/IntList;
    .locals 4

    .line 344
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    .line 345
    .local v0, "sz":I
    new-instance v1, Lcom/android/dx/util/IntList;

    invoke-direct {v1, v0}, Lcom/android/dx/util/IntList;-><init>(I)V

    .line 347
    .local v1, "result":Lcom/android/dx/util/IntList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 348
    iget-object v3, p0, Lcom/android/dx/util/IntList;->values:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Lcom/android/dx/util/IntList;->add(I)V

    .line 347
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 351
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public pop()I
    .locals 2

    .line 297
    invoke-virtual {p0}, Lcom/android/dx/util/IntList;->throwIfImmutable()V

    .line 301
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v0

    .line 302
    .local v0, "result":I
    iget v1, p0, Lcom/android/dx/util/IntList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/dx/util/IntList;->size:I

    .line 304
    return v0
.end method

.method public pop(I)V
    .locals 1
    .param p1, "n"    # I

    .line 314
    invoke-virtual {p0}, Lcom/android/dx/util/IntList;->throwIfImmutable()V

    .line 316
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/dx/util/IntList;->size:I

    .line 317
    return-void
.end method

.method public removeIndex(I)V
    .locals 3
    .param p1, "n"    # I

    .line 258
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    if-ge p1, v0, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/dx/util/IntList;->values:[I

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/dx/util/IntList;->size:I

    .line 266
    return-void

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n >= size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(II)V
    .locals 3
    .param p1, "n"    # I
    .param p2, "value"    # I

    .line 191
    invoke-virtual {p0}, Lcom/android/dx/util/IntList;->throwIfImmutable()V

    .line 193
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    if-ge p1, v0, :cond_1

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/util/IntList;->values:[I

    aput p2, v0, p1

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dx/util/IntList;->sorted:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 202
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    if-ltz p1, :cond_0

    .line 206
    .end local v0    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_0
    return-void

    .line 203
    .restart local v0    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "n < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    .end local v0    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n >= size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shrink(I)V
    .locals 2
    .param p1, "newSize"    # I

    .line 325
    if-ltz p1, :cond_1

    .line 329
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    if-gt p1, v0, :cond_0

    .line 333
    invoke-virtual {p0}, Lcom/android/dx/util/IntList;->throwIfImmutable()V

    .line 335
    iput p1, p0, Lcom/android/dx/util/IntList;->size:I

    .line 336
    return-void

    .line 330
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newSize > size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newSize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    return v0
.end method

.method public sort()V
    .locals 3

    .line 358
    invoke-virtual {p0}, Lcom/android/dx/util/IntList;->throwIfImmutable()V

    .line 360
    iget-boolean v0, p0, Lcom/android/dx/util/IntList;->sorted:Z

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/dx/util/IntList;->values:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/dx/util/IntList;->size:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dx/util/IntList;->sorted:Z

    .line 364
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/dx/util/IntList;->size:I

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 144
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/dx/util/IntList;->size:I

    if-ge v1, v2, :cond_1

    .line 147
    if-eqz v1, :cond_0

    .line 148
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/android/dx/util/IntList;->values:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "i":I
    :cond_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public top()I
    .locals 1

    .line 287
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v0

    return v0
.end method
