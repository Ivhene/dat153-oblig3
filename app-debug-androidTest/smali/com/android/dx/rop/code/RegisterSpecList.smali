.class public final Lcom/android/dx/rop/code/RegisterSpecList;
.super Lcom/android/dx/util/FixedSizeList;
.source "RegisterSpecList.java"

# interfaces
.implements Lcom/android/dx/rop/type/TypeList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/rop/code/RegisterSpecList$Expander;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/android/dx/rop/code/RegisterSpecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    sput-object v0, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .line 102
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    .line 103
    return-void
.end method

.method static synthetic access$300(Lcom/android/dx/rop/code/RegisterSpecList;I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/rop/code/RegisterSpecList;
    .param p1, "x1"    # I

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/dx/rop/code/RegisterSpecList;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dx/rop/code/RegisterSpecList;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    return-void
.end method

.method public static make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 2
    .param p0, "spec"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 39
    new-instance v0, Lcom/android/dx/rop/code/RegisterSpecList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 40
    .local v0, "result":Lcom/android/dx/rop/code/RegisterSpecList;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 41
    return-object v0
.end method

.method public static make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 2
    .param p0, "spec0"    # Lcom/android/dx/rop/code/RegisterSpec;
    .param p1, "spec1"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 53
    new-instance v0, Lcom/android/dx/rop/code/RegisterSpecList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 54
    .local v0, "result":Lcom/android/dx/rop/code/RegisterSpecList;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 56
    return-object v0
.end method

.method public static make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 2
    .param p0, "spec0"    # Lcom/android/dx/rop/code/RegisterSpec;
    .param p1, "spec1"    # Lcom/android/dx/rop/code/RegisterSpec;
    .param p2, "spec2"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 69
    new-instance v0, Lcom/android/dx/rop/code/RegisterSpecList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 70
    .local v0, "result":Lcom/android/dx/rop/code/RegisterSpecList;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 71
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 72
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 73
    return-object v0
.end method

.method public static make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 2
    .param p0, "spec0"    # Lcom/android/dx/rop/code/RegisterSpec;
    .param p1, "spec1"    # Lcom/android/dx/rop/code/RegisterSpec;
    .param p2, "spec2"    # Lcom/android/dx/rop/code/RegisterSpec;
    .param p3, "spec3"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 88
    new-instance v0, Lcom/android/dx/rop/code/RegisterSpecList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 89
    .local v0, "result":Lcom/android/dx/rop/code/RegisterSpecList;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 90
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 91
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 92
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p3}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 93
    return-object v0
.end method


# virtual methods
.method public get(I)Lcom/android/dx/rop/code/RegisterSpec;
    .locals 1
    .param p1, "n"    # I

    .line 139
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/code/RegisterSpec;

    return-object v0
.end method

.method public getRegistersSize()I
    .locals 5

    .line 203
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    .line 204
    .local v0, "sz":I
    const/4 v1, 0x0

    .line 206
    .local v1, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 207
    invoke-virtual {p0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/rop/code/RegisterSpec;

    .line 208
    .local v3, "spec":Lcom/android/dx/rop/code/RegisterSpec;
    if-eqz v3, :cond_0

    .line 209
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getNextReg()I

    move-result v4

    .line 210
    .local v4, "min":I
    if-le v4, v1, :cond_0

    .line 211
    move v1, v4

    .line 206
    .end local v3    # "spec":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v4    # "min":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method public getType(I)Lcom/android/dx/rop/type/Type;
    .locals 1
    .param p1, "n"    # I

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    return-object v0
.end method

.method public getWordCount()I
    .locals 4

    .line 114
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    .line 115
    .local v0, "sz":I
    const/4 v1, 0x0

    .line 117
    .local v1, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 118
    invoke-virtual {p0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->getType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/type/Type;->getCategory()I

    move-result v3

    add-int/2addr v1, v3

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method public indexOfRegister(I)I
    .locals 4
    .param p1, "reg"    # I

    .line 170
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    .line 171
    .local v0, "sz":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 174
    invoke-virtual {p0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 176
    .local v2, "rs":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 177
    return v1

    .line 171
    .end local v2    # "rs":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public set(ILcom/android/dx/rop/code/RegisterSpec;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "spec"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    .line 192
    return-void
.end method

.method public specForRegister(I)Lcom/android/dx/rop/code/RegisterSpec;
    .locals 4
    .param p1, "reg"    # I

    .line 149
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    .line 150
    .local v0, "sz":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 153
    invoke-virtual {p0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 155
    .local v2, "rs":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 156
    return-object v2

    .line 150
    .end local v2    # "rs":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public subset(Ljava/util/BitSet;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 5
    .param p1, "exclusionSet"    # Ljava/util/BitSet;

    .line 307
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    sub-int/2addr v0, v1

    .line 309
    .local v0, "newSize":I
    if-nez v0, :cond_0

    .line 310
    sget-object v1, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    return-object v1

    .line 313
    :cond_0
    new-instance v1, Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v1, v0}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 315
    .local v1, "result":Lcom/android/dx/rop/code/RegisterSpecList;
    const/4 v2, 0x0

    .line 316
    .local v2, "newIndex":I
    const/4 v3, 0x0

    .local v3, "oldIndex":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 317
    invoke-virtual {p1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 318
    invoke-virtual {p0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    .line 319
    add-int/lit8 v2, v2, 0x1

    .line 316
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 323
    .end local v3    # "oldIndex":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->isImmutable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 324
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    .line 327
    :cond_3
    return-object v1
.end method

.method public withAddedType(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/TypeList;
    .locals 2
    .param p1, "type"    # Lcom/android/dx/rop/type/Type;

    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withExpandedRegisters(IZLjava/util/BitSet;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 8
    .param p1, "base"    # I
    .param p2, "duplicateFirst"    # Z
    .param p3, "compatRegs"    # Ljava/util/BitSet;

    .line 378
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    .line 380
    .local v0, "sz":I
    if-nez v0, :cond_0

    .line 382
    return-object p0

    .line 385
    :cond_0
    new-instance v7, Lcom/android/dx/rop/code/RegisterSpecList$Expander;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/dx/rop/code/RegisterSpecList$Expander;-><init>(Lcom/android/dx/rop/code/RegisterSpecList;Ljava/util/BitSet;IZLcom/android/dx/rop/code/RegisterSpecList$1;)V

    .line 387
    .local v1, "expander":Lcom/android/dx/rop/code/RegisterSpecList$Expander;
    const/4 v2, 0x0

    .local v2, "regIdx":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 388
    invoke-static {v1, v2}, Lcom/android/dx/rop/code/RegisterSpecList$Expander;->access$100(Lcom/android/dx/rop/code/RegisterSpecList$Expander;I)V

    .line 387
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 391
    .end local v2    # "regIdx":I
    :cond_1
    invoke-static {v1}, Lcom/android/dx/rop/code/RegisterSpecList$Expander;->access$200(Lcom/android/dx/rop/code/RegisterSpecList$Expander;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    return-object v2
.end method

.method public withFirst(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 5
    .param p1, "spec"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 228
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    .line 229
    .local v0, "sz":I
    new-instance v1, Lcom/android/dx/rop/code/RegisterSpecList;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 231
    .local v1, "result":Lcom/android/dx/rop/code/RegisterSpecList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 232
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    .line 236
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->isImmutable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    .line 240
    :cond_1
    return-object v1
.end method

.method public withOffset(I)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 5
    .param p1, "delta"    # I

    .line 339
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    .line 341
    .local v0, "sz":I
    if-nez v0, :cond_0

    .line 343
    return-object p0

    .line 346
    :cond_0
    new-instance v1, Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v1, v0}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 348
    .local v1, "result":Lcom/android/dx/rop/code/RegisterSpecList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 349
    invoke-virtual {p0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/rop/code/RegisterSpec;

    .line 350
    .local v3, "one":Lcom/android/dx/rop/code/RegisterSpec;
    if-eqz v3, :cond_1

    .line 351
    invoke-virtual {v3, p1}, Lcom/android/dx/rop/code/RegisterSpec;->withOffset(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    .line 348
    .end local v3    # "one":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->isImmutable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 356
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    .line 359
    :cond_3
    return-object v1
.end method

.method public withoutFirst()Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 4

    .line 251
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 253
    .local v0, "newSize":I
    if-nez v0, :cond_0

    .line 254
    sget-object v1, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    return-object v1

    .line 257
    :cond_0
    new-instance v1, Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v1, v0}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 259
    .local v1, "result":Lcom/android/dx/rop/code/RegisterSpecList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 260
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->isImmutable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 264
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    .line 267
    :cond_2
    return-object v1
.end method

.method public withoutLast()Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 4

    .line 278
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 280
    .local v0, "newSize":I
    if-nez v0, :cond_0

    .line 281
    sget-object v1, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    return-object v1

    .line 284
    :cond_0
    new-instance v1, Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v1, v0}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 286
    .local v1, "result":Lcom/android/dx/rop/code/RegisterSpecList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 287
    invoke-virtual {p0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get0(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->set0(ILjava/lang/Object;)V

    .line 286
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 290
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->isImmutable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 291
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    .line 294
    :cond_2
    return-object v1
.end method
