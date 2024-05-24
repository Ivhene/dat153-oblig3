.class Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;
.super Ljava/lang/Object;
.source "RopTranslator.java"

# interfaces
.implements Lcom/android/dx/rop/code/Insn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/dex/code/RopTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TranslationVisitor"
.end annotation


# instance fields
.field private block:Lcom/android/dx/rop/code/BasicBlock;

.field private lastAddress:Lcom/android/dx/dex/code/CodeAddress;

.field private final output:Lcom/android/dx/dex/code/OutputCollector;

.field final synthetic this$0:Lcom/android/dx/dex/code/RopTranslator;


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/code/RopTranslator;Lcom/android/dx/dex/code/OutputCollector;)V
    .locals 0
    .param p2, "output"    # Lcom/android/dx/dex/code/OutputCollector;

    .line 513
    iput-object p1, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/android/dx/dex/code/RopTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    iput-object p2, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->output:Lcom/android/dx/dex/code/OutputCollector;

    .line 515
    return-void
.end method

.method private getNextMoveResultPseudo()Lcom/android/dx/rop/code/RegisterSpec;
    .locals 5

    .line 675
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lcom/android/dx/rop/code/BasicBlock;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v0

    .line 677
    .local v0, "label":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 678
    return-object v1

    .line 681
    :cond_0
    iget-object v2, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/android/dx/dex/code/RopTranslator;

    .line 682
    invoke-static {v2}, Lcom/android/dx/dex/code/RopTranslator;->access$500(Lcom/android/dx/dex/code/RopTranslator;)Lcom/android/dx/rop/code/RopMethod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/dx/rop/code/InsnList;->get(I)Lcom/android/dx/rop/code/Insn;

    move-result-object v2

    .line 684
    .local v2, "insn":Lcom/android/dx/rop/code/Insn;
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v3

    const/16 v4, 0x38

    if-eq v3, v4, :cond_1

    .line 685
    return-object v1

    .line 687
    :cond_1
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Insn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected addOutput(Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 1
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 830
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->output:Lcom/android/dx/dex/code/OutputCollector;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/code/OutputCollector;->add(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 831
    return-void
.end method

.method protected addOutputSuffix(Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 1
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 839
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->output:Lcom/android/dx/dex/code/OutputCollector;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/code/OutputCollector;->addSuffix(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 840
    return-void
.end method

.method public setBlock(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/dex/code/CodeAddress;)V
    .locals 0
    .param p1, "block"    # Lcom/android/dx/rop/code/BasicBlock;
    .param p2, "lastAddress"    # Lcom/android/dx/dex/code/CodeAddress;

    .line 525
    iput-object p1, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lcom/android/dx/rop/code/BasicBlock;

    .line 526
    iput-object p2, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/android/dx/dex/code/CodeAddress;

    .line 527
    return-void
.end method

.method public visitFillArrayDataInsn(Lcom/android/dx/rop/code/FillArrayDataInsn;)V
    .locals 9
    .param p1, "insn"    # Lcom/android/dx/rop/code/FillArrayDataInsn;

    .line 800
    invoke-virtual {p1}, Lcom/android/dx/rop/code/FillArrayDataInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v0

    .line 801
    .local v0, "pos":Lcom/android/dx/rop/code/SourcePosition;
    invoke-virtual {p1}, Lcom/android/dx/rop/code/FillArrayDataInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v1

    .line 802
    .local v1, "cst":Lcom/android/dx/rop/cst/Constant;
    invoke-virtual {p1}, Lcom/android/dx/rop/code/FillArrayDataInsn;->getInitValues()Ljava/util/ArrayList;

    move-result-object v2

    .line 803
    .local v2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/cst/Constant;>;"
    invoke-virtual {p1}, Lcom/android/dx/rop/code/FillArrayDataInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v3

    .line 805
    .local v3, "rop":Lcom/android/dx/rop/code/Rop;
    invoke-virtual {v3}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 808
    new-instance v4, Lcom/android/dx/dex/code/CodeAddress;

    invoke-direct {v4, v0}, Lcom/android/dx/dex/code/CodeAddress;-><init>(Lcom/android/dx/rop/code/SourcePosition;)V

    .line 809
    .local v4, "dataAddress":Lcom/android/dx/dex/code/CodeAddress;
    new-instance v5, Lcom/android/dx/dex/code/ArrayData;

    iget-object v6, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/android/dx/dex/code/CodeAddress;

    invoke-direct {v5, v0, v6, v2, v1}, Lcom/android/dx/dex/code/ArrayData;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/dex/code/CodeAddress;Ljava/util/ArrayList;Lcom/android/dx/rop/cst/Constant;)V

    .line 812
    .local v5, "dataInsn":Lcom/android/dx/dex/code/ArrayData;
    new-instance v6, Lcom/android/dx/dex/code/TargetInsn;

    sget-object v7, Lcom/android/dx/dex/code/Dops;->FILL_ARRAY_DATA:Lcom/android/dx/dex/code/Dop;

    .line 813
    invoke-static {p1}, Lcom/android/dx/dex/code/RopTranslator;->access$000(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v8

    invoke-direct {v6, v7, v0, v8, v4}, Lcom/android/dx/dex/code/TargetInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/dex/code/CodeAddress;)V

    .line 816
    .local v6, "fillArrayDataInsn":Lcom/android/dx/dex/code/TargetInsn;
    iget-object v7, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {p0, v7}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 817
    invoke-virtual {p0, v6}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 819
    new-instance v7, Lcom/android/dx/dex/code/OddSpacer;

    invoke-direct {v7, v0}, Lcom/android/dx/dex/code/OddSpacer;-><init>(Lcom/android/dx/rop/code/SourcePosition;)V

    invoke-virtual {p0, v7}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 820
    invoke-virtual {p0, v4}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 821
    invoke-virtual {p0, v5}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 822
    return-void

    .line 806
    .end local v4    # "dataAddress":Lcom/android/dx/dex/code/CodeAddress;
    .end local v5    # "dataInsn":Lcom/android/dx/dex/code/ArrayData;
    .end local v6    # "fillArrayDataInsn":Lcom/android/dx/dex/code/TargetInsn;
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "shouldn\'t happen"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public visitInvokePolymorphicInsn(Lcom/android/dx/rop/code/InvokePolymorphicInsn;)V
    .locals 7
    .param p1, "insn"    # Lcom/android/dx/rop/code/InvokePolymorphicInsn;

    .line 694
    invoke-virtual {p1}, Lcom/android/dx/rop/code/InvokePolymorphicInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v0

    .line 695
    .local v0, "pos":Lcom/android/dx/rop/code/SourcePosition;
    invoke-static {p1}, Lcom/android/dx/dex/code/RopToDop;->dopFor(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/dex/code/Dop;

    move-result-object v1

    .line 696
    .local v1, "opcode":Lcom/android/dx/dex/code/Dop;
    invoke-virtual {p1}, Lcom/android/dx/rop/code/InvokePolymorphicInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v2

    .line 698
    .local v2, "rop":Lcom/android/dx/rop/code/Rop;
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 700
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Rop;->isCallLike()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 704
    iget-object v3, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {p0, v3}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 706
    invoke-virtual {p1}, Lcom/android/dx/rop/code/InvokePolymorphicInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    .line 707
    .local v3, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/android/dx/rop/cst/Constant;

    .line 708
    invoke-virtual {p1}, Lcom/android/dx/rop/code/InvokePolymorphicInsn;->getPolymorphicMethod()Lcom/android/dx/rop/cst/CstMethodRef;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 709
    invoke-virtual {p1}, Lcom/android/dx/rop/code/InvokePolymorphicInsn;->getCallSiteProto()Lcom/android/dx/rop/cst/CstProtoRef;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 711
    .local v4, "constants":[Lcom/android/dx/rop/cst/Constant;
    new-instance v5, Lcom/android/dx/dex/code/MultiCstInsn;

    invoke-direct {v5, v1, v0, v3, v4}, Lcom/android/dx/dex/code/MultiCstInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;[Lcom/android/dx/rop/cst/Constant;)V

    .line 713
    .local v5, "di":Lcom/android/dx/dex/code/DalvInsn;
    invoke-virtual {p0, v5}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 714
    return-void

    .line 701
    .end local v3    # "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    .end local v4    # "constants":[Lcom/android/dx/rop/cst/Constant;
    .end local v5    # "di":Lcom/android/dx/dex/code/DalvInsn;
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Expected call-like operation"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 699
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected BRANCH_THROW got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public visitPlainCstInsn(Lcom/android/dx/rop/code/PlainCstInsn;)V
    .locals 9
    .param p1, "insn"    # Lcom/android/dx/rop/code/PlainCstInsn;

    .line 581
    invoke-virtual {p1}, Lcom/android/dx/rop/code/PlainCstInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v0

    .line 582
    .local v0, "pos":Lcom/android/dx/rop/code/SourcePosition;
    invoke-static {p1}, Lcom/android/dx/dex/code/RopToDop;->dopFor(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/dex/code/Dop;

    move-result-object v1

    .line 583
    .local v1, "opcode":Lcom/android/dx/dex/code/Dop;
    invoke-virtual {p1}, Lcom/android/dx/rop/code/PlainCstInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v2

    .line 584
    .local v2, "rop":Lcom/android/dx/rop/code/Rop;
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v3

    .line 587
    .local v3, "ropOpcode":I
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 591
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 592
    iget-object v4, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/android/dx/dex/code/RopTranslator;

    invoke-static {v4}, Lcom/android/dx/dex/code/RopTranslator;->access$200(Lcom/android/dx/dex/code/RopTranslator;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 598
    invoke-virtual {p1}, Lcom/android/dx/rop/code/PlainCstInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 599
    .local v4, "dest":Lcom/android/dx/rop/code/RegisterSpec;
    nop

    .line 600
    invoke-virtual {p1}, Lcom/android/dx/rop/code/PlainCstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v5

    check-cast v5, Lcom/android/dx/rop/cst/CstInteger;

    invoke-virtual {v5}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v5

    .line 601
    .local v5, "param":I
    iget-object v6, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/android/dx/dex/code/RopTranslator;

    .line 602
    invoke-static {v6}, Lcom/android/dx/dex/code/RopTranslator;->access$300(Lcom/android/dx/dex/code/RopTranslator;)I

    move-result v6

    iget-object v7, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/android/dx/dex/code/RopTranslator;

    invoke-static {v7}, Lcom/android/dx/dex/code/RopTranslator;->access$400(Lcom/android/dx/dex/code/RopTranslator;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v6, v5

    .line 603
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v7

    .line 602
    invoke-static {v6, v7}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    .line 604
    .local v6, "source":Lcom/android/dx/rop/code/RegisterSpec;
    new-instance v7, Lcom/android/dx/dex/code/SimpleInsn;

    .line 605
    invoke-static {v4, v6}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v8

    invoke-direct {v7, v1, v0, v8}, Lcom/android/dx/dex/code/SimpleInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 606
    .local v7, "di":Lcom/android/dx/dex/code/DalvInsn;
    invoke-virtual {p0, v7}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 607
    .end local v4    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v5    # "param":I
    .end local v6    # "source":Lcom/android/dx/rop/code/RegisterSpec;
    goto :goto_0

    .line 610
    .end local v7    # "di":Lcom/android/dx/dex/code/DalvInsn;
    :cond_0
    invoke-static {p1}, Lcom/android/dx/dex/code/RopTranslator;->access$000(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    .line 611
    .local v4, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    new-instance v5, Lcom/android/dx/dex/code/CstInsn;

    invoke-virtual {p1}, Lcom/android/dx/rop/code/PlainCstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v6

    invoke-direct {v5, v1, v0, v4, v6}, Lcom/android/dx/dex/code/CstInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    .line 612
    .local v5, "di":Lcom/android/dx/dex/code/DalvInsn;
    invoke-virtual {p0, v5}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 614
    .end local v4    # "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    .end local v5    # "di":Lcom/android/dx/dex/code/DalvInsn;
    :cond_1
    :goto_0
    return-void

    .line 588
    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "shouldn\'t happen"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public visitPlainInsn(Lcom/android/dx/rop/code/PlainInsn;)V
    .locals 7
    .param p1, "insn"    # Lcom/android/dx/rop/code/PlainInsn;

    .line 532
    invoke-virtual {p1}, Lcom/android/dx/rop/code/PlainInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v0

    .line 533
    .local v0, "rop":Lcom/android/dx/rop/code/Rop;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    const/16 v2, 0x36

    if-ne v1, v2, :cond_0

    .line 538
    return-void

    .line 540
    :cond_0
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_1

    .line 542
    return-void

    .line 545
    :cond_1
    invoke-virtual {p1}, Lcom/android/dx/rop/code/PlainInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v1

    .line 546
    .local v1, "pos":Lcom/android/dx/rop/code/SourcePosition;
    invoke-static {p1}, Lcom/android/dx/dex/code/RopToDop;->dopFor(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/dex/code/Dop;

    move-result-object v2

    .line 549
    .local v2, "opcode":Lcom/android/dx/dex/code/Dop;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 571
    :pswitch_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "shouldn\'t happen"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 565
    :pswitch_1
    iget-object v3, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lcom/android/dx/rop/code/BasicBlock;

    invoke-virtual {v3}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v3

    .line 566
    .local v3, "target":I
    new-instance v4, Lcom/android/dx/dex/code/TargetInsn;

    invoke-static {p1}, Lcom/android/dx/dex/code/RopTranslator;->access$000(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v5

    iget-object v6, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/android/dx/dex/code/RopTranslator;

    .line 567
    invoke-static {v6}, Lcom/android/dx/dex/code/RopTranslator;->access$100(Lcom/android/dx/dex/code/RopTranslator;)Lcom/android/dx/dex/code/BlockAddresses;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/dx/dex/code/BlockAddresses;->getStart(I)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v6

    invoke-direct {v4, v2, v1, v5, v6}, Lcom/android/dx/dex/code/TargetInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/dex/code/CodeAddress;)V

    .line 568
    .local v4, "di":Lcom/android/dx/dex/code/DalvInsn;
    goto :goto_0

    .line 562
    .end local v3    # "target":I
    .end local v4    # "di":Lcom/android/dx/dex/code/DalvInsn;
    :pswitch_2
    return-void

    .line 553
    :pswitch_3
    new-instance v3, Lcom/android/dx/dex/code/SimpleInsn;

    invoke-static {p1}, Lcom/android/dx/dex/code/RopTranslator;->access$000(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    invoke-direct {v3, v2, v1, v4}, Lcom/android/dx/dex/code/SimpleInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    move-object v4, v3

    .line 554
    .restart local v4    # "di":Lcom/android/dx/dex/code/DalvInsn;
    nop

    .line 575
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 576
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public visitSwitchInsn(Lcom/android/dx/rop/code/SwitchInsn;)V
    .locals 13
    .param p1, "insn"    # Lcom/android/dx/rop/code/SwitchInsn;

    .line 619
    invoke-virtual {p1}, Lcom/android/dx/rop/code/SwitchInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v0

    .line 620
    .local v0, "pos":Lcom/android/dx/rop/code/SourcePosition;
    invoke-virtual {p1}, Lcom/android/dx/rop/code/SwitchInsn;->getCases()Lcom/android/dx/util/IntList;

    move-result-object v1

    .line 621
    .local v1, "cases":Lcom/android/dx/util/IntList;
    iget-object v2, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lcom/android/dx/rop/code/BasicBlock;

    invoke-virtual {v2}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v2

    .line 622
    .local v2, "successors":Lcom/android/dx/util/IntList;
    invoke-virtual {v1}, Lcom/android/dx/util/IntList;->size()I

    move-result v3

    .line 623
    .local v3, "casesSz":I
    invoke-virtual {v2}, Lcom/android/dx/util/IntList;->size()I

    move-result v4

    .line 624
    .local v4, "succSz":I
    iget-object v5, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->block:Lcom/android/dx/rop/code/BasicBlock;

    invoke-virtual {v5}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v5

    .line 634
    .local v5, "primarySuccessor":I
    add-int/lit8 v6, v4, -0x1

    if-ne v3, v6, :cond_2

    .line 635
    invoke-virtual {v2, v3}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 639
    new-array v6, v3, [Lcom/android/dx/dex/code/CodeAddress;

    .line 641
    .local v6, "switchTargets":[Lcom/android/dx/dex/code/CodeAddress;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v3, :cond_0

    .line 642
    invoke-virtual {v2, v7}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v8

    .line 643
    .local v8, "label":I
    iget-object v9, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->this$0:Lcom/android/dx/dex/code/RopTranslator;

    invoke-static {v9}, Lcom/android/dx/dex/code/RopTranslator;->access$100(Lcom/android/dx/dex/code/RopTranslator;)Lcom/android/dx/dex/code/BlockAddresses;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/dx/dex/code/BlockAddresses;->getStart(I)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v9

    aput-object v9, v6, v7

    .line 641
    .end local v8    # "label":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 646
    .end local v7    # "i":I
    :cond_0
    new-instance v7, Lcom/android/dx/dex/code/CodeAddress;

    invoke-direct {v7, v0}, Lcom/android/dx/dex/code/CodeAddress;-><init>(Lcom/android/dx/rop/code/SourcePosition;)V

    .line 648
    .local v7, "dataAddress":Lcom/android/dx/dex/code/CodeAddress;
    new-instance v8, Lcom/android/dx/dex/code/CodeAddress;

    iget-object v9, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/android/dx/dex/code/CodeAddress;

    .line 649
    invoke-virtual {v9}, Lcom/android/dx/dex/code/CodeAddress;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Lcom/android/dx/dex/code/CodeAddress;-><init>(Lcom/android/dx/rop/code/SourcePosition;Z)V

    .line 650
    .local v8, "switchAddress":Lcom/android/dx/dex/code/CodeAddress;
    new-instance v9, Lcom/android/dx/dex/code/SwitchData;

    invoke-direct {v9, v0, v8, v1, v6}, Lcom/android/dx/dex/code/SwitchData;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/dex/code/CodeAddress;Lcom/android/dx/util/IntList;[Lcom/android/dx/dex/code/CodeAddress;)V

    .line 652
    .local v9, "dataInsn":Lcom/android/dx/dex/code/SwitchData;
    invoke-virtual {v9}, Lcom/android/dx/dex/code/SwitchData;->isPacked()Z

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Lcom/android/dx/dex/code/Dops;->PACKED_SWITCH:Lcom/android/dx/dex/code/Dop;

    goto :goto_1

    :cond_1
    sget-object v10, Lcom/android/dx/dex/code/Dops;->SPARSE_SWITCH:Lcom/android/dx/dex/code/Dop;

    .line 654
    .local v10, "opcode":Lcom/android/dx/dex/code/Dop;
    :goto_1
    new-instance v11, Lcom/android/dx/dex/code/TargetInsn;

    .line 655
    invoke-static {p1}, Lcom/android/dx/dex/code/RopTranslator;->access$000(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v12

    invoke-direct {v11, v10, v0, v12, v7}, Lcom/android/dx/dex/code/TargetInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/dex/code/CodeAddress;)V

    .line 657
    .local v11, "switchInsn":Lcom/android/dx/dex/code/TargetInsn;
    invoke-virtual {p0, v8}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 658
    invoke-virtual {p0, v11}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 660
    new-instance v12, Lcom/android/dx/dex/code/OddSpacer;

    invoke-direct {v12, v0}, Lcom/android/dx/dex/code/OddSpacer;-><init>(Lcom/android/dx/rop/code/SourcePosition;)V

    invoke-virtual {p0, v12}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 661
    invoke-virtual {p0, v7}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 662
    invoke-virtual {p0, v9}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutputSuffix(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 663
    return-void

    .line 636
    .end local v6    # "switchTargets":[Lcom/android/dx/dex/code/CodeAddress;
    .end local v7    # "dataAddress":Lcom/android/dx/dex/code/CodeAddress;
    .end local v8    # "switchAddress":Lcom/android/dx/dex/code/CodeAddress;
    .end local v9    # "dataInsn":Lcom/android/dx/dex/code/SwitchData;
    .end local v10    # "opcode":Lcom/android/dx/dex/code/Dop;
    .end local v11    # "switchInsn":Lcom/android/dx/dex/code/TargetInsn;
    :cond_2
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "shouldn\'t happen"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public visitThrowingCstInsn(Lcom/android/dx/rop/code/ThrowingCstInsn;)V
    .locals 10
    .param p1, "insn"    # Lcom/android/dx/rop/code/ThrowingCstInsn;

    .line 719
    invoke-virtual {p1}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v0

    .line 720
    .local v0, "pos":Lcom/android/dx/rop/code/SourcePosition;
    invoke-static {p1}, Lcom/android/dx/dex/code/RopToDop;->dopFor(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/dex/code/Dop;

    move-result-object v1

    .line 721
    .local v1, "opcode":Lcom/android/dx/dex/code/Dop;
    invoke-virtual {p1}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v2

    .line 722
    .local v2, "rop":Lcom/android/dx/rop/code/Rop;
    invoke-virtual {p1}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v3

    .line 724
    .local v3, "cst":Lcom/android/dx/rop/cst/Constant;
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    .line 728
    iget-object v4, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {p0, v4}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 730
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Rop;->isCallLike()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 731
    invoke-virtual {p1}, Lcom/android/dx/rop/code/ThrowingCstInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    .line 732
    .local v4, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    new-instance v5, Lcom/android/dx/dex/code/CstInsn;

    invoke-direct {v5, v1, v0, v4, v3}, Lcom/android/dx/dex/code/CstInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    .line 734
    .local v5, "di":Lcom/android/dx/dex/code/DalvInsn;
    invoke-virtual {p0, v5}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 735
    .end local v4    # "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    .end local v5    # "di":Lcom/android/dx/dex/code/DalvInsn;
    goto :goto_3

    .line 736
    :cond_0
    invoke-direct {p0}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->getNextMoveResultPseudo()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 738
    .local v4, "realResult":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-static {p1, v4}, Lcom/android/dx/dex/code/RopTranslator;->access$600(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v5

    .line 741
    .local v5, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-virtual {v1}, Lcom/android/dx/dex/code/Dop;->hasResult()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_2

    .line 742
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v6

    const/16 v9, 0x2b

    if-ne v6, v9, :cond_1

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v8

    .line 744
    .local v6, "hasResult":Z
    :goto_1
    if-eqz v4, :cond_3

    move v7, v8

    :cond_3
    if-ne v6, v7, :cond_5

    .line 750
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v7

    const/16 v8, 0x29

    if-ne v7, v8, :cond_4

    .line 751
    invoke-virtual {v1}, Lcom/android/dx/dex/code/Dop;->getOpcode()I

    move-result v7

    const/16 v8, 0x23

    if-eq v7, v8, :cond_4

    .line 757
    new-instance v7, Lcom/android/dx/dex/code/SimpleInsn;

    invoke-direct {v7, v1, v0, v5}, Lcom/android/dx/dex/code/SimpleInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .local v7, "di":Lcom/android/dx/dex/code/DalvInsn;
    goto :goto_2

    .line 763
    .end local v7    # "di":Lcom/android/dx/dex/code/DalvInsn;
    :cond_4
    new-instance v7, Lcom/android/dx/dex/code/CstInsn;

    invoke-direct {v7, v1, v0, v5, v3}, Lcom/android/dx/dex/code/CstInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    .line 766
    .restart local v7    # "di":Lcom/android/dx/dex/code/DalvInsn;
    :goto_2
    invoke-virtual {p0, v7}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 768
    .end local v4    # "realResult":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v5    # "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    .end local v6    # "hasResult":Z
    .end local v7    # "di":Lcom/android/dx/dex/code/DalvInsn;
    :goto_3
    return-void

    .line 745
    .restart local v4    # "realResult":Lcom/android/dx/rop/code/RegisterSpec;
    .restart local v5    # "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    .restart local v6    # "hasResult":Z
    :cond_5
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Insn with result/move-result-pseudo mismatch "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 725
    .end local v4    # "realResult":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v5    # "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    .end local v6    # "hasResult":Z
    :cond_6
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected BRANCH_THROW got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public visitThrowingInsn(Lcom/android/dx/rop/code/ThrowingInsn;)V
    .locals 7
    .param p1, "insn"    # Lcom/android/dx/rop/code/ThrowingInsn;

    .line 773
    invoke-virtual {p1}, Lcom/android/dx/rop/code/ThrowingInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v0

    .line 774
    .local v0, "pos":Lcom/android/dx/rop/code/SourcePosition;
    invoke-static {p1}, Lcom/android/dx/dex/code/RopToDop;->dopFor(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/dex/code/Dop;

    move-result-object v1

    .line 775
    .local v1, "opcode":Lcom/android/dx/dex/code/Dop;
    invoke-virtual {p1}, Lcom/android/dx/rop/code/ThrowingInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v2

    .line 778
    .local v2, "rop":Lcom/android/dx/rop/code/Rop;
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 782
    invoke-direct {p0}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->getNextMoveResultPseudo()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 784
    .local v3, "realResult":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v1}, Lcom/android/dx/dex/code/Dop;->hasResult()Z

    move-result v4

    if-eqz v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-ne v4, v5, :cond_1

    .line 789
    iget-object v4, p0, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->lastAddress:Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {p0, v4}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 791
    new-instance v4, Lcom/android/dx/dex/code/SimpleInsn;

    .line 792
    invoke-static {p1, v3}, Lcom/android/dx/dex/code/RopTranslator;->access$600(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v5

    invoke-direct {v4, v1, v0, v5}, Lcom/android/dx/dex/code/SimpleInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 794
    .local v4, "di":Lcom/android/dx/dex/code/DalvInsn;
    invoke-virtual {p0, v4}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 795
    return-void

    .line 785
    .end local v4    # "di":Lcom/android/dx/dex/code/DalvInsn;
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insn with result/move-result-pseudo mismatch"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 779
    .end local v3    # "realResult":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "shouldn\'t happen"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
