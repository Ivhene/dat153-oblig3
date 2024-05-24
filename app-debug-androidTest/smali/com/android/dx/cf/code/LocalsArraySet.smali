.class public Lcom/android/dx/cf/code/LocalsArraySet;
.super Lcom/android/dx/cf/code/LocalsArray;
.source "LocalsArraySet.java"


# instance fields
.field private final primary:Lcom/android/dx/cf/code/OneLocalsArray;

.field private final secondaries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/cf/code/LocalsArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxLocals"    # I

    .line 58
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/dx/cf/code/LocalsArray;-><init>(Z)V

    .line 59
    new-instance v0, Lcom/android/dx/cf/code/OneLocalsArray;

    invoke-direct {v0, p1}, Lcom/android/dx/cf/code/OneLocalsArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/cf/code/LocalsArraySet;->primary:Lcom/android/dx/cf/code/OneLocalsArray;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    .line 61
    return-void
.end method

.method private constructor <init>(Lcom/android/dx/cf/code/LocalsArraySet;)V
    .locals 5
    .param p1, "toCopy"    # Lcom/android/dx/cf/code/LocalsArraySet;

    .line 84
    invoke-virtual {p1}, Lcom/android/dx/cf/code/LocalsArraySet;->getMaxLocals()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/dx/cf/code/LocalsArray;-><init>(Z)V

    .line 86
    iget-object v0, p1, Lcom/android/dx/cf/code/LocalsArraySet;->primary:Lcom/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0}, Lcom/android/dx/cf/code/OneLocalsArray;->copy()Lcom/android/dx/cf/code/OneLocalsArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/cf/code/LocalsArraySet;->primary:Lcom/android/dx/cf/code/OneLocalsArray;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    .line 89
    iget-object v0, p1, Lcom/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 90
    .local v0, "sz":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 91
    iget-object v2, p1, Lcom/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/cf/code/LocalsArray;

    .line 93
    .local v2, "la":Lcom/android/dx/cf/code/LocalsArray;
    if-nez v2, :cond_1

    .line 94
    iget-object v3, p0, Lcom/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 96
    :cond_1
    iget-object v3, p0, Lcom/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/dx/cf/code/LocalsArray;->copy()Lcom/android/dx/cf/code/LocalsArray;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v2    # "la":Lcom/android/dx/cf/code/LocalsArray;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/android/dx/cf/code/OneLocalsArray;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "primary"    # Lcom/android/dx/cf/code/OneLocalsArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/cf/code/OneLocalsArray;",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/cf/code/LocalsArray;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p2, "secondaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/cf/code/LocalsArray;>;"
    invoke-virtual {p1}, Lcom/android/dx/cf/code/OneLocalsArray;->getMaxLocals()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/dx/cf/code/LocalsArray;-><init>(Z)V

    .line 74
    iput-object p1, p0, Lcom/android/dx/cf/code/LocalsArraySet;->primary:Lcom/android/dx/cf/code/OneLocalsArray;

    .line 75
    iput-object p2, p0, Lcom/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    .line 76
    return-void
.end method

.method private getSecondaryForLabel(I)Lcom/android/dx/cf/code/LocalsArray;
    .locals 1
    .param p1, "label"    # I

    .line 374
    iget-object v0, p0, Lcom/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 375
    const/4 v0, 0x0

    return-object v0

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/cf/code/LocalsArray;

    return-object v0
.end method

.method private mergeWithOne(Lcom/android/dx/cf/code/OneLocalsArray;)Lcom/android/dx/cf/code/LocalsArraySet;
    .locals 10
    .param p1, "other"    # Lcom/android/dx/cf/code/OneLocalsArray;

    .line 312
    const/4 v0, 0x0

    .line 314
    .local v0, "secondariesChanged":Z
    iget-object v1, p0, Lcom/android/dx/cf/code/LocalsArraySet;->primary:Lcom/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {p1}, Lcom/android/dx/cf/code/OneLocalsArray;->getPrimary()Lcom/android/dx/cf/code/OneLocalsArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dx/cf/code/OneLocalsArray;->merge(Lcom/android/dx/cf/code/OneLocalsArray;)Lcom/android/dx/cf/code/OneLocalsArray;

    move-result-object v1

    .line 315
    .local v1, "newPrimary":Lcom/android/dx/cf/code/OneLocalsArray;
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 317
    .local v2, "newSecondaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/cf/code/LocalsArray;>;"
    iget-object v3, p0, Lcom/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 318
    .local v3, "sz":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 319
    iget-object v5, p0, Lcom/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dx/cf/code/LocalsArray;

    .line 320
    .local v5, "la":Lcom/android/dx/cf/code/LocalsArray;
    const/4 v6, 0x0

    .line 322
    .local v6, "resultla":Lcom/android/dx/cf/code/LocalsArray;
    if-eqz v5, :cond_0

    .line 324
    :try_start_0
    invoke-virtual {v5, p1}, Lcom/android/dx/cf/code/LocalsArray;->merge(Lcom/android/dx/cf/code/LocalsArray;)Lcom/android/dx/cf/code/LocalsArray;

    move-result-object v7
    :try_end_0
    .catch Lcom/android/dx/cf/code/SimException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    .line 328
    goto :goto_1

    .line 325
    :catch_0
    move-exception v7

    .line 326
    .local v7, "ex":Lcom/android/dx/cf/code/SimException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Merging one locals against caller block "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 327
    invoke-static {v4}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 326
    invoke-virtual {v7, v8}, Lcom/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 331
    .end local v7    # "ex":Lcom/android/dx/cf/code/SimException;
    :cond_0
    :goto_1
    if-nez v0, :cond_2

    if-eq v5, v6, :cond_1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v7, 0x1

    :goto_3
    move v0, v7

    .line 333
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .end local v5    # "la":Lcom/android/dx/cf/code/LocalsArray;
    .end local v6    # "resultla":Lcom/android/dx/cf/code/LocalsArray;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 336
    .end local v4    # "i":I
    :cond_3
    iget-object v4, p0, Lcom/android/dx/cf/code/LocalsArraySet;->primary:Lcom/android/dx/cf/code/OneLocalsArray;

    if-ne v4, v1, :cond_4

    if-nez v0, :cond_4

    .line 337
    return-object p0

    .line 340
    :cond_4
    new-instance v4, Lcom/android/dx/cf/code/LocalsArraySet;

    invoke-direct {v4, v1, v2}, Lcom/android/dx/cf/code/LocalsArraySet;-><init>(Lcom/android/dx/cf/code/OneLocalsArray;Ljava/util/ArrayList;)V

    return-object v4
.end method

.method private mergeWithSet(Lcom/android/dx/cf/code/LocalsArraySet;)Lcom/android/dx/cf/code/LocalsArraySet;
    .locals 13
    .param p1, "other"    # Lcom/android/dx/cf/code/LocalsArraySet;

    .line 261
    const/4 v0, 0x0

    .line 263
    .local v0, "secondariesChanged":Z
    iget-object v1, p0, Lcom/android/dx/cf/code/LocalsArraySet;->primary:Lcom/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {p1}, Lcom/android/dx/cf/code/LocalsArraySet;->getPrimary()Lcom/android/dx/cf/code/OneLocalsArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dx/cf/code/OneLocalsArray;->merge(Lcom/android/dx/cf/code/OneLocalsArray;)Lcom/android/dx/cf/code/OneLocalsArray;

    move-result-object v1

    .line 265
    .local v1, "newPrimary":Lcom/android/dx/cf/code/OneLocalsArray;
    iget-object v2, p0, Lcom/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 266
    .local v2, "sz1":I
    iget-object v3, p1, Lcom/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 267
    .local v3, "sz2":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 268
    .local v4, "sz":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 270
    .local v5, "newSecondaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/cf/code/LocalsArray;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_7

    .line 271
    const/4 v7, 0x0

    if-ge v6, v2, :cond_0

    iget-object v8, p0, Lcom/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/dx/cf/code/LocalsArray;

    goto :goto_1

    :cond_0
    move-object v8, v7

    .line 272
    .local v8, "la1":Lcom/android/dx/cf/code/LocalsArray;
    :goto_1
    if-ge v6, v3, :cond_1

    iget-object v7, p1, Lcom/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/dx/cf/code/LocalsArray;

    .line 273
    .local v7, "la2":Lcom/android/dx/cf/code/LocalsArray;
    :cond_1
    const/4 v9, 0x0

    .line 275
    .local v9, "resultla":Lcom/android/dx/cf/code/LocalsArray;
    if-ne v8, v7, :cond_2

    .line 276
    move-object v9, v8

    goto :goto_2

    .line 277
    :cond_2
    if-nez v8, :cond_3

    .line 278
    move-object v9, v7

    goto :goto_2

    .line 279
    :cond_3
    if-nez v7, :cond_4

    .line 280
    move-object v9, v8

    goto :goto_2

    .line 283
    :cond_4
    :try_start_0
    invoke-virtual {v8, v7}, Lcom/android/dx/cf/code/LocalsArray;->merge(Lcom/android/dx/cf/code/LocalsArray;)Lcom/android/dx/cf/code/LocalsArray;

    move-result-object v10
    :try_end_0
    .catch Lcom/android/dx/cf/code/SimException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v10

    .line 287
    goto :goto_2

    .line 284
    :catch_0
    move-exception v10

    .line 285
    .local v10, "ex":Lcom/android/dx/cf/code/SimException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Merging locals set for caller block "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 286
    invoke-static {v6}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 285
    invoke-virtual {v10, v11}, Lcom/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 290
    .end local v10    # "ex":Lcom/android/dx/cf/code/SimException;
    :goto_2
    if-nez v0, :cond_6

    if-eq v8, v9, :cond_5

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v10, 0x1

    :goto_4
    move v0, v10

    .line 292
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    .end local v7    # "la2":Lcom/android/dx/cf/code/LocalsArray;
    .end local v8    # "la1":Lcom/android/dx/cf/code/LocalsArray;
    .end local v9    # "resultla":Lcom/android/dx/cf/code/LocalsArray;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 295
    .end local v6    # "i":I
    :cond_7
    iget-object v6, p0, Lcom/android/dx/cf/code/LocalsArraySet;->primary:Lcom/android/dx/cf/code/OneLocalsArray;

    if-ne v6, v1, :cond_8

    if-nez v0, :cond_8

    .line 296
    return-object p0

    .line 299
    :cond_8
    new-instance v6, Lcom/android/dx/cf/code/LocalsArraySet;

    invoke-direct {v6, v1, v5}, Lcom/android/dx/cf/code/LocalsArraySet;-><init>(Lcom/android/dx/cf/code/OneLocalsArray;Ljava/util/ArrayList;)V

    return-object v6
.end method


# virtual methods
.method public annotate(Lcom/android/dex/util/ExceptionWithContext;)V
    .locals 5
    .param p1, "ex"    # Lcom/android/dex/util/ExceptionWithContext;

    .line 124
    const-string v0, "(locals array set; primary)"

    invoke-virtual {p1, v0}, Lcom/android/dex/util/ExceptionWithContext;->addContext(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/dx/cf/code/LocalsArraySet;->primary:Lcom/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0, p1}, Lcom/android/dx/cf/code/OneLocalsArray;->annotate(Lcom/android/dex/util/ExceptionWithContext;)V

    .line 127
    iget-object v0, p0, Lcom/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 128
    .local v0, "sz":I
    const/4 v1, 0x0

    .local v1, "label":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 129
    iget-object v2, p0, Lcom/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/cf/code/LocalsArray;

    .line 131
    .local v2, "la":Lcom/android/dx/cf/code/LocalsArray;
    if-eqz v2, :cond_0

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(locals array set: primary for caller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 133
    invoke-static {v1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-virtual {p1, v3}, Lcom/android/dex/util/ExceptionWithContext;->addContext(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v2}, Lcom/android/dx/cf/code/LocalsArray;->getPrimary()Lcom/android/dx/cf/code/OneLocalsArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/dx/cf/code/OneLocalsArray;->annotate(Lcom/android/dex/util/ExceptionWithContext;)V

    .line 128
    .end local v2    # "la":Lcom/android/dx/cf/code/LocalsArray;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "label":I
    :cond_1
    return-void
.end method

.method public copy()Lcom/android/dx/cf/code/LocalsArray;
    .locals 1

    .line 118
    new-instance v0, Lcom/android/dx/cf/code/LocalsArraySet;

    invoke-direct {v0, p0}, Lcom/android/dx/cf/code/LocalsArraySet;-><init>(Lcom/android/dx/cf/code/LocalsArraySet;)V

    return-object v0
.end method

.method public get(I)Lcom/android/dx/rop/type/TypeBearer;
    .locals 1
    .param p1, "idx"    # I

    .line 236
    iget-object v0, p0, Lcom/android/dx/cf/code/LocalsArraySet;->primary:Lcom/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0, p1}, Lcom/android/dx/cf/code/OneLocalsArray;->get(I)Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v0

    return-object v0
.end method

.method public getCategory1(I)Lcom/android/dx/rop/type/TypeBearer;
    .locals 1
    .param p1, "idx"    # I

    .line 242
    iget-object v0, p0, Lcom/android/dx/cf/code/LocalsArraySet;->primary:Lcom/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0, p1}, Lcom/android/dx/cf/code/OneLocalsArray;->getCategory1(I)Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v0

    return-object v0
.end method

.method public getCategory2(I)Lcom/android/dx/rop/type/TypeBearer;
    .locals 1
    .param p1, "idx"    # I

    .line 248
    iget-object v0, p0, Lcom/android/dx/cf/code/LocalsArraySet;->primary:Lcom/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0, p1}, Lcom/android/dx/cf/code/OneLocalsArray;->getCategory2(I)Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v0

    return-object v0
.end method

.method public getMaxLocals()I
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/dx/cf/code/LocalsArraySet;->primary:Lcom/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0}, Lcom/android/dx/cf/code/OneLocalsArray;->getMaxLocals()I

    move-result v0

    return v0
.end method

.method public getOrNull(I)Lcom/android/dx/rop/type/TypeBearer;
    .locals 1
    .param p1, "idx"    # I

    .line 230
    iget-object v0, p0, Lcom/android/dx/cf/code/LocalsArraySet;->primary:Lcom/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0, p1}, Lcom/android/dx/cf/code/OneLocalsArray;->getOrNull(I)Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v0

    return-object v0
.end method

.method protected getPrimary()Lcom/android/dx/cf/code/OneLocalsArray;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/android/dx/cf/code/LocalsArraySet;->primary:Lcom/android/dx/cf/code/OneLocalsArray;

    return-object v0
.end method

.method public invalidate(I)V
    .locals 2
    .param p1, "idx"    # I

    .line 216
    invoke-virtual {p0}, Lcom/android/dx/cf/code/LocalsArraySet;->throwIfImmutable()V

    .line 218
    iget-object v0, p0, Lcom/android/dx/cf/code/LocalsArraySet;->primary:Lcom/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0, p1}, Lcom/android/dx/cf/code/OneLocalsArray;->invalidate(I)V

    .line 220
    iget-object v0, p0, Lcom/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/cf/code/LocalsArray;

    .line 221
    .local v1, "la":Lcom/android/dx/cf/code/LocalsArray;
    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {v1, p1}, Lcom/android/dx/cf/code/LocalsArray;->invalidate(I)V

    .line 224
    .end local v1    # "la":Lcom/android/dx/cf/code/LocalsArray;
    :cond_0
    goto :goto_0

    .line 225
    :cond_1
    return-void
.end method

.method public makeInitialized(Lcom/android/dx/rop/type/Type;)V
    .locals 3
    .param p1, "type"    # Lcom/android/dx/rop/type/Type;

    .line 169
    iget-object v0, p0, Lcom/android/dx/cf/code/LocalsArraySet;->primary:Lcom/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0}, Lcom/android/dx/cf/code/OneLocalsArray;->getMaxLocals()I

    move-result v0

    .line 171
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 173
    return-void

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/android/dx/cf/code/LocalsArraySet;->throwIfImmutable()V

    .line 178
    iget-object v1, p0, Lcom/android/dx/cf/code/LocalsArraySet;->primary:Lcom/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v1, p1}, Lcom/android/dx/cf/code/OneLocalsArray;->makeInitialized(Lcom/android/dx/rop/type/Type;)V

    .line 180
    iget-object v1, p0, Lcom/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/cf/code/LocalsArray;

    .line 181
    .local v2, "la":Lcom/android/dx/cf/code/LocalsArray;
    if-eqz v2, :cond_1

    .line 182
    invoke-virtual {v2, p1}, Lcom/android/dx/cf/code/LocalsArray;->makeInitialized(Lcom/android/dx/rop/type/Type;)V

    .line 184
    .end local v2    # "la":Lcom/android/dx/cf/code/LocalsArray;
    :cond_1
    goto :goto_0

    .line 185
    :cond_2
    return-void
.end method

.method public bridge synthetic merge(Lcom/android/dx/cf/code/LocalsArray;)Lcom/android/dx/cf/code/LocalsArray;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/dx/cf/code/LocalsArraySet;->merge(Lcom/android/dx/cf/code/LocalsArray;)Lcom/android/dx/cf/code/LocalsArraySet;

    move-result-object p1

    return-object p1
.end method

.method public merge(Lcom/android/dx/cf/code/LocalsArray;)Lcom/android/dx/cf/code/LocalsArraySet;
    .locals 2
    .param p1, "other"    # Lcom/android/dx/cf/code/LocalsArray;

    .line 349
    :try_start_0
    instance-of v0, p1, Lcom/android/dx/cf/code/LocalsArraySet;

    if-eqz v0, :cond_0

    .line 350
    move-object v0, p1

    check-cast v0, Lcom/android/dx/cf/code/LocalsArraySet;

    invoke-direct {p0, v0}, Lcom/android/dx/cf/code/LocalsArraySet;->mergeWithSet(Lcom/android/dx/cf/code/LocalsArraySet;)Lcom/android/dx/cf/code/LocalsArraySet;

    move-result-object v0

    .local v0, "result":Lcom/android/dx/cf/code/LocalsArraySet;
    goto :goto_0

    .line 352
    .end local v0    # "result":Lcom/android/dx/cf/code/LocalsArraySet;
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/dx/cf/code/OneLocalsArray;

    invoke-direct {p0, v0}, Lcom/android/dx/cf/code/LocalsArraySet;->mergeWithOne(Lcom/android/dx/cf/code/OneLocalsArray;)Lcom/android/dx/cf/code/LocalsArraySet;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/dx/cf/code/SimException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .restart local v0    # "result":Lcom/android/dx/cf/code/LocalsArraySet;
    :goto_0
    nop

    .line 362
    invoke-virtual {v0}, Lcom/android/dx/cf/code/LocalsArraySet;->setImmutable()V

    .line 363
    return-object v0

    .line 354
    .end local v0    # "result":Lcom/android/dx/cf/code/LocalsArraySet;
    :catch_0
    move-exception v0

    .line 355
    .local v0, "ex":Lcom/android/dx/cf/code/SimException;
    const-string v1, "underlay locals:"

    invoke-virtual {v0, v1}, Lcom/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0, v0}, Lcom/android/dx/cf/code/LocalsArraySet;->annotate(Lcom/android/dex/util/ExceptionWithContext;)V

    .line 357
    const-string v1, "overlay locals:"

    invoke-virtual {v0, v1}, Lcom/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p1, v0}, Lcom/android/dx/cf/code/LocalsArray;->annotate(Lcom/android/dex/util/ExceptionWithContext;)V

    .line 359
    throw v0
.end method

.method public mergeWithSubroutineCaller(Lcom/android/dx/cf/code/LocalsArray;I)Lcom/android/dx/cf/code/LocalsArraySet;
    .locals 9
    .param p1, "other"    # Lcom/android/dx/cf/code/LocalsArray;
    .param p2, "predLabel"    # I

    .line 386
    invoke-direct {p0, p2}, Lcom/android/dx/cf/code/LocalsArraySet;->getSecondaryForLabel(I)Lcom/android/dx/cf/code/LocalsArray;

    move-result-object v0

    .line 390
    .local v0, "mine":Lcom/android/dx/cf/code/LocalsArray;
    iget-object v1, p0, Lcom/android/dx/cf/code/LocalsArraySet;->primary:Lcom/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {p1}, Lcom/android/dx/cf/code/LocalsArray;->getPrimary()Lcom/android/dx/cf/code/OneLocalsArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dx/cf/code/OneLocalsArray;->merge(Lcom/android/dx/cf/code/OneLocalsArray;)Lcom/android/dx/cf/code/OneLocalsArray;

    move-result-object v1

    .line 392
    .local v1, "newPrimary":Lcom/android/dx/cf/code/OneLocalsArray;
    if-ne v0, p1, :cond_0

    .line 393
    move-object v2, v0

    .local v2, "newSecondary":Lcom/android/dx/cf/code/LocalsArray;
    goto :goto_0

    .line 394
    .end local v2    # "newSecondary":Lcom/android/dx/cf/code/LocalsArray;
    :cond_0
    if-nez v0, :cond_1

    .line 395
    move-object v2, p1

    .restart local v2    # "newSecondary":Lcom/android/dx/cf/code/LocalsArray;
    goto :goto_0

    .line 397
    .end local v2    # "newSecondary":Lcom/android/dx/cf/code/LocalsArray;
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/dx/cf/code/LocalsArray;->merge(Lcom/android/dx/cf/code/LocalsArray;)Lcom/android/dx/cf/code/LocalsArray;

    move-result-object v2

    .line 400
    .restart local v2    # "newSecondary":Lcom/android/dx/cf/code/LocalsArray;
    :goto_0
    if-ne v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/dx/cf/code/LocalsArraySet;->primary:Lcom/android/dx/cf/code/OneLocalsArray;

    if-ne v1, v3, :cond_2

    .line 401
    return-object p0

    .line 407
    :cond_2
    const/4 v1, 0x0

    .line 409
    iget-object v3, p0, Lcom/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 410
    .local v3, "szSecondaries":I
    add-int/lit8 v4, p2, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 411
    .local v4, "sz":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 412
    .local v5, "newSecondaries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/cf/code/LocalsArray;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_7

    .line 413
    const/4 v7, 0x0

    .line 415
    .local v7, "la":Lcom/android/dx/cf/code/LocalsArray;
    if-ne v6, p2, :cond_3

    .line 420
    move-object v7, v2

    goto :goto_2

    .line 421
    :cond_3
    if-ge v6, v3, :cond_4

    .line 422
    iget-object v8, p0, Lcom/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Lcom/android/dx/cf/code/LocalsArray;

    .line 425
    :cond_4
    :goto_2
    if-eqz v7, :cond_6

    .line 426
    if-nez v1, :cond_5

    .line 427
    invoke-virtual {v7}, Lcom/android/dx/cf/code/LocalsArray;->getPrimary()Lcom/android/dx/cf/code/OneLocalsArray;

    move-result-object v1

    goto :goto_3

    .line 429
    :cond_5
    invoke-virtual {v7}, Lcom/android/dx/cf/code/LocalsArray;->getPrimary()Lcom/android/dx/cf/code/OneLocalsArray;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/dx/cf/code/OneLocalsArray;->merge(Lcom/android/dx/cf/code/OneLocalsArray;)Lcom/android/dx/cf/code/OneLocalsArray;

    move-result-object v1

    .line 433
    :cond_6
    :goto_3
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    .end local v7    # "la":Lcom/android/dx/cf/code/LocalsArray;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 436
    .end local v6    # "i":I
    :cond_7
    new-instance v6, Lcom/android/dx/cf/code/LocalsArraySet;

    invoke-direct {v6, v1, v5}, Lcom/android/dx/cf/code/LocalsArraySet;-><init>(Lcom/android/dx/cf/code/OneLocalsArray;Ljava/util/ArrayList;)V

    .line 438
    .local v6, "result":Lcom/android/dx/cf/code/LocalsArraySet;
    invoke-virtual {v6}, Lcom/android/dx/cf/code/LocalsArraySet;->setImmutable()V

    .line 439
    return-object v6
.end method

.method public set(ILcom/android/dx/rop/type/TypeBearer;)V
    .locals 2
    .param p1, "idx"    # I
    .param p2, "type"    # Lcom/android/dx/rop/type/TypeBearer;

    .line 196
    invoke-virtual {p0}, Lcom/android/dx/cf/code/LocalsArraySet;->throwIfImmutable()V

    .line 198
    iget-object v0, p0, Lcom/android/dx/cf/code/LocalsArraySet;->primary:Lcom/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0, p1, p2}, Lcom/android/dx/cf/code/OneLocalsArray;->set(ILcom/android/dx/rop/type/TypeBearer;)V

    .line 200
    iget-object v0, p0, Lcom/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/cf/code/LocalsArray;

    .line 201
    .local v1, "la":Lcom/android/dx/cf/code/LocalsArray;
    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v1, p1, p2}, Lcom/android/dx/cf/code/LocalsArray;->set(ILcom/android/dx/rop/type/TypeBearer;)V

    .line 204
    .end local v1    # "la":Lcom/android/dx/cf/code/LocalsArray;
    :cond_0
    goto :goto_0

    .line 205
    :cond_1
    return-void
.end method

.method public set(Lcom/android/dx/rop/code/RegisterSpec;)V
    .locals 1
    .param p1, "spec"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 210
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/dx/cf/code/LocalsArraySet;->set(ILcom/android/dx/rop/type/TypeBearer;)V

    .line 211
    return-void
.end method

.method public setImmutable()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/android/dx/cf/code/LocalsArraySet;->primary:Lcom/android/dx/cf/code/OneLocalsArray;

    invoke-virtual {v0}, Lcom/android/dx/cf/code/OneLocalsArray;->setImmutable()V

    .line 107
    iget-object v0, p0, Lcom/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/cf/code/LocalsArray;

    .line 108
    .local v1, "la":Lcom/android/dx/cf/code/LocalsArray;
    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v1}, Lcom/android/dx/cf/code/LocalsArray;->setImmutable()V

    .line 111
    .end local v1    # "la":Lcom/android/dx/cf/code/LocalsArray;
    :cond_0
    goto :goto_0

    .line 112
    :cond_1
    invoke-super {p0}, Lcom/android/dx/cf/code/LocalsArray;->setImmutable()V

    .line 113
    return-void
.end method

.method public subArrayForLabel(I)Lcom/android/dx/cf/code/LocalsArray;
    .locals 1
    .param p1, "subLabel"    # I

    .line 452
    invoke-direct {p0, p1}, Lcom/android/dx/cf/code/LocalsArraySet;->getSecondaryForLabel(I)Lcom/android/dx/cf/code/LocalsArray;

    move-result-object v0

    .line 453
    .local v0, "result":Lcom/android/dx/cf/code/LocalsArray;
    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 7

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "(locals array set; primary)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p0}, Lcom/android/dx/cf/code/LocalsArraySet;->getPrimary()Lcom/android/dx/cf/code/OneLocalsArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/cf/code/OneLocalsArray;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    iget-object v2, p0, Lcom/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 151
    .local v2, "sz":I
    const/4 v3, 0x0

    .local v3, "label":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 152
    iget-object v4, p0, Lcom/android/dx/cf/code/LocalsArraySet;->secondaries:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dx/cf/code/LocalsArray;

    .line 154
    .local v4, "la":Lcom/android/dx/cf/code/LocalsArray;
    if-eqz v4, :cond_0

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(locals array set: primary for caller "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 156
    invoke-static {v3}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v4}, Lcom/android/dx/cf/code/LocalsArray;->getPrimary()Lcom/android/dx/cf/code/OneLocalsArray;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/cf/code/OneLocalsArray;->toHuman()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    .end local v4    # "la":Lcom/android/dx/cf/code/LocalsArray;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    .end local v3    # "label":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
