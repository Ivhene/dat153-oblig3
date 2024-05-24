.class public Lcom/android/dx/dex/code/LocalList$MakeState;
.super Ljava/lang/Object;
.source "LocalList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/dex/code/LocalList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MakeState"
.end annotation


# instance fields
.field private endIndices:[I

.field private final lastAddress:I

.field private nullResultCount:I

.field private regs:Lcom/android/dx/rop/code/RegisterSpecSet;

.field private final result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/dex/code/LocalList$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialSize"    # I

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    .line 480
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->nullResultCount:I

    .line 481
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/android/dx/rop/code/RegisterSpecSet;

    .line 482
    iput-object v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    .line 483
    iput v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->lastAddress:I

    .line 484
    return-void
.end method

.method private aboutToProcess(II)V
    .locals 7
    .param p1, "address"    # I
    .param p2, "reg"    # I

    .line 494
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 496
    .local v2, "first":Z
    :goto_0
    iget v3, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->lastAddress:I

    if-ne p1, v3, :cond_1

    if-nez v2, :cond_1

    .line 497
    return-void

    .line 500
    :cond_1
    if-lt p1, v3, :cond_5

    .line 504
    if-nez v2, :cond_2

    array-length v0, v0

    if-lt p2, v0, :cond_4

    .line 511
    :cond_2
    add-int/lit8 v0, p2, 0x1

    .line 512
    .local v0, "newSz":I
    new-instance v3, Lcom/android/dx/rop/code/RegisterSpecSet;

    invoke-direct {v3, v0}, Lcom/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    .line 513
    .local v3, "newRegs":Lcom/android/dx/rop/code/RegisterSpecSet;
    new-array v4, v0, [I

    .line 514
    .local v4, "newEnds":[I
    const/4 v5, -0x1

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    .line 516
    if-nez v2, :cond_3

    .line 517
    iget-object v5, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v3, v5}, Lcom/android/dx/rop/code/RegisterSpecSet;->putAll(Lcom/android/dx/rop/code/RegisterSpecSet;)V

    .line 518
    iget-object v5, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    array-length v6, v5

    invoke-static {v5, v1, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 522
    :cond_3
    iput-object v3, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/android/dx/rop/code/RegisterSpecSet;

    .line 523
    iput-object v4, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    .line 525
    .end local v0    # "newSz":I
    .end local v3    # "newRegs":Lcom/android/dx/rop/code/RegisterSpecSet;
    .end local v4    # "newEnds":[I
    :cond_4
    return-void

    .line 501
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private add(ILcom/android/dx/dex/code/LocalList$Disposition;Lcom/android/dx/rop/code/RegisterSpec;)V
    .locals 3
    .param p1, "address"    # I
    .param p2, "disposition"    # Lcom/android/dx/dex/code/LocalList$Disposition;
    .param p3, "spec"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 850
    invoke-virtual {p3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 852
    .local v0, "regNum":I
    iget-object v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/dx/dex/code/LocalList$Entry;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/dx/dex/code/LocalList$Entry;-><init>(ILcom/android/dx/dex/code/LocalList$Disposition;Lcom/android/dx/rop/code/RegisterSpec;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    sget-object v1, Lcom/android/dx/dex/code/LocalList$Disposition;->START:Lcom/android/dx/dex/code/LocalList$Disposition;

    if-ne p2, v1, :cond_0

    .line 855
    iget-object v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v1, p3}, Lcom/android/dx/rop/code/RegisterSpecSet;->put(Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 856
    iget-object v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    goto :goto_0

    .line 858
    :cond_0
    iget-object v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v1, p3}, Lcom/android/dx/rop/code/RegisterSpecSet;->remove(Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 859
    iget-object v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    iget-object v2, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    .line 861
    :goto_0
    return-void
.end method

.method private addOrUpdateEnd(ILcom/android/dx/dex/code/LocalList$Disposition;Lcom/android/dx/rop/code/RegisterSpec;)V
    .locals 5
    .param p1, "address"    # I
    .param p2, "disposition"    # Lcom/android/dx/dex/code/LocalList$Disposition;
    .param p3, "spec"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 874
    sget-object v0, Lcom/android/dx/dex/code/LocalList$Disposition;->START:Lcom/android/dx/dex/code/LocalList$Disposition;

    if-eq p2, v0, :cond_1

    .line 878
    invoke-virtual {p3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 879
    .local v0, "regNum":I
    iget-object v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    aget v1, v1, v0

    .line 881
    .local v1, "endAt":I
    if-ltz v1, :cond_0

    .line 883
    iget-object v2, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/dex/code/LocalList$Entry;

    .line 884
    .local v2, "endEntry":Lcom/android/dx/dex/code/LocalList$Entry;
    invoke-virtual {v2}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 885
    invoke-virtual {v2}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegisterSpec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/dx/rop/code/RegisterSpec;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 890
    iget-object v3, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Lcom/android/dx/dex/code/LocalList$Entry;->withDisposition(Lcom/android/dx/dex/code/LocalList$Disposition;)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 891
    iget-object v3, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v3, p3}, Lcom/android/dx/rop/code/RegisterSpecSet;->remove(Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 892
    return-void

    .line 896
    .end local v2    # "endEntry":Lcom/android/dx/dex/code/LocalList$Entry;
    :cond_0
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/dx/dex/code/LocalList$MakeState;->endLocal(ILcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/dex/code/LocalList$Disposition;)V

    .line 897
    return-void

    .line 875
    .end local v0    # "regNum":I
    .end local v1    # "endAt":I
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkForEmptyRange(ILcom/android/dx/rop/code/RegisterSpec;)Z
    .locals 7
    .param p1, "address"    # I
    .param p2, "endedLocal"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 752
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 756
    .local v0, "at":I
    :goto_0
    if-ltz v0, :cond_3

    .line 757
    iget-object v2, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/dex/code/LocalList$Entry;

    .line 759
    .local v2, "entry":Lcom/android/dx/dex/code/LocalList$Entry;
    if-nez v2, :cond_0

    .line 760
    goto :goto_1

    .line 763
    :cond_0
    invoke-virtual {v2}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v3

    if-eq v3, p1, :cond_1

    .line 765
    const/4 v1, 0x0

    return v1

    .line 768
    :cond_1
    invoke-virtual {v2, p2}, Lcom/android/dx/dex/code/LocalList$Entry;->matches(Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 769
    goto :goto_2

    .line 756
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 778
    .end local v2    # "entry":Lcom/android/dx/dex/code/LocalList$Entry;
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v2, p2}, Lcom/android/dx/rop/code/RegisterSpecSet;->remove(Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 779
    iget-object v2, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 780
    iget v2, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->nullResultCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->nullResultCount:I

    .line 782
    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    .line 783
    .local v2, "regNum":I
    const/4 v3, 0x0

    .line 784
    .local v3, "found":Z
    const/4 v4, 0x0

    .line 787
    .local v4, "entry":Lcom/android/dx/dex/code/LocalList$Entry;
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_6

    .line 788
    iget-object v5, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Lcom/android/dx/dex/code/LocalList$Entry;

    .line 790
    if-nez v4, :cond_5

    .line 791
    goto :goto_3

    .line 794
    :cond_5
    invoke-virtual {v4}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegisterSpec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    if-ne v5, v2, :cond_4

    .line 795
    const/4 v3, 0x1

    .line 796
    nop

    .line 800
    :cond_6
    if-eqz v3, :cond_7

    .line 802
    iget-object v5, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    aput v0, v5, v2

    .line 804
    invoke-virtual {v4}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v5

    if-ne v5, p1, :cond_7

    .line 809
    iget-object v5, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    sget-object v6, Lcom/android/dx/dex/code/LocalList$Disposition;->END_SIMPLY:Lcom/android/dx/dex/code/LocalList$Disposition;

    .line 810
    invoke-virtual {v4, v6}, Lcom/android/dx/dex/code/LocalList$Entry;->withDisposition(Lcom/android/dx/dex/code/LocalList$Disposition;)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object v6

    .line 809
    invoke-virtual {v5, v0, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 814
    :cond_7
    return v1
.end method

.method private static filterSpec(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;
    .locals 2
    .param p0, "orig"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 833
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    sget-object v1, Lcom/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/android/dx/rop/type/Type;

    if-ne v0, v1, :cond_0

    .line 834
    sget-object v0, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/RegisterSpec;->withType(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    return-object v0

    .line 837
    :cond_0
    return-object p0
.end method


# virtual methods
.method public endLocal(ILcom/android/dx/rop/code/RegisterSpec;)V
    .locals 1
    .param p1, "address"    # I
    .param p2, "endedLocal"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 695
    sget-object v0, Lcom/android/dx/dex/code/LocalList$Disposition;->END_SIMPLY:Lcom/android/dx/dex/code/LocalList$Disposition;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/dx/dex/code/LocalList$MakeState;->endLocal(ILcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/dex/code/LocalList$Disposition;)V

    .line 696
    return-void
.end method

.method public endLocal(ILcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/dex/code/LocalList$Disposition;)V
    .locals 3
    .param p1, "address"    # I
    .param p2, "endedLocal"    # Lcom/android/dx/rop/code/RegisterSpec;
    .param p3, "disposition"    # Lcom/android/dx/dex/code/LocalList$Disposition;

    .line 712
    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 714
    .local v0, "regNum":I
    invoke-static {p2}, Lcom/android/dx/dex/code/LocalList$MakeState;->filterSpec(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object p2

    .line 715
    invoke-direct {p0, p1, v0}, Lcom/android/dx/dex/code/LocalList$MakeState;->aboutToProcess(II)V

    .line 717
    iget-object v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    aget v1, v1, v0

    .line 719
    .local v1, "endAt":I
    if-ltz v1, :cond_0

    .line 724
    return-void

    .line 728
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/dx/dex/code/LocalList$MakeState;->checkForEmptyRange(ILcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 729
    return-void

    .line 732
    :cond_1
    invoke-direct {p0, p1, p3, p2}, Lcom/android/dx/dex/code/LocalList$MakeState;->add(ILcom/android/dx/dex/code/LocalList$Disposition;Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 733
    return-void
.end method

.method public finish()Lcom/android/dx/dex/code/LocalList;
    .locals 7

    .line 905
    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/code/LocalList$MakeState;->aboutToProcess(II)V

    .line 907
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 908
    .local v0, "resultSz":I
    iget v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->nullResultCount:I

    sub-int v1, v0, v1

    .line 910
    .local v1, "finalSz":I
    if-nez v1, :cond_0

    .line 911
    sget-object v2, Lcom/android/dx/dex/code/LocalList;->EMPTY:Lcom/android/dx/dex/code/LocalList;

    return-object v2

    .line 922
    :cond_0
    new-array v2, v1, [Lcom/android/dx/dex/code/LocalList$Entry;

    .line 924
    .local v2, "resultArr":[Lcom/android/dx/dex/code/LocalList$Entry;
    if-ne v0, v1, :cond_1

    .line 925
    iget-object v3, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_1

    .line 927
    :cond_1
    const/4 v3, 0x0

    .line 928
    .local v3, "at":I
    iget-object v4, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dx/dex/code/LocalList$Entry;

    .line 929
    .local v5, "e":Lcom/android/dx/dex/code/LocalList$Entry;
    if-eqz v5, :cond_2

    .line 930
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "at":I
    .local v6, "at":I
    aput-object v5, v2, v3

    move v3, v6

    .line 932
    .end local v5    # "e":Lcom/android/dx/dex/code/LocalList$Entry;
    .end local v6    # "at":I
    .restart local v3    # "at":I
    :cond_2
    goto :goto_0

    .line 935
    .end local v3    # "at":I
    :cond_3
    :goto_1
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 937
    new-instance v3, Lcom/android/dx/dex/code/LocalList;

    invoke-direct {v3, v1}, Lcom/android/dx/dex/code/LocalList;-><init>(I)V

    .line 939
    .local v3, "resultList":Lcom/android/dx/dex/code/LocalList;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v1, :cond_4

    .line 940
    aget-object v5, v2, v4

    invoke-virtual {v3, v4, v5}, Lcom/android/dx/dex/code/LocalList;->set(ILcom/android/dx/dex/code/LocalList$Entry;)V

    .line 939
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 943
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {v3}, Lcom/android/dx/dex/code/LocalList;->setImmutable()V

    .line 944
    return-object v3
.end method

.method public snapshot(ILcom/android/dx/rop/code/RegisterSpecSet;)V
    .locals 5
    .param p1, "address"    # I
    .param p2, "specs"    # Lcom/android/dx/rop/code/RegisterSpecSet;

    .line 540
    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpecSet;->getMaxSize()I

    move-result v0

    .line 541
    .local v0, "sz":I
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, p1, v1}, Lcom/android/dx/dex/code/LocalList$MakeState;->aboutToProcess(II)V

    .line 543
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 544
    iget-object v2, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v2, v1}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 545
    .local v2, "oldSpec":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {p2, v1}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-static {v3}, Lcom/android/dx/dex/code/LocalList$MakeState;->filterSpec(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 547
    .local v3, "newSpec":Lcom/android/dx/rop/code/RegisterSpec;
    if-nez v2, :cond_0

    .line 548
    if-eqz v3, :cond_2

    .line 549
    invoke-virtual {p0, p1, v3}, Lcom/android/dx/dex/code/LocalList$MakeState;->startLocal(ILcom/android/dx/rop/code/RegisterSpec;)V

    goto :goto_1

    .line 551
    :cond_0
    if-nez v3, :cond_1

    .line 552
    invoke-virtual {p0, p1, v2}, Lcom/android/dx/dex/code/LocalList$MakeState;->endLocal(ILcom/android/dx/rop/code/RegisterSpec;)V

    goto :goto_1

    .line 553
    :cond_1
    invoke-virtual {v3, v2}, Lcom/android/dx/rop/code/RegisterSpec;->equalsUsingSimpleType(Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 554
    invoke-virtual {p0, p1, v2}, Lcom/android/dx/dex/code/LocalList$MakeState;->endLocal(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 555
    invoke-virtual {p0, p1, v3}, Lcom/android/dx/dex/code/LocalList$MakeState;->startLocal(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 543
    .end local v2    # "oldSpec":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v3    # "newSpec":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public startLocal(ILcom/android/dx/rop/code/RegisterSpec;)V
    .locals 7
    .param p1, "address"    # I
    .param p2, "startedLocal"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 576
    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 578
    .local v0, "regNum":I
    invoke-static {p2}, Lcom/android/dx/dex/code/LocalList$MakeState;->filterSpec(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object p2

    .line 579
    invoke-direct {p0, p1, v0}, Lcom/android/dx/dex/code/LocalList$MakeState;->aboutToProcess(II)V

    .line 581
    iget-object v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v1, v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 583
    .local v1, "existingLocal":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {p2, v1}, Lcom/android/dx/rop/code/RegisterSpec;->equalsUsingSimpleType(Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 585
    return-void

    .line 588
    :cond_0
    iget-object v2, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v2, p2}, Lcom/android/dx/rop/code/RegisterSpecSet;->findMatchingLocal(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 589
    .local v2, "movedLocal":Lcom/android/dx/rop/code/RegisterSpec;
    if-eqz v2, :cond_1

    .line 594
    sget-object v3, Lcom/android/dx/dex/code/LocalList$Disposition;->END_MOVED:Lcom/android/dx/dex/code/LocalList$Disposition;

    invoke-direct {p0, p1, v3, v2}, Lcom/android/dx/dex/code/LocalList$MakeState;->addOrUpdateEnd(ILcom/android/dx/dex/code/LocalList$Disposition;Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 597
    :cond_1
    iget-object v3, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    aget v3, v3, v0

    .line 599
    .local v3, "endAt":I
    if-eqz v1, :cond_2

    .line 604
    sget-object v4, Lcom/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/android/dx/dex/code/LocalList$Disposition;

    invoke-direct {p0, p1, v4, v1}, Lcom/android/dx/dex/code/LocalList$MakeState;->add(ILcom/android/dx/dex/code/LocalList$Disposition;Lcom/android/dx/rop/code/RegisterSpec;)V

    goto :goto_0

    .line 605
    :cond_2
    if-ltz v3, :cond_4

    .line 612
    iget-object v4, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dx/dex/code/LocalList$Entry;

    .line 613
    .local v4, "endEntry":Lcom/android/dx/dex/code/LocalList$Entry;
    invoke-virtual {v4}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v5

    if-ne v5, p1, :cond_4

    .line 614
    invoke-virtual {v4, p2}, Lcom/android/dx/dex/code/LocalList$Entry;->matches(Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 625
    iget-object v5, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 626
    iget v5, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->nullResultCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->nullResultCount:I

    .line 627
    iget-object v5, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/android/dx/rop/code/RegisterSpecSet;

    invoke-virtual {v5, p2}, Lcom/android/dx/rop/code/RegisterSpecSet;->put(Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 628
    iget-object v5, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    const/4 v6, -0x1

    aput v6, v5, v0

    .line 629
    return-void

    .line 637
    :cond_3
    sget-object v5, Lcom/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/android/dx/dex/code/LocalList$Disposition;

    invoke-virtual {v4, v5}, Lcom/android/dx/dex/code/LocalList$Entry;->withDisposition(Lcom/android/dx/dex/code/LocalList$Disposition;)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object v4

    .line 639
    iget-object v5, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    invoke-virtual {v5, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 654
    .end local v4    # "endEntry":Lcom/android/dx/dex/code/LocalList$Entry;
    :cond_4
    :goto_0
    if-lez v0, :cond_5

    .line 655
    iget-object v4, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/android/dx/rop/code/RegisterSpecSet;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 656
    .local v4, "justBelow":Lcom/android/dx/rop/code/RegisterSpec;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->isCategory2()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 657
    sget-object v5, Lcom/android/dx/dex/code/LocalList$Disposition;->END_CLOBBERED_BY_NEXT:Lcom/android/dx/dex/code/LocalList$Disposition;

    invoke-direct {p0, p1, v5, v4}, Lcom/android/dx/dex/code/LocalList$MakeState;->addOrUpdateEnd(ILcom/android/dx/dex/code/LocalList$Disposition;Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 668
    .end local v4    # "justBelow":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_5
    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpec;->isCategory2()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 669
    iget-object v4, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/android/dx/rop/code/RegisterSpecSet;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 670
    .local v4, "justAbove":Lcom/android/dx/rop/code/RegisterSpec;
    if-eqz v4, :cond_6

    .line 671
    sget-object v5, Lcom/android/dx/dex/code/LocalList$Disposition;->END_CLOBBERED_BY_PREV:Lcom/android/dx/dex/code/LocalList$Disposition;

    invoke-direct {p0, p1, v5, v4}, Lcom/android/dx/dex/code/LocalList$MakeState;->addOrUpdateEnd(ILcom/android/dx/dex/code/LocalList$Disposition;Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 683
    .end local v4    # "justAbove":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_6
    sget-object v4, Lcom/android/dx/dex/code/LocalList$Disposition;->START:Lcom/android/dx/dex/code/LocalList$Disposition;

    invoke-direct {p0, p1, v4, p2}, Lcom/android/dx/dex/code/LocalList$MakeState;->add(ILcom/android/dx/dex/code/LocalList$Disposition;Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 684
    return-void
.end method
