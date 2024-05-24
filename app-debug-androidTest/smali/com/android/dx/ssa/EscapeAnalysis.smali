.class public Lcom/android/dx/ssa/EscapeAnalysis;
.super Ljava/lang/Object;
.source "EscapeAnalysis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;,
        Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    }
.end annotation


# instance fields
.field private final latticeValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;",
            ">;"
        }
    .end annotation
.end field

.field private final regCount:I

.field private final ssaMeth:Lcom/android/dx/ssa/SsaMethod;


# direct methods
.method private constructor <init>(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 1
    .param p1, "ssaMeth"    # Lcom/android/dx/ssa/SsaMethod;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    .line 113
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    iput v0, p0, Lcom/android/dx/ssa/EscapeAnalysis;->regCount:I

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/ssa/EscapeAnalysis;)Lcom/android/dx/ssa/SsaMethod;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/ssa/EscapeAnalysis;

    .line 51
    iget-object v0, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dx/ssa/EscapeAnalysis;Lcom/android/dx/ssa/SsaInsn;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dx/ssa/EscapeAnalysis;
    .param p1, "x1"    # Lcom/android/dx/ssa/SsaInsn;

    .line 51
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/EscapeAnalysis;->processInsn(Lcom/android/dx/ssa/SsaInsn;)V

    return-void
.end method

.method private addEdge(Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;)V
    .locals 1
    .param p1, "parentSet"    # Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    .param p2, "childSet"    # Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 172
    iget-object v0, p2, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->parentSets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p2, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->parentSets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_0
    iget-object v0, p1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->childSets:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->childSets:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_1
    return-void
.end method

.method private findSetIndex(Lcom/android/dx/rop/code/RegisterSpec;)I
    .locals 4
    .param p1, "reg"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 128
    .local v1, "e":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    iget-object v2, v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->regSet:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    return v0

    .line 126
    .end local v1    # "e":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_1
    return v0
.end method

.method private getInsnForMove(Lcom/android/dx/ssa/SsaInsn;)Lcom/android/dx/ssa/SsaInsn;
    .locals 3
    .param p1, "moveInsn"    # Lcom/android/dx/ssa/SsaInsn;

    .line 143
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    .line 144
    .local v0, "pred":I
    iget-object v1, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v1

    .line 145
    .local v1, "predInsns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaInsn;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/ssa/SsaInsn;

    return-object v2
.end method

.method private getMoveForInsn(Lcom/android/dx/ssa/SsaInsn;)Lcom/android/dx/ssa/SsaInsn;
    .locals 3
    .param p1, "insn"    # Lcom/android/dx/ssa/SsaInsn;

    .line 156
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    .line 157
    .local v0, "succ":I
    iget-object v2, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v2

    .line 158
    .local v2, "succInsns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaInsn;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/SsaInsn;

    return-object v1
.end method

.method private insertExceptionThrow(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpec;Ljava/util/HashSet;)V
    .locals 20
    .param p1, "insn"    # Lcom/android/dx/ssa/SsaInsn;
    .param p2, "index"    # Lcom/android/dx/rop/code/RegisterSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/ssa/SsaInsn;",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            "Ljava/util/HashSet<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;)V"
        }
    .end annotation

    .line 741
    .local p3, "deletedInsns":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/dx/ssa/SsaInsn;>;"
    move-object/from16 v12, p0

    move-object/from16 v13, p3

    new-instance v0, Lcom/android/dx/rop/cst/CstType;

    sget-object v1, Lcom/android/dx/rop/code/Exceptions;->TYPE_ArrayIndexOutOfBoundsException:Lcom/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/android/dx/rop/cst/CstType;-><init>(Lcom/android/dx/rop/type/Type;)V

    move-object v14, v0

    .line 743
    .local v14, "exception":Lcom/android/dx/rop/cst/CstType;
    sget-object v2, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    const/4 v3, 0x0

    const/16 v4, 0x28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/ssa/EscapeAnalysis;->insertThrowingInsnBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/code/RegisterSpec;ILcom/android/dx/rop/cst/Constant;)V

    .line 747
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v15

    .line 748
    .local v15, "currBlock":Lcom/android/dx/ssa/SsaBasicBlock;
    nop

    .line 749
    invoke-virtual {v15}, Lcom/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessor()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/android/dx/ssa/SsaBasicBlock;->insertNewSuccessor(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v11

    .line 750
    .local v11, "newBlock":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-virtual {v11}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/dx/ssa/SsaInsn;

    .line 751
    .local v16, "newInsn":Lcom/android/dx/ssa/SsaInsn;
    iget-object v0, v12, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    .line 752
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->makeNewSsaReg()I

    move-result v0

    invoke-static {v0, v14}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    .line 753
    .local v10, "newReg":Lcom/android/dx/rop/code/RegisterSpec;
    sget-object v2, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    const/16 v4, 0x38

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/ssa/EscapeAnalysis;->insertPlainInsnBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/code/RegisterSpec;ILcom/android/dx/rop/cst/Constant;)V

    .line 757
    nop

    .line 758
    invoke-virtual {v11}, Lcom/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessor()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/dx/ssa/SsaBasicBlock;->insertNewSuccessor(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v9

    .line 759
    .local v9, "newBlock2":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-virtual {v9}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/dx/ssa/SsaInsn;

    .line 760
    .local v8, "newInsn2":Lcom/android/dx/ssa/SsaInsn;
    new-instance v0, Lcom/android/dx/rop/cst/CstNat;

    new-instance v1, Lcom/android/dx/rop/cst/CstString;

    const-string v2, "<init>"

    invoke-direct {v1, v2}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/dx/rop/cst/CstString;

    const-string v3, "(I)V"

    invoke-direct {v2, v3}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/cst/CstNat;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/CstString;)V

    move-object v7, v0

    .line 761
    .local v7, "newNat":Lcom/android/dx/rop/cst/CstNat;
    new-instance v5, Lcom/android/dx/rop/cst/CstMethodRef;

    invoke-direct {v5, v14, v7}, Lcom/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    .line 762
    .local v5, "newRef":Lcom/android/dx/rop/cst/CstMethodRef;
    move-object/from16 v4, p2

    invoke-static {v10, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v17, 0x34

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/ssa/EscapeAnalysis;->insertThrowingInsnBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/code/RegisterSpec;ILcom/android/dx/rop/cst/Constant;)V

    .line 764
    invoke-virtual {v13, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 767
    nop

    .line 768
    invoke-virtual {v9}, Lcom/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessor()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/dx/ssa/SsaBasicBlock;->insertNewSuccessor(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    .line 769
    .local v0, "newBlock3":Lcom/android/dx/ssa/SsaBasicBlock;
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/SsaInsn;

    .line 770
    .local v1, "newInsn3":Lcom/android/dx/ssa/SsaInsn;
    invoke-static {v10}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    const/16 v4, 0x23

    const/16 v17, 0x0

    move-object/from16 v6, p0

    move-object/from16 v18, v7

    .end local v7    # "newNat":Lcom/android/dx/rop/cst/CstNat;
    .local v18, "newNat":Lcom/android/dx/rop/cst/CstNat;
    move-object v7, v1

    move-object/from16 v19, v8

    .end local v8    # "newInsn2":Lcom/android/dx/ssa/SsaInsn;
    .local v19, "newInsn2":Lcom/android/dx/ssa/SsaInsn;
    move-object v8, v2

    move-object v2, v9

    .end local v9    # "newBlock2":Lcom/android/dx/ssa/SsaBasicBlock;
    .local v2, "newBlock2":Lcom/android/dx/ssa/SsaBasicBlock;
    move-object v9, v3

    move-object v3, v10

    .end local v10    # "newReg":Lcom/android/dx/rop/code/RegisterSpec;
    .local v3, "newReg":Lcom/android/dx/rop/code/RegisterSpec;
    move v10, v4

    move-object v4, v11

    .end local v11    # "newBlock":Lcom/android/dx/ssa/SsaBasicBlock;
    .local v4, "newBlock":Lcom/android/dx/ssa/SsaBasicBlock;
    move-object/from16 v11, v17

    invoke-direct/range {v6 .. v11}, Lcom/android/dx/ssa/EscapeAnalysis;->insertThrowingInsnBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/code/RegisterSpec;ILcom/android/dx/rop/cst/Constant;)V

    .line 772
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getPrimarySuccessorIndex()I

    move-result v6

    iget-object v7, v12, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    .line 773
    invoke-virtual {v7}, Lcom/android/dx/ssa/SsaMethod;->getExitBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v7

    .line 772
    invoke-virtual {v0, v6, v7}, Lcom/android/dx/ssa/SsaBasicBlock;->replaceSuccessor(II)V

    .line 774
    invoke-virtual {v13, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 775
    return-void
.end method

.method private insertPlainInsnBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/code/RegisterSpec;ILcom/android/dx/rop/cst/Constant;)V
    .locals 9
    .param p1, "insn"    # Lcom/android/dx/ssa/SsaInsn;
    .param p2, "newSources"    # Lcom/android/dx/rop/code/RegisterSpecList;
    .param p3, "newResult"    # Lcom/android/dx/rop/code/RegisterSpec;
    .param p4, "newOpcode"    # I
    .param p5, "cst"    # Lcom/android/dx/rop/cst/Constant;

    .line 791
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v0

    .line 793
    .local v0, "originalRopInsn":Lcom/android/dx/rop/code/Insn;
    const/16 v1, 0x38

    if-ne p4, v1, :cond_0

    .line 794
    invoke-virtual {p3}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dx/rop/code/Rops;->opMoveResultPseudo(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    .local v1, "newRop":Lcom/android/dx/rop/code/Rop;
    goto :goto_0

    .line 796
    .end local v1    # "newRop":Lcom/android/dx/rop/code/Rop;
    :cond_0
    invoke-static {p4, p3, p2, p5}, Lcom/android/dx/rop/code/Rops;->ropFor(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    .line 800
    .restart local v1    # "newRop":Lcom/android/dx/rop/code/Rop;
    :goto_0
    if-nez p5, :cond_1

    .line 801
    new-instance v2, Lcom/android/dx/rop/code/PlainInsn;

    .line 802
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v3

    invoke-direct {v2, v1, v3, p3, p2}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .local v2, "newRopInsn":Lcom/android/dx/rop/code/Insn;
    goto :goto_1

    .line 804
    .end local v2    # "newRopInsn":Lcom/android/dx/rop/code/Insn;
    :cond_1
    new-instance v8, Lcom/android/dx/rop/code/PlainCstInsn;

    .line 805
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v4

    move-object v2, v8

    move-object v3, v1

    move-object v5, p3

    move-object v6, p2

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    .line 808
    .restart local v2    # "newRopInsn":Lcom/android/dx/rop/code/Insn;
    :goto_1
    new-instance v3, Lcom/android/dx/ssa/NormalSsaInsn;

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)V

    .line 809
    .local v3, "newInsn":Lcom/android/dx/ssa/NormalSsaInsn;
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v4

    .line 811
    .local v4, "insns":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/ssa/SsaInsn;>;"
    invoke-interface {v4, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v4, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 812
    iget-object v5, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v5, v3}, Lcom/android/dx/ssa/SsaMethod;->onInsnAdded(Lcom/android/dx/ssa/SsaInsn;)V

    .line 813
    return-void
.end method

.method private insertThrowingInsnBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/code/RegisterSpec;ILcom/android/dx/rop/cst/Constant;)V
    .locals 9
    .param p1, "insn"    # Lcom/android/dx/ssa/SsaInsn;
    .param p2, "newSources"    # Lcom/android/dx/rop/code/RegisterSpecList;
    .param p3, "newResult"    # Lcom/android/dx/rop/code/RegisterSpec;
    .param p4, "newOpcode"    # I
    .param p5, "cst"    # Lcom/android/dx/rop/cst/Constant;

    .line 829
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v0

    .line 830
    .local v0, "origRopInsn":Lcom/android/dx/rop/code/Insn;
    invoke-static {p4, p3, p2, p5}, Lcom/android/dx/rop/code/Rops;->ropFor(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/rop/code/Rop;

    move-result-object v7

    .line 832
    .local v7, "newRop":Lcom/android/dx/rop/code/Rop;
    if-nez p5, :cond_0

    .line 833
    new-instance v1, Lcom/android/dx/rop/code/ThrowingInsn;

    .line 834
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v2

    sget-object v3, Lcom/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/android/dx/rop/type/StdTypeList;

    invoke-direct {v1, v7, v2, p2, v3}, Lcom/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;)V

    .local v1, "newRopInsn":Lcom/android/dx/rop/code/Insn;
    goto :goto_0

    .line 836
    .end local v1    # "newRopInsn":Lcom/android/dx/rop/code/Insn;
    :cond_0
    new-instance v8, Lcom/android/dx/rop/code/ThrowingCstInsn;

    .line 837
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v3

    sget-object v5, Lcom/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/android/dx/rop/type/StdTypeList;

    move-object v1, v8

    move-object v2, v7

    move-object v4, p2

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    .line 840
    .restart local v1    # "newRopInsn":Lcom/android/dx/rop/code/Insn;
    :goto_0
    new-instance v2, Lcom/android/dx/ssa/NormalSsaInsn;

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)V

    .line 841
    .local v2, "newInsn":Lcom/android/dx/ssa/NormalSsaInsn;
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v3

    .line 843
    .local v3, "insns":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/ssa/SsaInsn;>;"
    invoke-interface {v3, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v3, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 844
    iget-object v4, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v4, v2}, Lcom/android/dx/ssa/SsaMethod;->onInsnAdded(Lcom/android/dx/ssa/SsaInsn;)V

    .line 845
    return-void
.end method

.method private movePropagate()V
    .locals 8

    .line 645
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 646
    iget-object v1, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v1, v0}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v1

    .line 649
    .local v1, "insn":Lcom/android/dx/ssa/SsaInsn;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 650
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 651
    goto :goto_2

    .line 654
    :cond_0
    iget-object v2, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaMethod;->getUseListCopy()[Ljava/util/ArrayList;

    move-result-object v2

    .line 655
    .local v2, "useList":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaInsn;>;"
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 656
    .local v3, "source":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 659
    .local v4, "result":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    iget v6, p0, Lcom/android/dx/ssa/EscapeAnalysis;->regCount:I

    if-ge v5, v6, :cond_1

    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    iget v6, p0, Lcom/android/dx/ssa/EscapeAnalysis;->regCount:I

    if-ge v5, v6, :cond_1

    .line 660
    goto :goto_2

    .line 664
    :cond_1
    new-instance v5, Lcom/android/dx/ssa/EscapeAnalysis$1;

    invoke-direct {v5, p0, v4, v3}, Lcom/android/dx/ssa/EscapeAnalysis$1;-><init>(Lcom/android/dx/ssa/EscapeAnalysis;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 681
    .local v5, "mapper":Lcom/android/dx/ssa/RegisterMapper;
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/dx/ssa/SsaInsn;

    .line 682
    .local v7, "use":Lcom/android/dx/ssa/SsaInsn;
    invoke-virtual {v7, v5}, Lcom/android/dx/ssa/SsaInsn;->mapSourceRegisters(Lcom/android/dx/ssa/RegisterMapper;)V

    .line 683
    .end local v7    # "use":Lcom/android/dx/ssa/SsaInsn;
    goto :goto_1

    .line 645
    .end local v1    # "insn":Lcom/android/dx/ssa/SsaInsn;
    .end local v2    # "useList":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaInsn;>;"
    .end local v3    # "source":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v4    # "result":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v5    # "mapper":Lcom/android/dx/ssa/RegisterMapper;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 685
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public static process(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 1
    .param p0, "ssaMethod"    # Lcom/android/dx/ssa/SsaMethod;

    .line 208
    new-instance v0, Lcom/android/dx/ssa/EscapeAnalysis;

    invoke-direct {v0, p0}, Lcom/android/dx/ssa/EscapeAnalysis;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    invoke-direct {v0}, Lcom/android/dx/ssa/EscapeAnalysis;->run()V

    .line 209
    return-void
.end method

.method private processInsn(Lcom/android/dx/ssa/SsaInsn;)V
    .locals 6
    .param p1, "insn"    # Lcom/android/dx/ssa/SsaInsn;

    .line 218
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    .line 219
    .local v0, "op":I
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 223
    .local v1, "result":Lcom/android/dx/rop/code/RegisterSpec;
    const/16 v2, 0x38

    const/16 v3, 0x9

    if-ne v0, v2, :cond_0

    .line 224
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/dx/rop/type/TypeBearer;->getBasicType()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 226
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/EscapeAnalysis;->processMoveResultPseudoInsn(Lcom/android/dx/ssa/SsaInsn;)Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    move-result-object v2

    .line 227
    .local v2, "escSet":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    invoke-direct {p0, v1, v2}, Lcom/android/dx/ssa/EscapeAnalysis;->processRegister(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;)V

    goto :goto_0

    .line 228
    .end local v2    # "escSet":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 229
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/dx/rop/type/TypeBearer;->getBasicType()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 231
    new-instance v2, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    iget v4, p0, Lcom/android/dx/ssa/EscapeAnalysis;->regCount:I

    sget-object v5, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    .line 232
    .restart local v2    # "escSet":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    iget-object v3, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-direct {p0, v1, v2}, Lcom/android/dx/ssa/EscapeAnalysis;->processRegister(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;)V

    goto :goto_0

    .line 234
    .end local v2    # "escSet":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    :cond_1
    const/16 v2, 0x37

    if-ne v0, v2, :cond_2

    .line 235
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/dx/rop/type/TypeBearer;->getBasicType()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 237
    new-instance v2, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    iget v4, p0, Lcom/android/dx/ssa/EscapeAnalysis;->regCount:I

    sget-object v5, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    .line 238
    .restart local v2    # "escSet":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    iget-object v3, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-direct {p0, v1, v2}, Lcom/android/dx/ssa/EscapeAnalysis;->processRegister(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;)V

    .line 241
    .end local v2    # "escSet":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    :cond_2
    :goto_0
    return-void
.end method

.method private processMoveResultPseudoInsn(Lcom/android/dx/ssa/SsaInsn;)Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    .locals 9
    .param p1, "insn"    # Lcom/android/dx/ssa/SsaInsn;

    .line 252
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 253
    .local v0, "result":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/EscapeAnalysis;->getInsnForMove(Lcom/android/dx/ssa/SsaInsn;)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v1

    .line 254
    .local v1, "prevSsaInsn":Lcom/android/dx/ssa/SsaInsn;
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v2

    .line 258
    .local v2, "prevOpcode":I
    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    .line 309
    const/4 v3, 0x0

    return-object v3

    .line 282
    :sswitch_0
    new-instance v3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    iget v5, p0, Lcom/android/dx/ssa/EscapeAnalysis;->regCount:I

    sget-object v6, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->GLOBAL:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-direct {v3, v4, v5, v6}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    .line 284
    .local v3, "escSet":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    goto/16 :goto_0

    .line 268
    .end local v3    # "escSet":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    :sswitch_1
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 269
    .local v3, "prevSource":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 271
    new-instance v4, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    iget v6, p0, Lcom/android/dx/ssa/EscapeAnalysis;->regCount:I

    sget-object v7, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    .line 273
    .local v4, "escSet":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->replaceableArray:Z

    move-object v3, v4

    goto :goto_0

    .line 276
    .end local v4    # "escSet":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    :cond_0
    new-instance v4, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    iget v6, p0, Lcom/android/dx/ssa/EscapeAnalysis;->regCount:I

    sget-object v7, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->GLOBAL:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    .line 279
    .restart local v4    # "escSet":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    move-object v3, v4

    goto :goto_0

    .line 289
    .end local v3    # "prevSource":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v4    # "escSet":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    :sswitch_2
    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 290
    .restart local v3    # "prevSource":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-direct {p0, v3}, Lcom/android/dx/ssa/EscapeAnalysis;->findSetIndex(Lcom/android/dx/rop/code/RegisterSpec;)I

    move-result v4

    .line 293
    .local v4, "setIndex":I
    iget-object v5, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 294
    iget-object v5, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 295
    .local v5, "escSet":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    iget-object v6, v5, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->regSet:Ljava/util/BitSet;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    .line 296
    return-object v5

    .line 300
    .end local v5    # "escSet":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    :cond_1
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v5

    sget-object v6, Lcom/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/android/dx/rop/type/Type;

    if-ne v5, v6, :cond_2

    .line 301
    new-instance v5, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    iget v7, p0, Lcom/android/dx/ssa/EscapeAnalysis;->regCount:I

    sget-object v8, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-direct {v5, v6, v7, v8}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    move-object v3, v5

    .restart local v5    # "escSet":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    goto :goto_0

    .line 304
    .end local v5    # "escSet":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    :cond_2
    new-instance v5, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    iget v7, p0, Lcom/android/dx/ssa/EscapeAnalysis;->regCount:I

    sget-object v8, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->GLOBAL:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-direct {v5, v6, v7, v8}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    .line 307
    .restart local v5    # "escSet":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    move-object v3, v5

    goto :goto_0

    .line 262
    .end local v3    # "prevSource":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v4    # "setIndex":I
    .end local v5    # "escSet":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    :sswitch_3
    new-instance v3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    iget v5, p0, Lcom/android/dx/ssa/EscapeAnalysis;->regCount:I

    sget-object v6, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-direct {v3, v4, v5, v6}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;-><init>(IILcom/android/dx/ssa/EscapeAnalysis$EscapeState;)V

    .line 264
    .local v3, "escSet":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    nop

    .line 313
    :goto_0
    iget-object v4, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_3
        0x26 -> :sswitch_2
        0x28 -> :sswitch_3
        0x29 -> :sswitch_1
        0x2a -> :sswitch_1
        0x2b -> :sswitch_2
        0x2d -> :sswitch_2
        0x2e -> :sswitch_0
    .end sparse-switch
.end method

.method private processPhiUse(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "use"    # Lcom/android/dx/ssa/SsaInsn;
    .param p2, "escSet"    # Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/ssa/SsaInsn;",
            "Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ">;)V"
        }
    .end annotation

    .line 360
    .local p3, "regWorklist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/code/RegisterSpec;>;"
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dx/ssa/EscapeAnalysis;->findSetIndex(Lcom/android/dx/rop/code/RegisterSpec;)I

    move-result v0

    .line 361
    .local v0, "setIndex":I
    iget-object v1, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 363
    iget-object v1, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 364
    .local v1, "mergeSet":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    if-eq v1, p2, :cond_1

    .line 366
    const/4 v2, 0x0

    iput-boolean v2, p2, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->replaceableArray:Z

    .line 367
    iget-object v2, p2, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->regSet:Ljava/util/BitSet;

    iget-object v3, v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->regSet:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 368
    iget-object v2, p2, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    iget-object v3, v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-virtual {v2, v3}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_0

    .line 369
    iget-object v2, v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    iput-object v2, p2, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    .line 371
    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/android/dx/ssa/EscapeAnalysis;->replaceNode(Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;)V

    .line 372
    iget-object v2, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 374
    .end local v1    # "mergeSet":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    :cond_1
    goto :goto_0

    .line 376
    :cond_2
    iget-object v1, p2, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->regSet:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 377
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    :goto_0
    return-void
.end method

.method private processRegister(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;)V
    .locals 7
    .param p1, "result"    # Lcom/android/dx/rop/code/RegisterSpec;
    .param p2, "escSet"    # Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v0, "regWorklist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/code/RegisterSpec;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 329
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 330
    .local v1, "listSize":I
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/rop/code/RegisterSpec;

    .line 331
    .local v2, "def":Lcom/android/dx/rop/code/RegisterSpec;
    iget-object v3, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object v3

    .line 334
    .local v3, "useList":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/ssa/SsaInsn;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dx/ssa/SsaInsn;

    .line 335
    .local v5, "use":Lcom/android/dx/ssa/SsaInsn;
    invoke-virtual {v5}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v6

    .line 337
    .local v6, "useOpcode":Lcom/android/dx/rop/code/Rop;
    if-nez v6, :cond_0

    .line 339
    invoke-direct {p0, v5, p2, v0}, Lcom/android/dx/ssa/EscapeAnalysis;->processPhiUse(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 342
    :cond_0
    invoke-direct {p0, v2, v5, p2, v0}, Lcom/android/dx/ssa/EscapeAnalysis;->processUse(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;Ljava/util/ArrayList;)V

    .line 344
    .end local v5    # "use":Lcom/android/dx/ssa/SsaInsn;
    .end local v6    # "useOpcode":Lcom/android/dx/rop/code/Rop;
    :goto_2
    goto :goto_1

    .line 345
    .end local v1    # "listSize":I
    .end local v2    # "def":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v3    # "useList":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/ssa/SsaInsn;>;"
    :cond_1
    goto :goto_0

    .line 346
    :cond_2
    return-void
.end method

.method private processUse(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "def"    # Lcom/android/dx/rop/code/RegisterSpec;
    .param p2, "use"    # Lcom/android/dx/ssa/SsaInsn;
    .param p3, "escSet"    # Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            "Lcom/android/dx/ssa/SsaInsn;",
            "Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ">;)V"
        }
    .end annotation

    .line 393
    .local p4, "regWorklist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/code/RegisterSpec;>;"
    invoke-virtual {p2}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    .line 394
    .local v0, "useOpcode":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 456
    :sswitch_0
    sget-object v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->GLOBAL:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    iput-object v1, p3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    .line 457
    goto/16 :goto_0

    .line 410
    :sswitch_1
    invoke-virtual {p2}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 411
    .local v3, "putIndex":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v4

    if-nez v4, :cond_0

    .line 413
    iput-boolean v2, p3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->replaceableArray:Z

    .line 418
    .end local v3    # "putIndex":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_0
    :sswitch_2
    invoke-virtual {p2}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 419
    .local v3, "putValue":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/dx/rop/type/TypeBearer;->getBasicType()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_1

    .line 420
    goto/16 :goto_0

    .line 422
    :cond_1
    iput-boolean v2, p3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->replaceableArray:Z

    .line 425
    invoke-virtual {p2}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    .line 426
    .local v4, "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-virtual {v4, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 427
    invoke-virtual {v4, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/dx/ssa/EscapeAnalysis;->findSetIndex(Lcom/android/dx/rop/code/RegisterSpec;)I

    move-result v1

    .line 428
    .local v1, "setIndex":I
    iget-object v2, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 429
    iget-object v2, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 430
    .local v2, "parentSet":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    invoke-direct {p0, v2, p3}, Lcom/android/dx/ssa/EscapeAnalysis;->addEdge(Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;)V

    .line 431
    iget-object v5, p3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    iget-object v6, v2, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-virtual {v5, v6}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-gez v5, :cond_2

    .line 432
    iget-object v5, v2, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    iput-object v5, p3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    .line 435
    .end local v1    # "setIndex":I
    .end local v2    # "parentSet":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    :cond_2
    goto :goto_0

    .line 436
    :cond_3
    invoke-virtual {v4, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/dx/ssa/EscapeAnalysis;->findSetIndex(Lcom/android/dx/rop/code/RegisterSpec;)I

    move-result v1

    .line 437
    .restart local v1    # "setIndex":I
    iget-object v2, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 438
    iget-object v2, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 439
    .local v2, "childSet":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    invoke-direct {p0, p3, v2}, Lcom/android/dx/ssa/EscapeAnalysis;->addEdge(Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;)V

    .line 440
    iget-object v5, v2, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    iget-object v6, p3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-virtual {v5, v6}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-gez v5, :cond_4

    .line 441
    iget-object v5, p3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    iput-object v5, v2, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    .line 445
    .end local v1    # "setIndex":I
    .end local v2    # "childSet":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    :cond_4
    goto :goto_0

    .line 448
    .end local v3    # "putValue":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v4    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    :sswitch_3
    invoke-virtual {p2}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 449
    .local v1, "getIndex":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v3

    if-nez v3, :cond_5

    .line 451
    iput-boolean v2, p3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->replaceableArray:Z

    goto :goto_0

    .line 466
    .end local v1    # "getIndex":Lcom/android/dx/rop/code/RegisterSpec;
    :sswitch_4
    sget-object v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->INTER:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    iput-object v1, p3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    .line 467
    goto :goto_0

    .line 404
    :sswitch_5
    iget-object v1, p3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    sget-object v2, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->METHOD:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-virtual {v1, v2}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_5

    .line 405
    sget-object v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->METHOD:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    iput-object v1, p3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    goto :goto_0

    .line 397
    :sswitch_6
    iget-object v1, p3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->regSet:Ljava/util/BitSet;

    invoke-virtual {p2}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 398
    invoke-virtual {p2}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    nop

    .line 471
    :cond_5
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_6
        0x7 -> :sswitch_5
        0x8 -> :sswitch_5
        0x21 -> :sswitch_4
        0x23 -> :sswitch_4
        0x26 -> :sswitch_3
        0x27 -> :sswitch_1
        0x2b -> :sswitch_5
        0x2f -> :sswitch_2
        0x30 -> :sswitch_0
        0x31 -> :sswitch_4
        0x32 -> :sswitch_4
        0x33 -> :sswitch_4
        0x34 -> :sswitch_4
        0x35 -> :sswitch_4
    .end sparse-switch
.end method

.method private replaceDef(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/ssa/SsaInsn;ILjava/util/ArrayList;)V
    .locals 11
    .param p1, "def"    # Lcom/android/dx/ssa/SsaInsn;
    .param p2, "prev"    # Lcom/android/dx/ssa/SsaInsn;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/ssa/SsaInsn;",
            "Lcom/android/dx/ssa/SsaInsn;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ">;)V"
        }
    .end annotation

    .line 536
    .local p4, "newRegs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/code/RegisterSpec;>;"
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    .line 539
    .local v0, "resultType":Lcom/android/dx/rop/type/Type;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 540
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getComponentType()Lcom/android/dx/rop/type/Type;

    move-result-object v2

    invoke-static {v2}, Lcom/android/dx/rop/cst/Zeroes;->zeroFor(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/Constant;

    move-result-object v2

    .line 541
    .local v2, "newZero":Lcom/android/dx/rop/cst/Constant;
    move-object v9, v2

    check-cast v9, Lcom/android/dx/rop/cst/TypedConstant;

    .line 542
    .local v9, "typedZero":Lcom/android/dx/rop/cst/TypedConstant;
    iget-object v3, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    .line 543
    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaMethod;->makeNewSsaReg()I

    move-result v3

    invoke-static {v3, v9}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    .line 544
    .local v10, "newReg":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {p4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    sget-object v5, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    const/4 v7, 0x5

    move-object v3, p0

    move-object v4, p1

    move-object v6, v10

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/dx/ssa/EscapeAnalysis;->insertPlainInsnBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/code/RegisterSpec;ILcom/android/dx/rop/cst/Constant;)V

    .line 539
    .end local v2    # "newZero":Lcom/android/dx/rop/cst/Constant;
    .end local v9    # "typedZero":Lcom/android/dx/rop/cst/TypedConstant;
    .end local v10    # "newReg":Lcom/android/dx/rop/code/RegisterSpec;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 548
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private replaceNode(Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;)V
    .locals 3
    .param p1, "newNode"    # Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    .param p2, "oldNode"    # Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 189
    iget-object v0, p2, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->parentSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 190
    .local v1, "e":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    iget-object v2, v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->childSets:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 191
    iget-object v2, v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->childSets:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v2, p1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->parentSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .end local v1    # "e":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p2, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->childSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 195
    .restart local v1    # "e":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    iget-object v2, v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->parentSets:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 196
    iget-object v2, v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->parentSets:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v2, p1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->childSets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v1    # "e":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    goto :goto_1

    .line 199
    :cond_1
    return-void
.end method

.method private replaceUse(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/ssa/SsaInsn;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 17
    .param p1, "use"    # Lcom/android/dx/ssa/SsaInsn;
    .param p2, "prev"    # Lcom/android/dx/ssa/SsaInsn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/ssa/SsaInsn;",
            "Lcom/android/dx/ssa/SsaInsn;",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/android/dx/ssa/SsaInsn;",
            ">;)V"
        }
    .end annotation

    .line 566
    .local p3, "newRegs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/code/RegisterSpec;>;"
    .local p4, "deletedInsns":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/dx/ssa/SsaInsn;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 572
    .local v9, "length":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    sparse-switch v0, :sswitch_data_0

    move-object/from16 v13, p1

    goto/16 :goto_2

    .line 623
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v10

    .line 624
    .local v10, "ropUse":Lcom/android/dx/rop/code/Insn;
    move-object v11, v10

    check-cast v11, Lcom/android/dx/rop/code/FillArrayDataInsn;

    .line 625
    .local v11, "fill":Lcom/android/dx/rop/code/FillArrayDataInsn;
    invoke-virtual {v11}, Lcom/android/dx/rop/code/FillArrayDataInsn;->getInitValues()Ljava/util/ArrayList;

    move-result-object v12

    .line 626
    .local v12, "constList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/cst/Constant;>;"
    const/4 v0, 0x0

    move v13, v0

    .local v13, "i":I
    :goto_0
    if-ge v13, v9, :cond_0

    .line 627
    nop

    .line 628
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 629
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/rop/type/TypeBearer;

    .line 628
    invoke-static {v0, v1}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v14

    .line 630
    .local v14, "newFill":Lcom/android/dx/rop/code/RegisterSpec;
    sget-object v2, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    const/4 v4, 0x5

    .line 631
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/dx/rop/cst/Constant;

    .line 630
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/ssa/EscapeAnalysis;->insertPlainInsnBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/code/RegisterSpec;ILcom/android/dx/rop/cst/Constant;)V

    .line 633
    invoke-virtual {v7, v13, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 626
    .end local v14    # "newFill":Lcom/android/dx/rop/code/RegisterSpec;
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 635
    .end local v13    # "i":I
    :cond_0
    move-object/from16 v13, p1

    goto/16 :goto_2

    .line 620
    .end local v10    # "ropUse":Lcom/android/dx/rop/code/Insn;
    .end local v11    # "fill":Lcom/android/dx/rop/code/FillArrayDataInsn;
    .end local v12    # "constList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/cst/Constant;>;"
    :sswitch_1
    move-object/from16 v13, p1

    goto/16 :goto_2

    .line 593
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v10

    .line 594
    .local v10, "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-virtual {v10, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/dx/rop/cst/CstLiteralBits;

    .line 595
    .local v11, "indexReg":Lcom/android/dx/rop/cst/CstLiteralBits;
    invoke-virtual {v11}, Lcom/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    move-result v12

    .line 596
    .local v12, "index":I
    if-ge v12, v9, :cond_1

    .line 597
    invoke-virtual {v10, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v13

    .line 598
    .local v13, "source":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v14

    .line 599
    .local v14, "result":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-static {v13}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/ssa/EscapeAnalysis;->insertPlainInsnBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/code/RegisterSpec;ILcom/android/dx/rop/cst/Constant;)V

    .line 602
    invoke-virtual {v14}, Lcom/android/dx/rop/code/RegisterSpec;->withSimpleType()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v7, v12, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, p1

    goto/16 :goto_2

    .line 605
    .end local v13    # "source":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v14    # "result":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_1
    invoke-virtual {v10, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    move-object/from16 v13, p1

    invoke-direct {v6, v13, v0, v8}, Lcom/android/dx/ssa/EscapeAnalysis;->insertExceptionThrow(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpec;Ljava/util/HashSet;)V

    .line 607
    goto/16 :goto_2

    .line 575
    .end local v10    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    .end local v11    # "indexReg":Lcom/android/dx/rop/cst/CstLiteralBits;
    .end local v12    # "index":I
    :sswitch_3
    move-object/from16 v13, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/dx/ssa/EscapeAnalysis;->getMoveForInsn(Lcom/android/dx/ssa/SsaInsn;)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v10

    .line 576
    .local v10, "next":Lcom/android/dx/ssa/SsaInsn;
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v11

    .line 577
    .local v11, "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/dx/rop/cst/CstLiteralBits;

    .line 578
    .local v12, "indexReg":Lcom/android/dx/rop/cst/CstLiteralBits;
    invoke-virtual {v12}, Lcom/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    move-result v14

    .line 579
    .local v14, "index":I
    if-ge v14, v9, :cond_2

    .line 580
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/dx/rop/code/RegisterSpec;

    .line 581
    .local v15, "source":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v10}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v16

    .line 582
    .local v16, "result":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-static {v15}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v3, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/ssa/EscapeAnalysis;->insertPlainInsnBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/code/RegisterSpec;ILcom/android/dx/rop/cst/Constant;)V

    goto :goto_1

    .line 586
    .end local v15    # "source":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v16    # "result":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_2
    invoke-virtual {v11, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-direct {v6, v10, v0, v8}, Lcom/android/dx/ssa/EscapeAnalysis;->insertExceptionThrow(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpec;Ljava/util/HashSet;)V

    .line 587
    invoke-virtual {v10}, Lcom/android/dx/ssa/SsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 589
    :goto_1
    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 590
    goto :goto_2

    .line 610
    .end local v10    # "next":Lcom/android/dx/ssa/SsaInsn;
    .end local v11    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    .end local v12    # "indexReg":Lcom/android/dx/rop/cst/CstLiteralBits;
    .end local v14    # "index":I
    :sswitch_4
    move-object/from16 v13, p1

    invoke-virtual/range {p2 .. p2}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v10

    .line 612
    .local v10, "lengthReg":Lcom/android/dx/rop/type/TypeBearer;
    invoke-direct/range {p0 .. p1}, Lcom/android/dx/ssa/EscapeAnalysis;->getMoveForInsn(Lcom/android/dx/ssa/SsaInsn;)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v11

    .line 613
    .local v11, "next":Lcom/android/dx/ssa/SsaInsn;
    sget-object v2, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    .line 614
    invoke-virtual {v11}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    const/4 v4, 0x5

    move-object v5, v10

    check-cast v5, Lcom/android/dx/rop/cst/Constant;

    .line 613
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/ssa/EscapeAnalysis;->insertPlainInsnBefore(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/code/RegisterSpec;ILcom/android/dx/rop/cst/Constant;)V

    .line 616
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 617
    nop

    .line 638
    .end local v10    # "lengthReg":Lcom/android/dx/rop/type/TypeBearer;
    .end local v11    # "next":Lcom/android/dx/ssa/SsaInsn;
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_4
        0x26 -> :sswitch_3
        0x27 -> :sswitch_2
        0x36 -> :sswitch_1
        0x39 -> :sswitch_0
    .end sparse-switch
.end method

.method private run()V
    .locals 6

    .line 691
    iget-object v0, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    new-instance v1, Lcom/android/dx/ssa/EscapeAnalysis$2;

    invoke-direct {v1, p0}, Lcom/android/dx/ssa/EscapeAnalysis$2;-><init>(Lcom/android/dx/ssa/EscapeAnalysis;)V

    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaMethod;->forEachBlockDepthFirstDom(Lcom/android/dx/ssa/SsaBasicBlock$Visitor;)V

    .line 715
    iget-object v0, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 716
    .local v1, "e":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    iget-object v2, v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    sget-object v3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    if-eq v2, v3, :cond_1

    .line 717
    iget-object v2, v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->childSets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 718
    .local v3, "field":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    iget-object v4, v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    iget-object v5, v3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    invoke-virtual {v4, v5}, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_0

    .line 719
    iget-object v4, v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    iput-object v4, v3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    .line 721
    .end local v3    # "field":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    :cond_0
    goto :goto_1

    .line 723
    .end local v1    # "e":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    :cond_1
    goto :goto_0

    .line 726
    :cond_2
    invoke-direct {p0}, Lcom/android/dx/ssa/EscapeAnalysis;->scalarReplacement()V

    .line 727
    return-void
.end method

.method private scalarReplacement()V
    .locals 12

    .line 478
    iget-object v0, p0, Lcom/android/dx/ssa/EscapeAnalysis;->latticeValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;

    .line 479
    .local v1, "escSet":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    iget-boolean v2, v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->replaceableArray:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->escape:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    sget-object v3, Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;->NONE:Lcom/android/dx/ssa/EscapeAnalysis$EscapeState;

    if-eq v2, v3, :cond_1

    .line 480
    goto :goto_0

    .line 484
    :cond_1
    iget-object v2, v1, Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;->regSet:Ljava/util/BitSet;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    .line 485
    .local v2, "e":I
    iget-object v4, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v4, v2}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v4

    .line 486
    .local v4, "def":Lcom/android/dx/ssa/SsaInsn;
    invoke-direct {p0, v4}, Lcom/android/dx/ssa/EscapeAnalysis;->getInsnForMove(Lcom/android/dx/ssa/SsaInsn;)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v5

    .line 489
    .local v5, "prev":Lcom/android/dx/ssa/SsaInsn;
    invoke-virtual {v5}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v3

    .line 490
    .local v3, "lengthReg":Lcom/android/dx/rop/type/TypeBearer;
    move-object v6, v3

    check-cast v6, Lcom/android/dx/rop/cst/CstLiteralBits;

    invoke-virtual {v6}, Lcom/android/dx/rop/cst/CstLiteralBits;->getIntBits()I

    move-result v6

    .line 491
    .local v6, "length":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 493
    .local v7, "newRegs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/code/RegisterSpec;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 496
    .local v8, "deletedInsns":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/dx/ssa/SsaInsn;>;"
    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/dx/ssa/EscapeAnalysis;->replaceDef(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/ssa/SsaInsn;ILjava/util/ArrayList;)V

    .line 499
    invoke-virtual {v8, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-virtual {v8, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 503
    iget-object v9, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v9, v2}, Lcom/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object v9

    .line 504
    .local v9, "useList":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/ssa/SsaInsn;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/dx/ssa/SsaInsn;

    .line 506
    .local v11, "use":Lcom/android/dx/ssa/SsaInsn;
    invoke-direct {p0, v11, v5, v7, v8}, Lcom/android/dx/ssa/EscapeAnalysis;->replaceUse(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/ssa/SsaInsn;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 507
    invoke-virtual {v8, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 508
    .end local v11    # "use":Lcom/android/dx/ssa/SsaInsn;
    goto :goto_1

    .line 511
    :cond_2
    iget-object v10, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v10, v8}, Lcom/android/dx/ssa/SsaMethod;->deleteInsns(Ljava/util/Set;)V

    .line 512
    iget-object v10, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v10}, Lcom/android/dx/ssa/SsaMethod;->onInsnsChanged()V

    .line 515
    iget-object v10, p0, Lcom/android/dx/ssa/EscapeAnalysis;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    iget v11, p0, Lcom/android/dx/ssa/EscapeAnalysis;->regCount:I

    invoke-static {v10, v11}, Lcom/android/dx/ssa/SsaConverter;->updateSsaMethod(Lcom/android/dx/ssa/SsaMethod;I)V

    .line 518
    invoke-direct {p0}, Lcom/android/dx/ssa/EscapeAnalysis;->movePropagate()V

    .line 519
    .end local v1    # "escSet":Lcom/android/dx/ssa/EscapeAnalysis$EscapeSet;
    .end local v2    # "e":I
    .end local v3    # "lengthReg":Lcom/android/dx/rop/type/TypeBearer;
    .end local v4    # "def":Lcom/android/dx/ssa/SsaInsn;
    .end local v5    # "prev":Lcom/android/dx/ssa/SsaInsn;
    .end local v6    # "length":I
    .end local v7    # "newRegs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/code/RegisterSpec;>;"
    .end local v8    # "deletedInsns":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/dx/ssa/SsaInsn;>;"
    .end local v9    # "useList":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/ssa/SsaInsn;>;"
    goto :goto_0

    .line 520
    :cond_3
    return-void
.end method
