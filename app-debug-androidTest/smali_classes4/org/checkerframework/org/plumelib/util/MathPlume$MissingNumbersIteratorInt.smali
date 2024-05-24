.class final Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;
.super Ljava/lang/Object;
.source "MathPlume.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/util/MathPlume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MissingNumbersIteratorInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field addEnds:Z

.field currentIndex:I

.field currentMissing:I

.field currentNonmissing:I

.field nums:[I

.field numsItor:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Iterator;Z)V
    .locals 2
    .param p2, "addEnds"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 1366
    .local p1, "numsItor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1367
    iput-boolean p2, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->addEnds:Z

    .line 1368
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1371
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->currentNonmissing:I

    .line 1372
    if-eqz p2, :cond_0

    .line 1373
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->currentMissing:I

    goto :goto_0

    .line 1375
    :cond_0
    iput v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->currentMissing:I

    .line 1377
    :goto_0
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->numsItor:Ljava/util/Iterator;

    .line 1380
    const/high16 v0, -0x80000000

    .line 1381
    .local v0, "unused":I
    iput v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->currentIndex:I

    .line 1382
    return-void

    .line 1369
    .end local v0    # "unused":I
    :cond_1
    new-instance v0, Ljava/lang/Error;

    const-string v1, "No elements in numsItor"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>([IZ)V
    .locals 3
    .param p1, "nums"    # [I
    .param p2, "addEnds"    # Z

    .line 1342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1343
    iput-boolean p2, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->addEnds:Z

    .line 1345
    array-length v0, p1

    new-array v0, v0, [I

    .line 1346
    .local v0, "numsCopy":[I
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1347
    move-object p1, v0

    .line 1349
    .end local v0    # "numsCopy":[I
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 1350
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->nums:[I

    .line 1351
    iput v2, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->currentIndex:I

    .line 1352
    aget v0, p1, v2

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->currentNonmissing:I

    .line 1353
    if-eqz p2, :cond_0

    .line 1354
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->currentMissing:I

    goto :goto_0

    .line 1356
    :cond_0
    iput v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->currentMissing:I

    .line 1358
    :goto_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 6

    .line 1386
    iget v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->currentMissing:I

    iget v1, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->currentNonmissing:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 1387
    return v2

    .line 1390
    :cond_0
    const/4 v3, 0x0

    if-ne v0, v1, :cond_8

    .line 1391
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->nums:[I

    if-eqz v1, :cond_3

    .line 1395
    iget v4, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->currentIndex:I

    add-int/2addr v4, v2

    .line 1396
    .local v4, "currentIndex_temp":I
    iput v4, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->currentIndex:I

    .line 1397
    array-length v5, v1

    if-lt v4, v5, :cond_2

    .line 1398
    iget-boolean v1, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->addEnds:Z

    if-eqz v1, :cond_1

    .line 1399
    add-int/2addr v0, v2

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->currentMissing:I

    .line 1400
    return v2

    .line 1402
    :cond_1
    return v3

    .line 1405
    :cond_2
    aget v0, v1, v4

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->currentNonmissing:I

    .line 1406
    .end local v4    # "currentIndex_temp":I
    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->numsItor:Ljava/util/Iterator;

    if-eqz v0, :cond_7

    .line 1407
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1408
    iget-boolean v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->addEnds:Z

    if-eqz v0, :cond_4

    .line 1409
    iget v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->currentMissing:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->currentMissing:I

    .line 1410
    return v2

    .line 1412
    :cond_4
    return v3

    .line 1416
    :cond_5
    iget v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->currentNonmissing:I

    .line 1417
    .local v0, "prevNonmissing":I
    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->numsItor:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->currentNonmissing:I

    .line 1418
    if-ge v0, v1, :cond_6

    .line 1425
    .end local v0    # "prevNonmissing":I
    nop

    .line 1428
    :goto_0
    iget v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->currentMissing:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->currentMissing:I

    .line 1429
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->hasNext()Z

    move-result v0

    return v0

    .line 1419
    .restart local v0    # "prevNonmissing":I
    :cond_6
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-sorted Iterator supplied to MissingNumbersIteratorInt: prevNonmissing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currentNonmissing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->currentNonmissing:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1426
    .end local v0    # "prevNonmissing":I
    :cond_7
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Can\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1431
    :cond_8
    iget-boolean v4, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->addEnds:Z

    if-eqz v4, :cond_a

    .line 1432
    add-int/2addr v1, v2

    if-ne v0, v1, :cond_9

    goto :goto_1

    :cond_9
    move v2, v3

    :goto_1
    return v2

    .line 1434
    :cond_a
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t happen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->currentMissing:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->currentNonmissing:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public next()Ljava/lang/Integer;
    .locals 2

    .line 1440
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1443
    iget v0, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->currentMissing:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1444
    .local v0, "result":Ljava/lang/Integer;
    iget v1, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->currentMissing:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->currentMissing:I

    .line 1445
    return-object v0

    .line 1441
    .end local v0    # "result":Ljava/lang/Integer;
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1318
    invoke-virtual {p0}, Lorg/checkerframework/org/plumelib/util/MathPlume$MissingNumbersIteratorInt;->next()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1450
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
