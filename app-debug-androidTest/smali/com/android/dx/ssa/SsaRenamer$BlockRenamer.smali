.class Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;
.super Ljava/lang/Object;
.source "SsaRenamer.java"

# interfaces
.implements Lcom/android/dx/ssa/SsaInsn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/ssa/SsaRenamer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockRenamer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;
    }
.end annotation


# instance fields
.field private final block:Lcom/android/dx/ssa/SsaBasicBlock;

.field private final currentMapping:[Lcom/android/dx/rop/code/RegisterSpec;

.field private final insnsToReplace:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/dx/ssa/SsaInsn;",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final mapper:Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;

.field private final movesToKeep:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/dx/ssa/SsaRenamer;


# direct methods
.method constructor <init>(Lcom/android/dx/ssa/SsaRenamer;Lcom/android/dx/ssa/SsaBasicBlock;)V
    .locals 2
    .param p2, "block"    # Lcom/android/dx/ssa/SsaBasicBlock;

    .line 311
    iput-object p1, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/android/dx/ssa/SsaRenamer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p2, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->block:Lcom/android/dx/ssa/SsaBasicBlock;

    .line 313
    invoke-static {p1}, Lcom/android/dx/ssa/SsaRenamer;->access$000(Lcom/android/dx/ssa/SsaRenamer;)[[Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/android/dx/rop/code/RegisterSpec;

    .line 314
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->movesToKeep:Ljava/util/HashSet;

    .line 315
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->insnsToReplace:Ljava/util/HashMap;

    .line 316
    new-instance v0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;

    invoke-direct {v0, p0}, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;-><init>(Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;)V

    iput-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->mapper:Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;

    .line 319
    invoke-static {p1}, Lcom/android/dx/ssa/SsaRenamer;->access$000(Lcom/android/dx/ssa/SsaRenamer;)[[Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 320
    return-void
.end method

.method static synthetic access$1000(Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;)Lcom/android/dx/ssa/SsaBasicBlock;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;

    .line 278
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->block:Lcom/android/dx/ssa/SsaBasicBlock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;)[Lcom/android/dx/rop/code/RegisterSpec;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;

    .line 278
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/android/dx/rop/code/RegisterSpec;

    return-object v0
.end method

.method private addMapping(ILcom/android/dx/rop/code/RegisterSpec;)V
    .locals 6
    .param p1, "ropReg"    # I
    .param p2, "ssaReg"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 436
    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 437
    .local v0, "ssaRegNum":I
    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v1

    .line 439
    .local v1, "ssaRegLocal":Lcom/android/dx/rop/code/LocalItem;
    iget-object v2, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/android/dx/rop/code/RegisterSpec;

    aput-object p2, v2, p1

    .line 444
    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 445
    iget-object v3, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/android/dx/rop/code/RegisterSpec;

    aget-object v3, v3, v2

    .line 447
    .local v3, "cur":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    if-ne v0, v4, :cond_0

    .line 448
    iget-object v4, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/android/dx/rop/code/RegisterSpec;

    aput-object p2, v4, v2

    .line 444
    .end local v3    # "cur":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 453
    .end local v2    # "i":I
    :cond_1
    if-nez v1, :cond_2

    .line 454
    return-void

    .line 458
    :cond_2
    iget-object v2, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/android/dx/ssa/SsaRenamer;

    invoke-static {v2, p2}, Lcom/android/dx/ssa/SsaRenamer;->access$400(Lcom/android/dx/ssa/SsaRenamer;Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 461
    iget-object v2, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/android/dx/rop/code/RegisterSpec;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_1
    if-ltz v2, :cond_4

    .line 462
    iget-object v3, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/android/dx/rop/code/RegisterSpec;

    aget-object v3, v3, v2

    .line 464
    .restart local v3    # "cur":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    if-eq v0, v4, :cond_3

    .line 465
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 466
    iget-object v4, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/android/dx/rop/code/RegisterSpec;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/dx/rop/code/RegisterSpec;->withLocalItem(Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    aput-object v5, v4, v2

    .line 461
    .end local v3    # "cur":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 469
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method private updateSuccessorPhis()V
    .locals 4

    .line 633
    new-instance v0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$1;

    invoke-direct {v0, p0}, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$1;-><init>(Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;)V

    .line 659
    .local v0, "visitor":Lcom/android/dx/ssa/PhiInsn$Visitor;
    iget-object v1, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->block:Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v1

    .line 660
    .local v1, "successors":Ljava/util/BitSet;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 662
    iget-object v3, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/android/dx/ssa/SsaRenamer;

    invoke-static {v3}, Lcom/android/dx/ssa/SsaRenamer;->access$1100(Lcom/android/dx/ssa/SsaRenamer;)Lcom/android/dx/ssa/SsaMethod;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 663
    .local v3, "successor":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-virtual {v3, v0}, Lcom/android/dx/ssa/SsaBasicBlock;->forEachPhiInsn(Lcom/android/dx/ssa/PhiInsn$Visitor;)V

    .line 661
    .end local v3    # "successor":Lcom/android/dx/ssa/SsaBasicBlock;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    goto :goto_0

    .line 665
    .end local v2    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public process()V
    .locals 8

    .line 375
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->block:Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v0, p0}, Lcom/android/dx/ssa/SsaBasicBlock;->forEachInsn(Lcom/android/dx/ssa/SsaInsn$Visitor;)V

    .line 377
    invoke-direct {p0}, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->updateSuccessorPhis()V

    .line 380
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->block:Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    .line 381
    .local v0, "insns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaInsn;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 383
    .local v1, "szInsns":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 384
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/ssa/SsaInsn;

    .line 387
    .local v3, "insn":Lcom/android/dx/ssa/SsaInsn;
    iget-object v4, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->insnsToReplace:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dx/ssa/SsaInsn;

    .line 389
    .local v4, "replaceInsn":Lcom/android/dx/ssa/SsaInsn;
    if-eqz v4, :cond_0

    .line 390
    invoke-virtual {v0, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 391
    :cond_0
    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaInsn;->isNormalMoveInsn()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->movesToKeep:Ljava/util/HashSet;

    .line 392
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 393
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 383
    .end local v3    # "insn":Lcom/android/dx/ssa/SsaInsn;
    .end local v4    # "replaceInsn":Lcom/android/dx/ssa/SsaInsn;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 398
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x1

    .line 399
    .local v2, "first":Z
    iget-object v3, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->block:Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->getDomChildren()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 400
    .local v4, "child":Lcom/android/dx/ssa/SsaBasicBlock;
    iget-object v5, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->block:Lcom/android/dx/ssa/SsaBasicBlock;

    if-eq v4, v5, :cond_4

    .line 402
    iget-object v5, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/android/dx/rop/code/RegisterSpec;

    if-eqz v2, :cond_3

    goto :goto_3

    .line 403
    :cond_3
    invoke-static {v5}, Lcom/android/dx/ssa/SsaRenamer;->access$300([Lcom/android/dx/rop/code/RegisterSpec;)[Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    :goto_3
    nop

    .line 405
    .local v5, "childStart":[Lcom/android/dx/rop/code/RegisterSpec;
    iget-object v6, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/android/dx/ssa/SsaRenamer;

    invoke-static {v6}, Lcom/android/dx/ssa/SsaRenamer;->access$000(Lcom/android/dx/ssa/SsaRenamer;)[[Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v7

    aput-object v5, v6, v7

    .line 406
    const/4 v2, 0x0

    .line 408
    .end local v4    # "child":Lcom/android/dx/ssa/SsaBasicBlock;
    .end local v5    # "childStart":[Lcom/android/dx/rop/code/RegisterSpec;
    :cond_4
    goto :goto_2

    .line 411
    :cond_5
    return-void
.end method

.method processResultReg(Lcom/android/dx/ssa/SsaInsn;)V
    .locals 3
    .param p1, "insn"    # Lcom/android/dx/ssa/SsaInsn;

    .line 607
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 609
    .local v0, "ropResult":Lcom/android/dx/rop/code/RegisterSpec;
    if-nez v0, :cond_0

    .line 610
    return-void

    .line 613
    :cond_0
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    .line 614
    .local v1, "ropReg":I
    iget-object v2, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/android/dx/ssa/SsaRenamer;

    invoke-static {v2, v1}, Lcom/android/dx/ssa/SsaRenamer;->access$800(Lcom/android/dx/ssa/SsaRenamer;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 615
    return-void

    .line 618
    :cond_1
    iget-object v2, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/android/dx/ssa/SsaRenamer;

    invoke-static {v2}, Lcom/android/dx/ssa/SsaRenamer;->access$100(Lcom/android/dx/ssa/SsaRenamer;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/dx/ssa/SsaInsn;->changeResultReg(I)V

    .line 619
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->addMapping(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 625
    iget-object v2, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/android/dx/ssa/SsaRenamer;

    invoke-static {v2}, Lcom/android/dx/ssa/SsaRenamer;->access$108(Lcom/android/dx/ssa/SsaRenamer;)I

    .line 626
    return-void
.end method

.method public visitMoveInsn(Lcom/android/dx/ssa/NormalSsaInsn;)V
    .locals 17
    .param p1, "insn"    # Lcom/android/dx/ssa/NormalSsaInsn;

    .line 498
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 499
    .local v2, "ropResult":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    .line 500
    .local v3, "ropResultReg":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    .line 502
    .local v4, "ropSourceReg":I
    iget-object v6, v0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->mapper:Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;

    invoke-virtual {v1, v6}, Lcom/android/dx/ssa/NormalSsaInsn;->mapSourceRegisters(Lcom/android/dx/ssa/RegisterMapper;)V

    .line 503
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    .line 505
    .local v6, "ssaSourceReg":I
    iget-object v7, v0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->currentMapping:[Lcom/android/dx/rop/code/RegisterSpec;

    aget-object v7, v7, v4

    .line 506
    invoke-virtual {v7}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v7

    .line 507
    .local v7, "sourceLocal":Lcom/android/dx/rop/code/LocalItem;
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v8

    .line 516
    .local v8, "resultLocal":Lcom/android/dx/rop/code/LocalItem;
    if-nez v8, :cond_0

    move-object v9, v7

    goto :goto_0

    :cond_0
    move-object v9, v8

    .line 518
    .local v9, "newLocal":Lcom/android/dx/rop/code/LocalItem;
    :goto_0
    iget-object v10, v0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/android/dx/ssa/SsaRenamer;

    invoke-static {v10, v6}, Lcom/android/dx/ssa/SsaRenamer;->access$500(Lcom/android/dx/ssa/SsaRenamer;I)Lcom/android/dx/rop/code/LocalItem;

    move-result-object v10

    .line 524
    .local v10, "associatedLocal":Lcom/android/dx/rop/code/LocalItem;
    if-eqz v10, :cond_1

    if-eqz v9, :cond_1

    .line 526
    invoke-virtual {v9, v10}, Lcom/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_1
    const/4 v5, 0x1

    .line 538
    .local v5, "onlyOneAssociatedLocal":Z
    :cond_2
    nop

    .line 540
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v11

    .line 539
    invoke-static {v6, v11, v9}, Lcom/android/dx/rop/code/RegisterSpec;->makeLocalOptional(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v11

    .line 542
    .local v11, "ssaReg":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-static {}, Lcom/android/dx/ssa/Optimizer;->getPreserveLocals()Z

    move-result v12

    if-eqz v12, :cond_6

    if-eqz v5, :cond_3

    .line 543
    invoke-static {v9, v7}, Lcom/android/dx/ssa/SsaRenamer;->access$600(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, v0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/android/dx/ssa/SsaRenamer;

    .line 544
    invoke-static {v12}, Lcom/android/dx/ssa/SsaRenamer;->access$700(Lcom/android/dx/ssa/SsaRenamer;)I

    move-result v12

    if-nez v12, :cond_3

    move-object/from16 v16, v2

    goto :goto_2

    .line 552
    :cond_3
    if-eqz v5, :cond_5

    if-nez v7, :cond_5

    iget-object v12, v0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->this$0:Lcom/android/dx/ssa/SsaRenamer;

    .line 553
    invoke-static {v12}, Lcom/android/dx/ssa/SsaRenamer;->access$700(Lcom/android/dx/ssa/SsaRenamer;)I

    move-result v12

    if-nez v12, :cond_4

    .line 559
    nop

    .line 560
    invoke-virtual {v11}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v12

    .line 561
    invoke-virtual {v11}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v13

    .line 560
    invoke-static {v12, v13, v9}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v12

    .line 559
    invoke-static {v12}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v12

    .line 563
    .local v12, "ssaSources":Lcom/android/dx/rop/code/RegisterSpecList;
    new-instance v13, Lcom/android/dx/rop/code/PlainInsn;

    .line 565
    invoke-static {v11}, Lcom/android/dx/rop/code/Rops;->opMarkLocal(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v14

    sget-object v15, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    move-object/from16 v16, v2

    .end local v2    # "ropResult":Lcom/android/dx/rop/code/RegisterSpec;
    .local v16, "ropResult":Lcom/android/dx/rop/code/RegisterSpec;
    const/4 v2, 0x0

    invoke-direct {v13, v14, v15, v2, v12}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    iget-object v2, v0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->block:Lcom/android/dx/ssa/SsaBasicBlock;

    .line 564
    invoke-static {v13, v2}, Lcom/android/dx/ssa/SsaInsn;->makeFromRop(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v2

    .line 568
    .local v2, "newInsn":Lcom/android/dx/ssa/SsaInsn;
    iget-object v13, v0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->insnsToReplace:Ljava/util/HashMap;

    invoke-virtual {v13, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    invoke-direct {v0, v3, v11}, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->addMapping(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 572
    .end local v2    # "newInsn":Lcom/android/dx/ssa/SsaInsn;
    .end local v12    # "ssaSources":Lcom/android/dx/rop/code/RegisterSpecList;
    goto :goto_3

    .line 553
    .end local v16    # "ropResult":Lcom/android/dx/rop/code/RegisterSpec;
    .local v2, "ropResult":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_4
    move-object/from16 v16, v2

    .end local v2    # "ropResult":Lcom/android/dx/rop/code/RegisterSpec;
    .restart local v16    # "ropResult":Lcom/android/dx/rop/code/RegisterSpec;
    goto :goto_1

    .line 552
    .end local v16    # "ropResult":Lcom/android/dx/rop/code/RegisterSpec;
    .restart local v2    # "ropResult":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_5
    move-object/from16 v16, v2

    .line 577
    .end local v2    # "ropResult":Lcom/android/dx/rop/code/RegisterSpec;
    .restart local v16    # "ropResult":Lcom/android/dx/rop/code/RegisterSpec;
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->processResultReg(Lcom/android/dx/ssa/SsaInsn;)V

    .line 579
    iget-object v2, v0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->movesToKeep:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 542
    .end local v16    # "ropResult":Lcom/android/dx/rop/code/RegisterSpec;
    .restart local v2    # "ropResult":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_6
    move-object/from16 v16, v2

    .line 551
    .end local v2    # "ropResult":Lcom/android/dx/rop/code/RegisterSpec;
    .restart local v16    # "ropResult":Lcom/android/dx/rop/code/RegisterSpec;
    :goto_2
    invoke-direct {v0, v3, v11}, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->addMapping(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 581
    :goto_3
    return-void
.end method

.method public visitNonMoveInsn(Lcom/android/dx/ssa/NormalSsaInsn;)V
    .locals 1
    .param p1, "insn"    # Lcom/android/dx/ssa/NormalSsaInsn;

    .line 594
    iget-object v0, p0, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->mapper:Lcom/android/dx/ssa/SsaRenamer$BlockRenamer$RenamingMapper;

    invoke-virtual {p1, v0}, Lcom/android/dx/ssa/NormalSsaInsn;->mapSourceRegisters(Lcom/android/dx/ssa/RegisterMapper;)V

    .line 596
    invoke-virtual {p0, p1}, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->processResultReg(Lcom/android/dx/ssa/SsaInsn;)V

    .line 597
    return-void
.end method

.method public visitPhiInsn(Lcom/android/dx/ssa/PhiInsn;)V
    .locals 0
    .param p1, "phi"    # Lcom/android/dx/ssa/PhiInsn;

    .line 479
    invoke-virtual {p0, p1}, Lcom/android/dx/ssa/SsaRenamer$BlockRenamer;->processResultReg(Lcom/android/dx/ssa/SsaInsn;)V

    .line 480
    return-void
.end method
