.class Lcom/android/dx/cf/code/Ropper$SubroutineInliner;
.super Ljava/lang/Object;
.source "Ropper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/cf/code/Ropper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubroutineInliner"
.end annotation


# instance fields
.field private final labelAllocator:Lcom/android/dx/cf/code/Ropper$LabelAllocator;

.field private final labelToSubroutines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/util/IntList;",
            ">;"
        }
    .end annotation
.end field

.field private final origLabelToCopiedLabel:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private subroutineStart:I

.field private subroutineSuccessor:I

.field final synthetic this$0:Lcom/android/dx/cf/code/Ropper;

.field private final workList:Ljava/util/BitSet;


# direct methods
.method constructor <init>(Lcom/android/dx/cf/code/Ropper;Lcom/android/dx/cf/code/Ropper$LabelAllocator;Ljava/util/ArrayList;)V
    .locals 1
    .param p2, "labelAllocator"    # Lcom/android/dx/cf/code/Ropper$LabelAllocator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/cf/code/Ropper$LabelAllocator;",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/util/IntList;",
            ">;)V"
        }
    .end annotation

    .line 1504
    .local p3, "labelToSubroutines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/util/IntList;>;"
    iput-object p1, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->this$0:Lcom/android/dx/cf/code/Ropper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1505
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->origLabelToCopiedLabel:Ljava/util/HashMap;

    .line 1507
    new-instance v0, Ljava/util/BitSet;

    invoke-static {p1}, Lcom/android/dx/cf/code/Ropper;->access$100(Lcom/android/dx/cf/code/Ropper;)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->workList:Ljava/util/BitSet;

    .line 1509
    iput-object p2, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->labelAllocator:Lcom/android/dx/cf/code/Ropper$LabelAllocator;

    .line 1510
    iput-object p3, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->labelToSubroutines:Ljava/util/ArrayList;

    .line 1511
    return-void
.end method

.method private copyBlock(II)V
    .locals 10
    .param p1, "origLabel"    # I
    .param p2, "newLabel"    # I

    .line 1566
    iget-object v0, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->this$0:Lcom/android/dx/cf/code/Ropper;

    invoke-static {v0, p1}, Lcom/android/dx/cf/code/Ropper;->access$300(Lcom/android/dx/cf/code/Ropper;I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v0

    .line 1568
    .local v0, "origBlock":Lcom/android/dx/rop/code/BasicBlock;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v1

    .line 1570
    .local v1, "origSuccessors":Lcom/android/dx/util/IntList;
    const/4 v2, -0x1

    .line 1573
    .local v2, "primarySuccessor":I
    iget-object v3, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->this$0:Lcom/android/dx/cf/code/Ropper;

    invoke-static {v3, v0}, Lcom/android/dx/cf/code/Ropper;->access$600(Lcom/android/dx/cf/code/Ropper;Lcom/android/dx/rop/code/BasicBlock;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1583
    nop

    .line 1584
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->mapOrAllocateLabel(I)I

    move-result v3

    .line 1585
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v4

    .line 1583
    invoke-static {v3, v4}, Lcom/android/dx/util/IntList;->makeImmutable(II)Lcom/android/dx/util/IntList;

    move-result-object v3

    .local v3, "successors":Lcom/android/dx/util/IntList;
    goto/16 :goto_1

    .line 1587
    .end local v3    # "successors":Lcom/android/dx/util/IntList;
    :cond_0
    iget-object v3, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->this$0:Lcom/android/dx/cf/code/Ropper;

    .line 1588
    invoke-static {v3, p1}, Lcom/android/dx/cf/code/Ropper;->access$900(Lcom/android/dx/cf/code/Ropper;I)Lcom/android/dx/cf/code/Ropper$Subroutine;

    move-result-object v3

    move-object v4, v3

    .local v4, "subroutine":Lcom/android/dx/cf/code/Ropper$Subroutine;
    if-eqz v3, :cond_2

    .line 1595
    invoke-static {v4}, Lcom/android/dx/cf/code/Ropper$Subroutine;->access$1000(Lcom/android/dx/cf/code/Ropper$Subroutine;)I

    move-result v3

    iget v5, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->subroutineStart:I

    if-ne v3, v5, :cond_1

    .line 1602
    iget v3, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->subroutineSuccessor:I

    invoke-static {v3}, Lcom/android/dx/util/IntList;->makeImmutable(I)Lcom/android/dx/util/IntList;

    move-result-object v3

    .line 1603
    .restart local v3    # "successors":Lcom/android/dx/util/IntList;
    iget v2, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->subroutineSuccessor:I

    goto :goto_1

    .line 1596
    .end local v3    # "successors":Lcom/android/dx/util/IntList;
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ret instruction returns to label "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1598
    invoke-static {v4}, Lcom/android/dx/cf/code/Ropper$Subroutine;->access$1000(Lcom/android/dx/cf/code/Ropper$Subroutine;)I

    move-result v6

    invoke-static {v6}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " expected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->subroutineStart:I

    .line 1599
    invoke-static {v6}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1607
    :cond_2
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v3

    .line 1608
    .local v3, "origPrimary":I
    invoke-virtual {v1}, Lcom/android/dx/util/IntList;->size()I

    move-result v5

    .line 1610
    .local v5, "sz":I
    new-instance v6, Lcom/android/dx/util/IntList;

    invoke-direct {v6, v5}, Lcom/android/dx/util/IntList;-><init>(I)V

    .line 1612
    .local v6, "successors":Lcom/android/dx/util/IntList;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_4

    .line 1613
    invoke-virtual {v1, v7}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v8

    .line 1614
    .local v8, "origSuccLabel":I
    invoke-direct {p0, v8}, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->mapOrAllocateLabel(I)I

    move-result v9

    .line 1616
    .local v9, "newSuccLabel":I
    invoke-virtual {v6, v9}, Lcom/android/dx/util/IntList;->add(I)V

    .line 1618
    if-ne v3, v8, :cond_3

    .line 1619
    move v2, v9

    .line 1612
    .end local v8    # "origSuccLabel":I
    .end local v9    # "newSuccLabel":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1623
    .end local v7    # "i":I
    :cond_4
    invoke-virtual {v6}, Lcom/android/dx/util/IntList;->setImmutable()V

    move-object v3, v6

    .line 1626
    .end local v4    # "subroutine":Lcom/android/dx/cf/code/Ropper$Subroutine;
    .end local v5    # "sz":I
    .end local v6    # "successors":Lcom/android/dx/util/IntList;
    .local v3, "successors":Lcom/android/dx/util/IntList;
    :goto_1
    iget-object v4, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->this$0:Lcom/android/dx/cf/code/Ropper;

    new-instance v5, Lcom/android/dx/rop/code/BasicBlock;

    iget-object v6, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->this$0:Lcom/android/dx/cf/code/Ropper;

    .line 1628
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/dx/cf/code/Ropper;->access$1100(Lcom/android/dx/cf/code/Ropper;Lcom/android/dx/rop/code/InsnList;)Lcom/android/dx/rop/code/InsnList;

    move-result-object v6

    invoke-direct {v5, p2, v6, v3, v2}, Lcom/android/dx/rop/code/BasicBlock;-><init>(ILcom/android/dx/rop/code/InsnList;Lcom/android/dx/util/IntList;I)V

    iget-object v6, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->labelToSubroutines:Ljava/util/ArrayList;

    .line 1630
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/dx/util/IntList;

    .line 1626
    invoke-static {v4, v5, v6}, Lcom/android/dx/cf/code/Ropper;->access$1200(Lcom/android/dx/cf/code/Ropper;Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/util/IntList;)V

    .line 1631
    return-void
.end method

.method private involvedInSubroutine(II)Z
    .locals 2
    .param p1, "label"    # I
    .param p2, "subroutineStart"    # I

    .line 1643
    iget-object v0, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->labelToSubroutines:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/util/IntList;

    .line 1644
    .local v0, "subroutinesList":Lcom/android/dx/util/IntList;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1645
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->top()I

    move-result v1

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1644
    :goto_0
    return v1
.end method

.method private mapOrAllocateLabel(I)I
    .locals 5
    .param p1, "origLabel"    # I

    .line 1661
    iget-object v0, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->origLabelToCopiedLabel:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1663
    .local v0, "mappedLabel":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1664
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .local v1, "resultLabel":I
    goto :goto_1

    .line 1665
    .end local v1    # "resultLabel":I
    :cond_0
    iget v1, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->subroutineStart:I

    invoke-direct {p0, p1, v1}, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->involvedInSubroutine(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1670
    move v1, p1

    .restart local v1    # "resultLabel":I
    goto :goto_1

    .line 1672
    .end local v1    # "resultLabel":I
    :cond_1
    iget-object v1, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->labelAllocator:Lcom/android/dx/cf/code/Ropper$LabelAllocator;

    invoke-virtual {v1}, Lcom/android/dx/cf/code/Ropper$LabelAllocator;->getNextLabel()I

    move-result v1

    .line 1673
    .restart local v1    # "resultLabel":I
    iget-object v2, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->workList:Ljava/util/BitSet;

    invoke-virtual {v2, p1}, Ljava/util/BitSet;->set(I)V

    .line 1674
    iget-object v2, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->origLabelToCopiedLabel:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1677
    :goto_0
    iget-object v2, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->labelToSubroutines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v1, :cond_2

    .line 1678
    iget-object v2, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->labelToSubroutines:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1680
    :cond_2
    iget-object v2, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->labelToSubroutines:Ljava/util/ArrayList;

    .line 1681
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1680
    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1684
    :goto_1
    return v1
.end method


# virtual methods
.method inlineSubroutineCalledFrom(Lcom/android/dx/rop/code/BasicBlock;)V
    .locals 8
    .param p1, "b"    # Lcom/android/dx/rop/code/BasicBlock;

    .line 1524
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->subroutineSuccessor:I

    .line 1525
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->subroutineStart:I

    .line 1531
    invoke-direct {p0, v0}, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->mapOrAllocateLabel(I)I

    move-result v0

    .line 1533
    .local v0, "newSubStartLabel":I
    iget-object v2, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->workList:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    .local v2, "label":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1535
    iget-object v3, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->workList:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->clear(I)V

    .line 1536
    iget-object v3, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->origLabelToCopiedLabel:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1538
    .local v3, "newLabel":I
    invoke-direct {p0, v2, v3}, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->copyBlock(II)V

    .line 1540
    iget-object v4, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->this$0:Lcom/android/dx/cf/code/Ropper;

    invoke-static {v4, v2}, Lcom/android/dx/cf/code/Ropper;->access$300(Lcom/android/dx/cf/code/Ropper;I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/dx/cf/code/Ropper;->access$600(Lcom/android/dx/cf/code/Ropper;Lcom/android/dx/rop/code/BasicBlock;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1541
    new-instance v4, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;

    iget-object v5, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->this$0:Lcom/android/dx/cf/code/Ropper;

    iget-object v6, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->labelAllocator:Lcom/android/dx/cf/code/Ropper$LabelAllocator;

    iget-object v7, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->labelToSubroutines:Ljava/util/ArrayList;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;-><init>(Lcom/android/dx/cf/code/Ropper;Lcom/android/dx/cf/code/Ropper$LabelAllocator;Ljava/util/ArrayList;)V

    iget-object v5, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->this$0:Lcom/android/dx/cf/code/Ropper;

    .line 1542
    invoke-static {v5, v3}, Lcom/android/dx/cf/code/Ropper;->access$300(Lcom/android/dx/cf/code/Ropper;I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->inlineSubroutineCalledFrom(Lcom/android/dx/rop/code/BasicBlock;)V

    .line 1534
    .end local v3    # "newLabel":I
    :cond_0
    iget-object v3, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->workList:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    goto :goto_0

    .line 1551
    .end local v2    # "label":I
    :cond_1
    iget-object v1, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->this$0:Lcom/android/dx/cf/code/Ropper;

    new-instance v2, Lcom/android/dx/rop/code/BasicBlock;

    .line 1552
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    move-result-object v4

    .line 1553
    invoke-static {v0}, Lcom/android/dx/util/IntList;->makeImmutable(I)Lcom/android/dx/util/IntList;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/android/dx/rop/code/BasicBlock;-><init>(ILcom/android/dx/rop/code/InsnList;Lcom/android/dx/util/IntList;I)V

    iget-object v3, p0, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->labelToSubroutines:Ljava/util/ArrayList;

    .line 1555
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/util/IntList;

    .line 1551
    invoke-static {v1, v2, v3}, Lcom/android/dx/cf/code/Ropper;->access$800(Lcom/android/dx/cf/code/Ropper;Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/util/IntList;)Z

    .line 1556
    return-void
.end method
