.class public Lcom/android/dx/ssa/LiteralOpUpgrader;
.super Ljava/lang/Object;
.source "LiteralOpUpgrader.java"


# instance fields
.field private final ssaMeth:Lcom/android/dx/ssa/SsaMethod;


# direct methods
.method private constructor <init>(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 0
    .param p1, "ssaMethod"    # Lcom/android/dx/ssa/SsaMethod;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/ssa/LiteralOpUpgrader;Lcom/android/dx/ssa/NormalSsaInsn;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/ssa/LiteralOpUpgrader;
    .param p1, "x1"    # Lcom/android/dx/ssa/NormalSsaInsn;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/LiteralOpUpgrader;->tryReplacingWithConstant(Lcom/android/dx/ssa/NormalSsaInsn;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/dx/rop/code/RegisterSpec;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 40
    invoke-static {p0}, Lcom/android/dx/ssa/LiteralOpUpgrader;->isConstIntZeroOrKnownNull(Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/dx/ssa/LiteralOpUpgrader;Lcom/android/dx/ssa/NormalSsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;ILcom/android/dx/rop/cst/Constant;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dx/ssa/LiteralOpUpgrader;
    .param p1, "x1"    # Lcom/android/dx/ssa/NormalSsaInsn;
    .param p2, "x2"    # Lcom/android/dx/rop/code/RegisterSpecList;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/android/dx/rop/cst/Constant;

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/dx/ssa/LiteralOpUpgrader;->replacePlainInsn(Lcom/android/dx/ssa/NormalSsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;ILcom/android/dx/rop/cst/Constant;)V

    return-void
.end method

.method private static isConstIntZeroOrKnownNull(Lcom/android/dx/rop/code/RegisterSpec;)Z
    .locals 7
    .param p0, "spec"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 70
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v0

    .line 71
    .local v0, "tb":Lcom/android/dx/rop/type/TypeBearer;
    instance-of v1, v0, Lcom/android/dx/rop/cst/CstLiteralBits;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 72
    move-object v1, v0

    check-cast v1, Lcom/android/dx/rop/cst/CstLiteralBits;

    .line 73
    .local v1, "clb":Lcom/android/dx/rop/cst/CstLiteralBits;
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstLiteralBits;->getLongBits()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 75
    .end local v1    # "clb":Lcom/android/dx/rop/cst/CstLiteralBits;
    :cond_1
    return v2
.end method

.method public static process(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 1
    .param p0, "ssaMethod"    # Lcom/android/dx/ssa/SsaMethod;

    .line 53
    new-instance v0, Lcom/android/dx/ssa/LiteralOpUpgrader;

    invoke-direct {v0, p0}, Lcom/android/dx/ssa/LiteralOpUpgrader;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    .line 55
    .local v0, "dc":Lcom/android/dx/ssa/LiteralOpUpgrader;
    invoke-direct {v0}, Lcom/android/dx/ssa/LiteralOpUpgrader;->run()V

    .line 56
    return-void
.end method

.method private replacePlainInsn(Lcom/android/dx/ssa/NormalSsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;ILcom/android/dx/rop/cst/Constant;)V
    .locals 9
    .param p1, "insn"    # Lcom/android/dx/ssa/NormalSsaInsn;
    .param p2, "newSources"    # Lcom/android/dx/rop/code/RegisterSpecList;
    .param p3, "newOpcode"    # I
    .param p4, "cst"    # Lcom/android/dx/rop/cst/Constant;

    .line 191
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v0

    .line 192
    .local v0, "originalRopInsn":Lcom/android/dx/rop/code/Insn;
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-static {p3, v1, p2, p4}, Lcom/android/dx/rop/code/Rops;->ropFor(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    .line 194
    .local v1, "newRop":Lcom/android/dx/rop/code/Rop;
    if-nez p4, :cond_0

    .line 195
    new-instance v2, Lcom/android/dx/rop/code/PlainInsn;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v3

    .line 196
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4, p2}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .local v2, "newRopInsn":Lcom/android/dx/rop/code/Insn;
    goto :goto_0

    .line 198
    .end local v2    # "newRopInsn":Lcom/android/dx/rop/code/Insn;
    :cond_0
    new-instance v8, Lcom/android/dx/rop/code/PlainCstInsn;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v4

    .line 199
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    move-object v2, v8

    move-object v3, v1

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    .line 201
    .restart local v2    # "newRopInsn":Lcom/android/dx/rop/code/Insn;
    :goto_0
    new-instance v3, Lcom/android/dx/ssa/NormalSsaInsn;

    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)V

    .line 203
    .local v3, "newInsn":Lcom/android/dx/ssa/NormalSsaInsn;
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v4

    .line 205
    .local v4, "insns":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/ssa/SsaInsn;>;"
    iget-object v5, p0, Lcom/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v5, p1}, Lcom/android/dx/ssa/SsaMethod;->onInsnRemoved(Lcom/android/dx/ssa/SsaInsn;)V

    .line 206
    invoke-interface {v4, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v4, v5, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v5, p0, Lcom/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v5, v3}, Lcom/android/dx/ssa/SsaMethod;->onInsnAdded(Lcom/android/dx/ssa/SsaInsn;)V

    .line 208
    return-void
.end method

.method private run()V
    .locals 3

    .line 82
    invoke-static {}, Lcom/android/dx/ssa/Optimizer;->getAdvice()Lcom/android/dx/rop/code/TranslationAdvice;

    move-result-object v0

    .line 84
    .local v0, "advice":Lcom/android/dx/rop/code/TranslationAdvice;
    iget-object v1, p0, Lcom/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    new-instance v2, Lcom/android/dx/ssa/LiteralOpUpgrader$1;

    invoke-direct {v2, p0, v0}, Lcom/android/dx/ssa/LiteralOpUpgrader$1;-><init>(Lcom/android/dx/ssa/LiteralOpUpgrader;Lcom/android/dx/rop/code/TranslationAdvice;)V

    invoke-virtual {v1, v2}, Lcom/android/dx/ssa/SsaMethod;->forEachInsn(Lcom/android/dx/ssa/SsaInsn$Visitor;)V

    .line 139
    return-void
.end method

.method private tryReplacingWithConstant(Lcom/android/dx/ssa/NormalSsaInsn;)Z
    .locals 11
    .param p1, "insn"    # Lcom/android/dx/ssa/NormalSsaInsn;

    .line 149
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v0

    .line 150
    .local v0, "originalRopInsn":Lcom/android/dx/rop/code/Insn;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    .line 151
    .local v1, "opcode":Lcom/android/dx/rop/code/Rop;
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 153
    .local v2, "result":Lcom/android/dx/rop/code/RegisterSpec;
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v4, v2}, Lcom/android/dx/ssa/SsaMethod;->isRegALocal(Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 154
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    .line 155
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v4

    .line 156
    .local v4, "type":Lcom/android/dx/rop/type/TypeBearer;
    invoke-interface {v4}, Lcom/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Lcom/android/dx/rop/type/TypeBearer;->getBasicType()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_1

    .line 158
    sget-object v6, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    move-object v8, v4

    check-cast v8, Lcom/android/dx/rop/cst/Constant;

    invoke-direct {p0, p1, v6, v5, v8}, Lcom/android/dx/ssa/LiteralOpUpgrader;->replacePlainInsn(Lcom/android/dx/ssa/NormalSsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;ILcom/android/dx/rop/cst/Constant;)V

    .line 162
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v5

    const/16 v6, 0x38

    const/4 v8, 0x1

    if-ne v5, v6, :cond_0

    .line 163
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    .line 164
    .local v3, "pred":I
    iget-object v5, p0, Lcom/android/dx/ssa/LiteralOpUpgrader;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    .line 165
    invoke-virtual {v5}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v5}, Lcom/android/dx/ssa/SsaBasicBlock;->getInsns()Ljava/util/ArrayList;

    move-result-object v5

    .line 166
    .local v5, "predInsns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaInsn;>;"
    nop

    .line 167
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/dx/ssa/NormalSsaInsn;

    .line 168
    .local v6, "sourceInsn":Lcom/android/dx/ssa/NormalSsaInsn;
    sget-object v9, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    const/4 v10, 0x0

    invoke-direct {p0, v6, v9, v7, v10}, Lcom/android/dx/ssa/LiteralOpUpgrader;->replacePlainInsn(Lcom/android/dx/ssa/NormalSsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;ILcom/android/dx/rop/cst/Constant;)V

    .line 171
    .end local v3    # "pred":I
    .end local v5    # "predInsns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaInsn;>;"
    .end local v6    # "sourceInsn":Lcom/android/dx/ssa/NormalSsaInsn;
    :cond_0
    return v8

    .line 174
    .end local v4    # "type":Lcom/android/dx/rop/type/TypeBearer;
    :cond_1
    return v3
.end method
