.class public final Lcom/android/dx/dex/code/RopTranslator;
.super Ljava/lang/Object;
.source "RopTranslator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;,
        Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;
    }
.end annotation


# instance fields
.field private final addresses:Lcom/android/dx/dex/code/BlockAddresses;

.field private final dexOptions:Lcom/android/dx/dex/DexOptions;

.field private final locals:Lcom/android/dx/rop/code/LocalVariableInfo;

.field private final method:Lcom/android/dx/rop/code/RopMethod;

.field private order:[I

.field private final output:Lcom/android/dx/dex/code/OutputCollector;

.field private final paramSize:I

.field private final paramsAreInOrder:Z

.field private final positionInfo:I

.field private final regCount:I

.field private final translationVisitor:Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;


# direct methods
.method private constructor <init>(Lcom/android/dx/rop/code/RopMethod;ILcom/android/dx/rop/code/LocalVariableInfo;ILcom/android/dx/dex/DexOptions;)V
    .locals 10
    .param p1, "method"    # Lcom/android/dx/rop/code/RopMethod;
    .param p2, "positionInfo"    # I
    .param p3, "locals"    # Lcom/android/dx/rop/code/LocalVariableInfo;
    .param p4, "paramSize"    # I
    .param p5, "dexOptions"    # Lcom/android/dx/dex/DexOptions;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p5, p0, Lcom/android/dx/dex/code/RopTranslator;->dexOptions:Lcom/android/dx/dex/DexOptions;

    .line 123
    iput-object p1, p0, Lcom/android/dx/dex/code/RopTranslator;->method:Lcom/android/dx/rop/code/RopMethod;

    .line 124
    iput p2, p0, Lcom/android/dx/dex/code/RopTranslator;->positionInfo:I

    .line 125
    iput-object p3, p0, Lcom/android/dx/dex/code/RopTranslator;->locals:Lcom/android/dx/rop/code/LocalVariableInfo;

    .line 126
    new-instance v0, Lcom/android/dx/dex/code/BlockAddresses;

    invoke-direct {v0, p1}, Lcom/android/dx/dex/code/BlockAddresses;-><init>(Lcom/android/dx/rop/code/RopMethod;)V

    iput-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    .line 127
    iput p4, p0, Lcom/android/dx/dex/code/RopTranslator;->paramSize:I

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->order:[I

    .line 129
    invoke-static {p1, p4}, Lcom/android/dx/dex/code/RopTranslator;->calculateParamsAreInOrder(Lcom/android/dx/rop/code/RopMethod;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dx/dex/code/RopTranslator;->paramsAreInOrder:Z

    .line 131
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v1

    .line 132
    .local v1, "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    move-result v2

    .line 140
    .local v2, "bsz":I
    mul-int/lit8 v3, v2, 0x3

    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlockList;->getInstructionCount()I

    move-result v4

    add-int/2addr v3, v4

    .line 142
    .local v3, "maxInsns":I
    if-eqz p3, :cond_0

    .line 149
    invoke-virtual {p3}, Lcom/android/dx/rop/code/LocalVariableInfo;->getAssignmentCount()I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v3, v4

    .line 156
    :cond_0
    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlockList;->getRegCount()I

    move-result v4

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, p4

    :goto_0
    add-int v8, v4, v0

    iput v8, p0, Lcom/android/dx/dex/code/RopTranslator;->regCount:I

    .line 159
    new-instance v0, Lcom/android/dx/dex/code/OutputCollector;

    mul-int/lit8 v7, v2, 0x3

    move-object v4, v0

    move-object v5, p5

    move v6, v3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/dx/dex/code/OutputCollector;-><init>(Lcom/android/dx/dex/DexOptions;IIII)V

    iput-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    .line 161
    if-eqz p3, :cond_2

    .line 162
    new-instance v4, Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;

    invoke-direct {v4, p0, v0, p3}, Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;-><init>(Lcom/android/dx/dex/code/RopTranslator;Lcom/android/dx/dex/code/OutputCollector;Lcom/android/dx/rop/code/LocalVariableInfo;)V

    iput-object v4, p0, Lcom/android/dx/dex/code/RopTranslator;->translationVisitor:Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;

    goto :goto_1

    .line 165
    :cond_2
    new-instance v4, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;

    invoke-direct {v4, p0, v0}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;-><init>(Lcom/android/dx/dex/code/RopTranslator;Lcom/android/dx/dex/code/OutputCollector;)V

    iput-object v4, p0, Lcom/android/dx/dex/code/RopTranslator;->translationVisitor:Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;

    .line 167
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/rop/code/Insn;

    .line 49
    invoke-static {p0}, Lcom/android/dx/dex/code/RopTranslator;->getRegs(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dx/dex/code/RopTranslator;)Lcom/android/dx/dex/code/BlockAddresses;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/dex/code/RopTranslator;

    .line 49
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dx/dex/code/RopTranslator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/dex/code/RopTranslator;

    .line 49
    iget-boolean v0, p0, Lcom/android/dx/dex/code/RopTranslator;->paramsAreInOrder:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/dx/dex/code/RopTranslator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/dex/code/RopTranslator;

    .line 49
    iget v0, p0, Lcom/android/dx/dex/code/RopTranslator;->regCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/dx/dex/code/RopTranslator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/dex/code/RopTranslator;

    .line 49
    iget v0, p0, Lcom/android/dx/dex/code/RopTranslator;->paramSize:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/dx/dex/code/RopTranslator;)Lcom/android/dx/rop/code/RopMethod;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/dex/code/RopTranslator;

    .line 49
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->method:Lcom/android/dx/rop/code/RopMethod;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/rop/code/Insn;
    .param p1, "x1"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 49
    invoke-static {p0, p1}, Lcom/android/dx/dex/code/RopTranslator;->getRegs(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    return-object v0
.end method

.method private static calculateParamsAreInOrder(Lcom/android/dx/rop/code/RopMethod;I)Z
    .locals 5
    .param p0, "method"    # Lcom/android/dx/rop/code/RopMethod;
    .param p1, "paramSize"    # I

    .line 181
    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    move-object v0, v1

    .line 182
    .local v0, "paramsAreInOrder":[Z
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlockList;->getRegCount()I

    move-result v1

    .line 189
    .local v1, "initialRegCount":I
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v3

    new-instance v4, Lcom/android/dx/dex/code/RopTranslator$1;

    invoke-direct {v4, v0, v1, p1}, Lcom/android/dx/dex/code/RopTranslator$1;-><init>([ZII)V

    invoke-virtual {v3, v4}, Lcom/android/dx/rop/code/BasicBlockList;->forEachInsn(Lcom/android/dx/rop/code/Insn$Visitor;)V

    .line 203
    aget-boolean v2, v0, v2

    return v2
.end method

.method private static getRegs(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 1
    .param p0, "insn"    # Lcom/android/dx/rop/code/Insn;

    .line 454
    invoke-virtual {p0}, Lcom/android/dx/rop/code/Insn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/dx/dex/code/RopTranslator;->getRegs(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    return-object v0
.end method

.method private static getRegs(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 4
    .param p0, "insn"    # Lcom/android/dx/rop/code/Insn;
    .param p1, "resultReg"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 469
    invoke-virtual {p0}, Lcom/android/dx/rop/code/Insn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 471
    .local v0, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-virtual {p0}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/code/Rop;->isCommutative()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 473
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 482
    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 485
    :cond_0
    if-nez p1, :cond_1

    .line 486
    return-object v0

    .line 489
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->withFirst(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    return-object v1
.end method

.method private outputBlock(Lcom/android/dx/rop/code/BasicBlock;I)V
    .locals 9
    .param p1, "block"    # Lcom/android/dx/rop/code/BasicBlock;
    .param p2, "nextLabel"    # I

    .line 248
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/code/BlockAddresses;->getStart(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v0

    .line 249
    .local v0, "startAddress":Lcom/android/dx/dex/code/CodeAddress;
    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    invoke-virtual {v1, v0}, Lcom/android/dx/dex/code/OutputCollector;->add(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 252
    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->locals:Lcom/android/dx/rop/code/LocalVariableInfo;

    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {v1, p1}, Lcom/android/dx/rop/code/LocalVariableInfo;->getStarts(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v1

    .line 254
    .local v1, "starts":Lcom/android/dx/rop/code/RegisterSpecSet;
    iget-object v2, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    new-instance v3, Lcom/android/dx/dex/code/LocalSnapshot;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/CodeAddress;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/android/dx/dex/code/LocalSnapshot;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecSet;)V

    invoke-virtual {v2, v3}, Lcom/android/dx/dex/code/OutputCollector;->add(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 262
    .end local v1    # "starts":Lcom/android/dx/rop/code/RegisterSpecSet;
    :cond_0
    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->translationVisitor:Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;

    iget-object v2, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    invoke-virtual {v2, p1}, Lcom/android/dx/dex/code/BlockAddresses;->getLast(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->setBlock(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/dex/code/CodeAddress;)V

    .line 263
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/dex/code/RopTranslator;->translationVisitor:Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;

    invoke-virtual {v1, v2}, Lcom/android/dx/rop/code/InsnList;->forEach(Lcom/android/dx/rop/code/Insn$Visitor;)V

    .line 266
    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    iget-object v2, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    invoke-virtual {v2, p1}, Lcom/android/dx/dex/code/BlockAddresses;->getEnd(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dx/dex/code/OutputCollector;->add(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 270
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v1

    .line 271
    .local v1, "succ":I
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getLastInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v2

    .line 278
    .local v2, "lastInsn":Lcom/android/dx/rop/code/Insn;
    if-ltz v1, :cond_2

    if-eq v1, p2, :cond_2

    .line 283
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v3

    .line 284
    .local v3, "lastRop":Lcom/android/dx/rop/code/Rop;
    invoke-virtual {v3}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 285
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getSecondarySuccessor()I

    move-result v4

    if-ne v4, p2, :cond_1

    .line 293
    iget-object v4, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    iget-object v5, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    invoke-virtual {v5, v1}, Lcom/android/dx/dex/code/BlockAddresses;->getStart(I)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v5}, Lcom/android/dx/dex/code/OutputCollector;->reverseBranch(ILcom/android/dx/dex/code/CodeAddress;)V

    goto :goto_0

    .line 299
    :cond_1
    new-instance v4, Lcom/android/dx/dex/code/TargetInsn;

    sget-object v5, Lcom/android/dx/dex/code/Dops;->GOTO:Lcom/android/dx/dex/code/Dop;

    .line 300
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v6

    sget-object v7, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    iget-object v8, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    .line 302
    invoke-virtual {v8, v1}, Lcom/android/dx/dex/code/BlockAddresses;->getStart(I)Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/dx/dex/code/TargetInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/dex/code/CodeAddress;)V

    .line 303
    .local v4, "insn":Lcom/android/dx/dex/code/TargetInsn;
    iget-object v5, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    invoke-virtual {v5, v4}, Lcom/android/dx/dex/code/OutputCollector;->add(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 306
    .end local v3    # "lastRop":Lcom/android/dx/rop/code/Rop;
    .end local v4    # "insn":Lcom/android/dx/dex/code/TargetInsn;
    :cond_2
    :goto_0
    return-void
.end method

.method private outputInstructions()V
    .locals 7

    .line 226
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator;->method:Lcom/android/dx/rop/code/RopMethod;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v0

    .line 227
    .local v0, "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->order:[I

    .line 228
    .local v1, "order":[I
    array-length v2, v1

    .line 231
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 232
    add-int/lit8 v4, v3, 0x1

    .line 233
    .local v4, "nextI":I
    array-length v5, v1

    if-ne v4, v5, :cond_0

    const/4 v5, -0x1

    goto :goto_1

    :cond_0
    aget v5, v1, v4

    .line 234
    .local v5, "nextLabel":I
    :goto_1
    aget v6, v1, v3

    invoke-virtual {v0, v6}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v6

    invoke-direct {p0, v6, v5}, Lcom/android/dx/dex/code/RopTranslator;->outputBlock(Lcom/android/dx/rop/code/BasicBlock;I)V

    .line 231
    .end local v4    # "nextI":I
    .end local v5    # "nextLabel":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 236
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method private pickOrder()V
    .locals 18

    .line 312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dx/dex/code/RopTranslator;->method:Lcom/android/dx/rop/code/RopMethod;

    invoke-virtual {v1}, Lcom/android/dx/rop/code/RopMethod;->getBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    move-result-object v1

    .line 313
    .local v1, "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    move-result v2

    .line 314
    .local v2, "sz":I
    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlockList;->getMaxLabel()I

    move-result v3

    .line 315
    .local v3, "maxLabel":I
    invoke-static {v3}, Lcom/android/dx/util/Bits;->makeBitSet(I)[I

    move-result-object v4

    .line 316
    .local v4, "workSet":[I
    invoke-static {v3}, Lcom/android/dx/util/Bits;->makeBitSet(I)[I

    move-result-object v5

    .line 318
    .local v5, "tracebackSet":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_0

    .line 319
    invoke-virtual {v1, v6}, Lcom/android/dx/rop/code/BasicBlockList;->get(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v7

    .line 320
    .local v7, "one":Lcom/android/dx/rop/code/BasicBlock;
    invoke-virtual {v7}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v8

    invoke-static {v4, v8}, Lcom/android/dx/util/Bits;->set([II)V

    .line 318
    .end local v7    # "one":Lcom/android/dx/rop/code/BasicBlock;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 323
    .end local v6    # "i":I
    :cond_0
    new-array v6, v2, [I

    .line 324
    .local v6, "order":[I
    const/4 v7, 0x0

    .line 336
    .local v7, "at":I
    iget-object v8, v0, Lcom/android/dx/dex/code/RopTranslator;->method:Lcom/android/dx/rop/code/RopMethod;

    invoke-virtual {v8}, Lcom/android/dx/rop/code/RopMethod;->getFirstLabel()I

    move-result v8

    .line 337
    .local v8, "label":I
    :goto_1
    const/4 v9, -0x1

    if-eq v8, v9, :cond_b

    .line 352
    :goto_2
    iget-object v10, v0, Lcom/android/dx/dex/code/RopTranslator;->method:Lcom/android/dx/rop/code/RopMethod;

    invoke-virtual {v10, v8}, Lcom/android/dx/rop/code/RopMethod;->labelToPredecessors(I)Lcom/android/dx/util/IntList;

    move-result-object v10

    .line 353
    .local v10, "preds":Lcom/android/dx/util/IntList;
    invoke-virtual {v10}, Lcom/android/dx/util/IntList;->size()I

    move-result v11

    .line 355
    .local v11, "psz":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    if-ge v12, v11, :cond_4

    .line 356
    invoke-virtual {v10, v12}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v13

    .line 358
    .local v13, "predLabel":I
    invoke-static {v5, v13}, Lcom/android/dx/util/Bits;->get([II)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 363
    goto :goto_5

    .line 366
    :cond_1
    invoke-static {v4, v13}, Lcom/android/dx/util/Bits;->get([II)Z

    move-result v14

    if-nez v14, :cond_2

    .line 368
    goto :goto_4

    .line 371
    :cond_2
    invoke-virtual {v1, v13}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v14

    .line 372
    .local v14, "pred":Lcom/android/dx/rop/code/BasicBlock;
    invoke-virtual {v14}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v15

    if-ne v15, v8, :cond_3

    .line 374
    move v8, v13

    .line 375
    invoke-static {v5, v8}, Lcom/android/dx/util/Bits;->set([II)V

    .line 376
    goto :goto_2

    .line 355
    .end local v13    # "predLabel":I
    .end local v14    # "pred":Lcom/android/dx/rop/code/BasicBlock;
    :cond_3
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 381
    .end local v12    # "i":I
    :cond_4
    :goto_5
    nop

    .line 389
    .end local v10    # "preds":Lcom/android/dx/util/IntList;
    .end local v11    # "psz":I
    :goto_6
    if-eq v8, v9, :cond_a

    .line 390
    invoke-static {v4, v8}, Lcom/android/dx/util/Bits;->clear([II)V

    .line 391
    invoke-static {v5, v8}, Lcom/android/dx/util/Bits;->clear([II)V

    .line 392
    aput v8, v6, v7

    .line 393
    add-int/lit8 v7, v7, 0x1

    .line 395
    invoke-virtual {v1, v8}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v10

    .line 396
    .local v10, "one":Lcom/android/dx/rop/code/BasicBlock;
    invoke-virtual {v1, v10}, Lcom/android/dx/rop/code/BasicBlockList;->preferredSuccessorOf(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v11

    .line 398
    .local v11, "preferredBlock":Lcom/android/dx/rop/code/BasicBlock;
    if-nez v11, :cond_5

    .line 399
    move-object/from16 v16, v1

    goto :goto_9

    .line 402
    :cond_5
    invoke-virtual {v11}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v12

    .line 403
    .local v12, "preferred":I
    invoke-virtual {v10}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v13

    .line 405
    .local v13, "primary":I
    invoke-static {v4, v12}, Lcom/android/dx/util/Bits;->get([II)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 410
    move v8, v12

    move-object/from16 v16, v1

    goto :goto_8

    .line 411
    :cond_6
    if-eq v13, v12, :cond_7

    if-ltz v13, :cond_7

    .line 412
    invoke-static {v4, v13}, Lcom/android/dx/util/Bits;->get([II)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 416
    move v8, v13

    move-object/from16 v16, v1

    goto :goto_8

    .line 422
    :cond_7
    invoke-virtual {v10}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v14

    .line 423
    .local v14, "successors":Lcom/android/dx/util/IntList;
    invoke-virtual {v14}, Lcom/android/dx/util/IntList;->size()I

    move-result v15

    .line 424
    .local v15, "ssz":I
    const/4 v8, -0x1

    .line 425
    const/16 v16, 0x0

    move/from16 v9, v16

    .local v9, "i":I
    :goto_7
    if-ge v9, v15, :cond_9

    .line 426
    move-object/from16 v16, v1

    .end local v1    # "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    .local v16, "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    invoke-virtual {v14, v9}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v1

    .line 427
    .local v1, "candidate":I
    invoke-static {v4, v1}, Lcom/android/dx/util/Bits;->get([II)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 428
    move v8, v1

    .line 429
    goto :goto_8

    .line 425
    .end local v1    # "candidate":I
    :cond_8
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v16

    goto :goto_7

    .end local v16    # "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    .local v1, "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    :cond_9
    move-object/from16 v16, v1

    .line 433
    .end local v1    # "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    .end local v9    # "i":I
    .end local v10    # "one":Lcom/android/dx/rop/code/BasicBlock;
    .end local v11    # "preferredBlock":Lcom/android/dx/rop/code/BasicBlock;
    .end local v12    # "preferred":I
    .end local v13    # "primary":I
    .end local v14    # "successors":Lcom/android/dx/util/IntList;
    .end local v15    # "ssz":I
    .restart local v16    # "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    :goto_8
    move-object/from16 v1, v16

    const/4 v9, -0x1

    goto :goto_6

    .line 389
    .end local v16    # "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    .restart local v1    # "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    :cond_a
    move-object/from16 v16, v1

    .line 338
    .end local v1    # "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    .restart local v16    # "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    :goto_9
    const/4 v1, 0x0

    invoke-static {v4, v1}, Lcom/android/dx/util/Bits;->findFirst([II)I

    move-result v8

    move-object/from16 v1, v16

    goto/16 :goto_1

    .line 337
    .end local v16    # "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    .restart local v1    # "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    :cond_b
    move-object/from16 v16, v1

    .line 436
    .end local v1    # "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    .end local v8    # "label":I
    .restart local v16    # "blocks":Lcom/android/dx/rop/code/BasicBlockList;
    if-ne v7, v2, :cond_c

    .line 441
    iput-object v6, v0, Lcom/android/dx/dex/code/RopTranslator;->order:[I

    .line 442
    return-void

    .line 438
    :cond_c
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v8, "shouldn\'t happen"

    invoke-direct {v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static translate(Lcom/android/dx/rop/code/RopMethod;ILcom/android/dx/rop/code/LocalVariableInfo;ILcom/android/dx/dex/DexOptions;)Lcom/android/dx/dex/code/DalvCode;
    .locals 7
    .param p0, "method"    # Lcom/android/dx/rop/code/RopMethod;
    .param p1, "positionInfo"    # I
    .param p2, "locals"    # Lcom/android/dx/rop/code/LocalVariableInfo;
    .param p3, "paramSize"    # I
    .param p4, "dexOptions"    # Lcom/android/dx/dex/DexOptions;

    .line 104
    new-instance v6, Lcom/android/dx/dex/code/RopTranslator;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/dex/code/RopTranslator;-><init>(Lcom/android/dx/rop/code/RopMethod;ILcom/android/dx/rop/code/LocalVariableInfo;ILcom/android/dx/dex/DexOptions;)V

    .line 106
    .local v0, "translator":Lcom/android/dx/dex/code/RopTranslator;
    invoke-direct {v0}, Lcom/android/dx/dex/code/RopTranslator;->translateAndGetResult()Lcom/android/dx/dex/code/DalvCode;

    move-result-object v1

    return-object v1
.end method

.method private translateAndGetResult()Lcom/android/dx/dex/code/DalvCode;
    .locals 4

    .line 212
    invoke-direct {p0}, Lcom/android/dx/dex/code/RopTranslator;->pickOrder()V

    .line 213
    invoke-direct {p0}, Lcom/android/dx/dex/code/RopTranslator;->outputInstructions()V

    .line 215
    new-instance v0, Lcom/android/dx/dex/code/StdCatchBuilder;

    iget-object v1, p0, Lcom/android/dx/dex/code/RopTranslator;->method:Lcom/android/dx/rop/code/RopMethod;

    iget-object v2, p0, Lcom/android/dx/dex/code/RopTranslator;->order:[I

    iget-object v3, p0, Lcom/android/dx/dex/code/RopTranslator;->addresses:Lcom/android/dx/dex/code/BlockAddresses;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/dx/dex/code/StdCatchBuilder;-><init>(Lcom/android/dx/rop/code/RopMethod;[ILcom/android/dx/dex/code/BlockAddresses;)V

    .line 218
    .local v0, "catches":Lcom/android/dx/dex/code/StdCatchBuilder;
    new-instance v1, Lcom/android/dx/dex/code/DalvCode;

    iget v2, p0, Lcom/android/dx/dex/code/RopTranslator;->positionInfo:I

    iget-object v3, p0, Lcom/android/dx/dex/code/RopTranslator;->output:Lcom/android/dx/dex/code/OutputCollector;

    invoke-virtual {v3}, Lcom/android/dx/dex/code/OutputCollector;->getFinisher()Lcom/android/dx/dex/code/OutputFinisher;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/android/dx/dex/code/DalvCode;-><init>(ILcom/android/dx/dex/code/OutputFinisher;Lcom/android/dx/dex/code/CatchBuilder;)V

    return-object v1
.end method