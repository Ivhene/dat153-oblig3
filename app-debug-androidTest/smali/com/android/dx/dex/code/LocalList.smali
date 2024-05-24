.class public final Lcom/android/dx/dex/code/LocalList;
.super Lcom/android/dx/util/FixedSizeList;
.source "LocalList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/code/LocalList$MakeState;,
        Lcom/android/dx/dex/code/LocalList$Entry;,
        Lcom/android/dx/dex/code/LocalList$Disposition;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final EMPTY:Lcom/android/dx/dex/code/LocalList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/android/dx/dex/code/LocalList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/dx/dex/code/LocalList;-><init>(I)V

    sput-object v0, Lcom/android/dx/dex/code/LocalList;->EMPTY:Lcom/android/dx/dex/code/LocalList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .line 47
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    .line 48
    return-void
.end method

.method private static debugVerify(Lcom/android/dx/dex/code/LocalList;)V
    .locals 5
    .param p0, "locals"    # Lcom/android/dx/dex/code/LocalList;

    .line 378
    :try_start_0
    invoke-static {p0}, Lcom/android/dx/dex/code/LocalList;->debugVerify0(Lcom/android/dx/dex/code/LocalList;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    nop

    .line 387
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/android/dx/dex/code/LocalList;->size()I

    move-result v1

    .line 381
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 382
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v2}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 381
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 384
    .end local v2    # "i":I
    :cond_0
    throw v0
.end method

.method private static debugVerify0(Lcom/android/dx/dex/code/LocalList;)V
    .locals 12
    .param p0, "locals"    # Lcom/android/dx/dex/code/LocalList;

    .line 393
    invoke-virtual {p0}, Lcom/android/dx/dex/code/LocalList;->size()I

    move-result v0

    .line 394
    .local v0, "sz":I
    const/high16 v1, 0x10000

    new-array v1, v1, [Lcom/android/dx/dex/code/LocalList$Entry;

    .line 396
    .local v1, "active":[Lcom/android/dx/dex/code/LocalList$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_b

    .line 397
    invoke-virtual {p0, v2}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object v3

    .line 398
    .local v3, "e":Lcom/android/dx/dex/code/LocalList$Entry;
    invoke-virtual {v3}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v4

    .line 400
    .local v4, "reg":I
    invoke-virtual {v3}, Lcom/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 401
    aget-object v5, v1, v4

    .line 403
    .local v5, "already":Lcom/android/dx/dex/code/LocalList$Entry;
    if-eqz v5, :cond_1

    invoke-virtual {v3, v5}, Lcom/android/dx/dex/code/LocalList$Entry;->matches(Lcom/android/dx/dex/code/LocalList$Entry;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 404
    :cond_0
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "redundant start at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 405
    invoke-virtual {v3}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": got "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; had "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 409
    :cond_1
    :goto_1
    aput-object v3, v1, v4

    .line 410
    .end local v5    # "already":Lcom/android/dx/dex/code/LocalList$Entry;
    goto/16 :goto_6

    .line 411
    :cond_2
    aget-object v5, v1, v4

    const-string v6, "redundant end at "

    if-eqz v5, :cond_a

    .line 416
    invoke-virtual {v3}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v5

    .line 417
    .local v5, "addr":I
    const/4 v7, 0x0

    .line 419
    .local v7, "foundStart":Z
    add-int/lit8 v8, v2, 0x1

    .local v8, "j":I
    :goto_2
    if-ge v8, v0, :cond_7

    .line 420
    invoke-virtual {p0, v8}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object v9

    .line 421
    .local v9, "test":Lcom/android/dx/dex/code/LocalList$Entry;
    invoke-virtual {v9}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v10

    if-eq v10, v5, :cond_3

    .line 422
    goto :goto_4

    .line 424
    :cond_3
    invoke-virtual {v9}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegisterSpec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v10

    if-ne v10, v4, :cond_6

    .line 425
    invoke-virtual {v9}, Lcom/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 426
    invoke-virtual {v3}, Lcom/android/dx/dex/code/LocalList$Entry;->getDisposition()Lcom/android/dx/dex/code/LocalList$Disposition;

    move-result-object v10

    sget-object v11, Lcom/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/android/dx/dex/code/LocalList$Disposition;

    if-ne v10, v11, :cond_4

    .line 432
    const/4 v7, 0x1

    goto :goto_3

    .line 428
    :cond_4
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "improperly marked end at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 430
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 434
    :cond_5
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 436
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v10, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 419
    .end local v9    # "test":Lcom/android/dx/dex/code/LocalList$Entry;
    :cond_6
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 441
    .end local v8    # "j":I
    :cond_7
    :goto_4
    if-nez v7, :cond_9

    .line 442
    invoke-virtual {v3}, Lcom/android/dx/dex/code/LocalList$Entry;->getDisposition()Lcom/android/dx/dex/code/LocalList$Disposition;

    move-result-object v6

    sget-object v8, Lcom/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/android/dx/dex/code/LocalList$Disposition;

    if-eq v6, v8, :cond_8

    goto :goto_5

    .line 443
    :cond_8
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "improper end replacement claim at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 445
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 448
    :cond_9
    :goto_5
    const/4 v6, 0x0

    aput-object v6, v1, v4

    .line 396
    .end local v3    # "e":Lcom/android/dx/dex/code/LocalList$Entry;
    .end local v4    # "reg":I
    .end local v5    # "addr":I
    .end local v7    # "foundStart":Z
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 412
    .restart local v3    # "e":Lcom/android/dx/dex/code/LocalList$Entry;
    .restart local v4    # "reg":I
    :cond_a
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 413
    invoke-virtual {v3}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 451
    .end local v2    # "i":I
    .end local v3    # "e":Lcom/android/dx/dex/code/LocalList$Entry;
    .end local v4    # "reg":I
    :cond_b
    return-void
.end method

.method public static make(Lcom/android/dx/dex/code/DalvInsnList;)Lcom/android/dx/dex/code/LocalList;
    .locals 6
    .param p0, "insns"    # Lcom/android/dx/dex/code/DalvInsnList;

    .line 329
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsnList;->size()I

    move-result v0

    .line 347
    .local v0, "sz":I
    new-instance v1, Lcom/android/dx/dex/code/LocalList$MakeState;

    invoke-direct {v1, v0}, Lcom/android/dx/dex/code/LocalList$MakeState;-><init>(I)V

    .line 349
    .local v1, "state":Lcom/android/dx/dex/code/LocalList$MakeState;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 350
    invoke-virtual {p0, v2}, Lcom/android/dx/dex/code/DalvInsnList;->get(I)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v3

    .line 352
    .local v3, "insn":Lcom/android/dx/dex/code/DalvInsn;
    instance-of v4, v3, Lcom/android/dx/dex/code/LocalSnapshot;

    if-eqz v4, :cond_0

    .line 353
    move-object v4, v3

    check-cast v4, Lcom/android/dx/dex/code/LocalSnapshot;

    .line 354
    invoke-virtual {v4}, Lcom/android/dx/dex/code/LocalSnapshot;->getLocals()Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v4

    .line 355
    .local v4, "snapshot":Lcom/android/dx/rop/code/RegisterSpecSet;
    invoke-virtual {v3}, Lcom/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result v5

    invoke-virtual {v1, v5, v4}, Lcom/android/dx/dex/code/LocalList$MakeState;->snapshot(ILcom/android/dx/rop/code/RegisterSpecSet;)V

    .end local v4    # "snapshot":Lcom/android/dx/rop/code/RegisterSpecSet;
    goto :goto_1

    .line 356
    :cond_0
    instance-of v4, v3, Lcom/android/dx/dex/code/LocalStart;

    if-eqz v4, :cond_1

    .line 357
    move-object v4, v3

    check-cast v4, Lcom/android/dx/dex/code/LocalStart;

    invoke-virtual {v4}, Lcom/android/dx/dex/code/LocalStart;->getLocal()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 358
    .local v4, "local":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v3}, Lcom/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result v5

    invoke-virtual {v1, v5, v4}, Lcom/android/dx/dex/code/LocalList$MakeState;->startLocal(ILcom/android/dx/rop/code/RegisterSpec;)V

    goto :goto_2

    .line 356
    .end local v4    # "local":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_1
    :goto_1
    nop

    .line 349
    .end local v3    # "insn":Lcom/android/dx/dex/code/DalvInsn;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 362
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Lcom/android/dx/dex/code/LocalList$MakeState;->finish()Lcom/android/dx/dex/code/LocalList;

    move-result-object v2

    .line 368
    .local v2, "result":Lcom/android/dx/dex/code/LocalList;
    return-object v2
.end method


# virtual methods
.method public debugPrint(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 3
    .param p1, "out"    # Ljava/io/PrintStream;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lcom/android/dx/dex/code/LocalList;->size()I

    move-result v0

    .line 81
    .local v0, "sz":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 82
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, v1}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public get(I)Lcom/android/dx/dex/code/LocalList$Entry;
    .locals 1
    .param p1, "n"    # I

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/LocalList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/LocalList$Entry;

    return-object v0
.end method

.method public set(ILcom/android/dx/dex/code/LocalList$Entry;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "entry"    # Lcom/android/dx/dex/code/LocalList$Entry;

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/dex/code/LocalList;->set0(ILjava/lang/Object;)V

    .line 70
    return-void
.end method
