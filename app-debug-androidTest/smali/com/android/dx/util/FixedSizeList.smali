.class public Lcom/android/dx/util/FixedSizeList;
.super Lcom/android/dx/util/MutabilityControl;
.source "FixedSizeList.java"

# interfaces
.implements Lcom/android/dx/util/ToHuman;


# instance fields
.field private arr:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "size"    # I

    .line 35
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/dx/util/MutabilityControl;-><init>(Z)V

    .line 38
    :try_start_0
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    nop

    .line 43
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 41
    .local v0, "ex":Ljava/lang/NegativeArraySizeException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "size < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private throwIndex(I)Ljava/lang/Object;
    .locals 2
    .param p1, "n"    # I

    .line 232
    if-gez p1, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n < 0"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n >= size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private toString0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "separator"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "human"    # Z

    .line 251
    iget-object v0, p0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    array-length v0, v0

    .line 252
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 254
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 255
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 259
    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 260
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_1
    if-eqz p4, :cond_2

    .line 264
    iget-object v3, p0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    aget-object v3, v3, v2

    check-cast v3, Lcom/android/dx/util/ToHuman;

    invoke-interface {v3}, Lcom/android/dx/util/ToHuman;->toHuman()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 266
    :cond_2
    iget-object v3, p0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 258
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    .end local v2    # "i":I
    :cond_3
    if-eqz p3, :cond_4

    .line 271
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 48
    if-ne p0, p1, :cond_0

    .line 50
    const/4 v0, 0x1

    return v0

    .line 53
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/dx/util/FixedSizeList;

    .line 59
    .local v0, "list":Lcom/android/dx/util/FixedSizeList;
    iget-object v1, p0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 55
    .end local v0    # "list":Lcom/android/dx/util/FixedSizeList;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final get0(I)Ljava/lang/Object;
    .locals 4
    .param p1, "n"    # I

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 180
    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 184
    return-object v0

    .line 181
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local p1    # "n":I
    throw v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v0    # "result":Ljava/lang/Object;
    .restart local p1    # "n":I
    :catch_0
    move-exception v0

    .line 187
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;->throwIndex(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected final getOrNull0(I)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # I

    .line 201
    iget-object v0, p0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected final set0(ILjava/lang/Object;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 214
    invoke-virtual {p0}, Lcom/android/dx/util/FixedSizeList;->throwIfImmutable()V

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    aput-object p2, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 220
    .local v0, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;->throwIndex(I)Ljava/lang/Object;

    .line 222
    .end local v0    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_0
    return-void
.end method

.method public shrinkToFit()V
    .locals 6

    .line 134
    iget-object v0, p0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    array-length v0, v0

    .line 135
    .local v0, "sz":I
    const/4 v1, 0x0

    .line 137
    .local v1, "newSz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 138
    iget-object v3, p0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 139
    add-int/lit8 v1, v1, 0x1

    .line 137
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v2    # "i":I
    :cond_1
    if-ne v0, v1, :cond_2

    .line 144
    return-void

    .line 147
    :cond_2
    invoke-virtual {p0}, Lcom/android/dx/util/FixedSizeList;->throwIfImmutable()V

    .line 149
    new-array v2, v1, [Ljava/lang/Object;

    .line 150
    .local v2, "newa":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 152
    .local v3, "at":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_4

    .line 153
    iget-object v5, p0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    aget-object v5, v5, v4

    .line 154
    .local v5, "one":Ljava/lang/Object;
    if-eqz v5, :cond_3

    .line 155
    aput-object v5, v2, v3

    .line 156
    add-int/lit8 v3, v3, 0x1

    .line 152
    .end local v5    # "one":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 160
    .end local v4    # "i":I
    :cond_4
    iput-object v2, p0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    .line 161
    if-nez v1, :cond_5

    .line 162
    invoke-virtual {p0}, Lcom/android/dx/util/FixedSizeList;->setImmutable()V

    .line 164
    :cond_5
    return-void
.end method

.method public final size()I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/dx/util/FixedSizeList;->arr:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 5

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", "

    const-string v4, "}"

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/dx/util/FixedSizeList;->toString0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toHuman(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "separator"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;

    .line 118
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/dx/util/FixedSizeList;->toString0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "}"

    const/4 v3, 0x0

    const-string v4, ", "

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/android/dx/util/FixedSizeList;->toString0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "separator"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/dx/util/FixedSizeList;->toString0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
