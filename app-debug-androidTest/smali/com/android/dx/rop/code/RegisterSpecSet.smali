.class public final Lcom/android/dx/rop/code/RegisterSpecSet;
.super Lcom/android/dx/util/MutabilityControl;
.source "RegisterSpecSet.java"


# static fields
.field public static final EMPTY:Lcom/android/dx/rop/code/RegisterSpecSet;


# instance fields
.field private size:I

.field private final specs:[Lcom/android/dx/rop/code/RegisterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/android/dx/rop/code/RegisterSpecSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    sput-object v0, Lcom/android/dx/rop/code/RegisterSpecSet;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecSet;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxSize"    # I

    .line 47
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/dx/util/MutabilityControl;-><init>(Z)V

    .line 49
    new-array v1, p1, [Lcom/android/dx/rop/code/RegisterSpec;

    iput-object v1, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    .line 50
    iput v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->size:I

    .line 51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 56
    instance-of v0, p1, Lcom/android/dx/rop/code/RegisterSpecSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 57
    return v1

    .line 60
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/dx/rop/code/RegisterSpecSet;

    .line 61
    .local v0, "otherSet":Lcom/android/dx/rop/code/RegisterSpecSet;
    iget-object v2, v0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    .line 62
    .local v2, "otherSpecs":[Lcom/android/dx/rop/code/RegisterSpec;
    iget-object v3, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    array-length v3, v3

    .line 64
    .local v3, "len":I
    array-length v4, v2

    if-ne v3, v4, :cond_6

    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecSet;->size()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_3

    .line 68
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_5

    .line 69
    iget-object v5, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    aget-object v5, v5, v4

    .line 70
    .local v5, "s1":Lcom/android/dx/rop/code/RegisterSpec;
    aget-object v6, v2, v4

    .line 72
    .local v6, "s2":Lcom/android/dx/rop/code/RegisterSpec;
    if-ne v5, v6, :cond_2

    .line 73
    goto :goto_1

    .line 76
    :cond_2
    if-eqz v5, :cond_4

    invoke-virtual {v5, v6}, Lcom/android/dx/rop/code/RegisterSpec;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    .line 68
    .end local v5    # "s1":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v6    # "s2":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 77
    .restart local v5    # "s1":Lcom/android/dx/rop/code/RegisterSpec;
    .restart local v6    # "s2":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_4
    :goto_2
    return v1

    .line 81
    .end local v4    # "i":I
    .end local v5    # "s1":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v6    # "s2":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_5
    const/4 v1, 0x1

    return v1

    .line 65
    :cond_6
    :goto_3
    return v1
.end method

.method public findMatchingLocal(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;
    .locals 4
    .param p1, "spec"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 198
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    array-length v0, v0

    .line 200
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "reg":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 201
    iget-object v2, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    aget-object v2, v2, v1

    .line 203
    .local v2, "s":Lcom/android/dx/rop/code/RegisterSpec;
    if-nez v2, :cond_0

    .line 204
    goto :goto_1

    .line 207
    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/dx/rop/code/RegisterSpec;->matchesVariable(Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    return-object v2

    .line 200
    .end local v2    # "s":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .end local v1    # "reg":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public get(I)Lcom/android/dx/rop/code/RegisterSpec;
    .locals 3
    .param p1, "reg"    # I

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 169
    :catch_0
    move-exception v0

    .line 171
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bogus reg"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public get(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;
    .locals 1
    .param p1, "spec"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 185
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSize()I
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    array-length v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 87
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    array-length v0, v0

    .line 88
    .local v0, "len":I
    const/4 v1, 0x0

    .line 90
    .local v1, "hash":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 91
    iget-object v3, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    aget-object v3, v3, v2

    .line 92
    .local v3, "spec":Lcom/android/dx/rop/code/RegisterSpec;
    if-nez v3, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->hashCode()I

    move-result v4

    .line 93
    .local v4, "oneHash":I
    :goto_1
    mul-int/lit8 v5, v1, 0x1f

    add-int v1, v5, v4

    .line 90
    .end local v3    # "spec":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v4    # "oneHash":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method public intersect(Lcom/android/dx/rop/code/RegisterSpecSet;Z)V
    .locals 7
    .param p1, "other"    # Lcom/android/dx/rop/code/RegisterSpecSet;
    .param p2, "localPrimary"    # Z

    .line 321
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecSet;->throwIfImmutable()V

    .line 323
    iget-object v0, p1, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    .line 324
    .local v0, "otherSpecs":[Lcom/android/dx/rop/code/RegisterSpec;
    iget-object v1, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    array-length v1, v1

    .line 325
    .local v1, "thisLen":I
    array-length v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 327
    .local v2, "len":I
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->size:I

    .line 329
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 330
    iget-object v4, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    aget-object v4, v4, v3

    .line 332
    .local v4, "spec":Lcom/android/dx/rop/code/RegisterSpec;
    if-nez v4, :cond_0

    .line 333
    goto :goto_1

    .line 336
    :cond_0
    aget-object v5, v0, v3

    .line 337
    invoke-virtual {v4, v5, p2}, Lcom/android/dx/rop/code/RegisterSpec;->intersect(Lcom/android/dx/rop/code/RegisterSpec;Z)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    .line 338
    .local v5, "intersection":Lcom/android/dx/rop/code/RegisterSpec;
    if-eq v5, v4, :cond_1

    .line 339
    iget-object v6, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    aput-object v5, v6, v3

    .line 329
    .end local v4    # "spec":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v5    # "intersection":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 343
    .end local v3    # "i":I
    :cond_2
    move v3, v2

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v1, :cond_3

    .line 344
    iget-object v4, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    .line 343
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 346
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method public localItemToSpec(Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;
    .locals 4
    .param p1, "local"    # Lcom/android/dx/rop/code/LocalItem;

    .line 223
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    array-length v0, v0

    .line 225
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "reg":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 226
    iget-object v2, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    aget-object v2, v2, v1

    .line 228
    .local v2, "spec":Lcom/android/dx/rop/code/RegisterSpec;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    return-object v2

    .line 225
    .end local v2    # "spec":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v1    # "reg":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public mutableCopy()Lcom/android/dx/rop/code/RegisterSpecSet;
    .locals 4

    .line 382
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    array-length v0, v0

    .line 383
    .local v0, "len":I
    new-instance v1, Lcom/android/dx/rop/code/RegisterSpecSet;

    invoke-direct {v1, v0}, Lcom/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    .line 385
    .local v1, "copy":Lcom/android/dx/rop/code/RegisterSpecSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 386
    iget-object v3, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    aget-object v3, v3, v2

    .line 387
    .local v3, "spec":Lcom/android/dx/rop/code/RegisterSpec;
    if-eqz v3, :cond_0

    .line 388
    invoke-virtual {v1, v3}, Lcom/android/dx/rop/code/RegisterSpecSet;->put(Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 385
    .end local v3    # "spec":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 392
    .end local v2    # "i":I
    :cond_1
    iget v2, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->size:I

    iput v2, v1, Lcom/android/dx/rop/code/RegisterSpecSet;->size:I

    .line 394
    return-object v1
.end method

.method public put(Lcom/android/dx/rop/code/RegisterSpec;)V
    .locals 6
    .param p1, "spec"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 263
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecSet;->throwIfImmutable()V

    .line 265
    if-eqz p1, :cond_2

    .line 269
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->size:I

    .line 272
    :try_start_0
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 273
    .local v0, "reg":I
    iget-object v1, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    aput-object p1, v1, v0

    .line 275
    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lez v0, :cond_0

    .line 276
    add-int/lit8 v4, v0, -0x1

    .line 277
    .local v4, "prevReg":I
    aget-object v1, v1, v4

    .line 278
    .local v1, "prevSpec":Lcom/android/dx/rop/code/RegisterSpec;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 279
    iget-object v5, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    aput-object v2, v5, v4

    .line 283
    .end local v1    # "prevSpec":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v4    # "prevReg":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 284
    iget-object v1, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    add-int/lit8 v3, v0, 0x1

    aput-object v2, v1, v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .end local v0    # "reg":I
    :cond_1
    nop

    .line 290
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 288
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "spec.getReg() out of range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 266
    .end local v0    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spec == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putAll(Lcom/android/dx/rop/code/RegisterSpecSet;)V
    .locals 3
    .param p1, "set"    # Lcom/android/dx/rop/code/RegisterSpecSet;

    .line 298
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpecSet;->getMaxSize()I

    move-result v0

    .line 300
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 301
    invoke-virtual {p1, v1}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 302
    .local v2, "spec":Lcom/android/dx/rop/code/RegisterSpec;
    if-eqz v2, :cond_0

    .line 303
    invoke-virtual {p0, v2}, Lcom/android/dx/rop/code/RegisterSpecSet;->put(Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 300
    .end local v2    # "spec":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public remove(Lcom/android/dx/rop/code/RegisterSpec;)V
    .locals 3
    .param p1, "toRemove"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 245
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->size:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    nop

    .line 250
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 248
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bogus reg"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public size()I
    .locals 4

    .line 141
    iget v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->size:I

    .line 143
    .local v0, "result":I
    if-gez v0, :cond_2

    .line 144
    iget-object v1, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    array-length v1, v1

    .line 146
    .local v1, "len":I
    const/4 v0, 0x0

    .line 147
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 148
    iget-object v3, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 149
    add-int/lit8 v0, v0, 0x1

    .line 147
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    .end local v2    # "i":I
    :cond_1
    iput v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->size:I

    .line 156
    .end local v1    # "len":I
    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 102
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    array-length v0, v0

    .line 103
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x19

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    const/4 v2, 0x0

    .line 108
    .local v2, "any":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 109
    iget-object v4, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    aget-object v4, v4, v3

    .line 110
    .local v4, "spec":Lcom/android/dx/rop/code/RegisterSpec;
    if-eqz v4, :cond_1

    .line 111
    if-eqz v2, :cond_0

    .line 112
    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 114
    :cond_0
    const/4 v2, 0x1

    .line 116
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .end local v4    # "spec":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    .end local v3    # "i":I
    :cond_2
    const/16 v3, 0x7d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public withOffset(I)Lcom/android/dx/rop/code/RegisterSpecSet;
    .locals 5
    .param p1, "delta"    # I

    .line 357
    iget-object v0, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    array-length v0, v0

    .line 358
    .local v0, "len":I
    new-instance v1, Lcom/android/dx/rop/code/RegisterSpecSet;

    add-int v2, v0, p1

    invoke-direct {v1, v2}, Lcom/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    .line 360
    .local v1, "result":Lcom/android/dx/rop/code/RegisterSpecSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 361
    iget-object v3, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->specs:[Lcom/android/dx/rop/code/RegisterSpec;

    aget-object v3, v3, v2

    .line 362
    .local v3, "spec":Lcom/android/dx/rop/code/RegisterSpec;
    if-eqz v3, :cond_0

    .line 363
    invoke-virtual {v3, p1}, Lcom/android/dx/rop/code/RegisterSpec;->withOffset(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/dx/rop/code/RegisterSpecSet;->put(Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 360
    .end local v3    # "spec":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 367
    .end local v2    # "i":I
    :cond_1
    iget v2, p0, Lcom/android/dx/rop/code/RegisterSpecSet;->size:I

    iput v2, v1, Lcom/android/dx/rop/code/RegisterSpecSet;->size:I

    .line 369
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecSet;->isImmutable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 370
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecSet;->setImmutable()V

    .line 373
    :cond_2
    return-object v1
.end method
