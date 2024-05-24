.class public final Lcom/android/dx/cf/code/Ropper;
.super Ljava/lang/Object;
.source "Ropper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/cf/code/Ropper$SubroutineInliner;,
        Lcom/android/dx/cf/code/Ropper$ExceptionSetupLabelAllocator;,
        Lcom/android/dx/cf/code/Ropper$LabelAllocator;,
        Lcom/android/dx/cf/code/Ropper$Subroutine;,
        Lcom/android/dx/cf/code/Ropper$ExceptionHandlerSetup;,
        Lcom/android/dx/cf/code/Ropper$CatchInfo;
    }
.end annotation


# static fields
.field private static final PARAM_ASSIGNMENT:I = -0x1

.field private static final RETURN:I = -0x2

.field private static final SPECIAL_LABEL_COUNT:I = 0x7

.field private static final SYNCH_CATCH_1:I = -0x6

.field private static final SYNCH_CATCH_2:I = -0x7

.field private static final SYNCH_RETURN:I = -0x3

.field private static final SYNCH_SETUP_1:I = -0x4

.field private static final SYNCH_SETUP_2:I = -0x5


# instance fields
.field private final blocks:Lcom/android/dx/cf/code/ByteBlockList;

.field private final catchInfos:[Lcom/android/dx/cf/code/Ropper$CatchInfo;

.field private final exceptionSetupLabelAllocator:Lcom/android/dx/cf/code/Ropper$ExceptionSetupLabelAllocator;

.field private hasSubroutines:Z

.field private final machine:Lcom/android/dx/cf/code/RopperMachine;

.field private final maxLabel:I

.field private final maxLocals:I

.field private final method:Lcom/android/dx/cf/code/ConcreteMethod;

.field private final result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/rop/code/BasicBlock;",
            ">;"
        }
    .end annotation
.end field

.field private final resultSubroutines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/util/IntList;",
            ">;"
        }
    .end annotation
.end field

.field private final sim:Lcom/android/dx/cf/code/Simulator;

.field private final startFrames:[Lcom/android/dx/cf/code/Frame;

.field private final subroutines:[Lcom/android/dx/cf/code/Ropper$Subroutine;

.field private synchNeedsExceptionHandler:Z


# direct methods
.method private constructor <init>(Lcom/android/dx/cf/code/ConcreteMethod;Lcom/android/dx/rop/code/TranslationAdvice;Lcom/android/dx/cf/iface/MethodList;Lcom/android/dx/dex/DexOptions;)V
    .locals 6
    .param p1, "method"    # Lcom/android/dx/cf/code/ConcreteMethod;
    .param p2, "advice"    # Lcom/android/dx/rop/code/TranslationAdvice;
    .param p3, "methods"    # Lcom/android/dx/cf/iface/MethodList;
    .param p4, "dexOptions"    # Lcom/android/dx/dex/DexOptions;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    if-eqz p1, :cond_1

    .line 374
    if-eqz p2, :cond_0

    .line 378
    iput-object p1, p0, Lcom/android/dx/cf/code/Ropper;->method:Lcom/android/dx/cf/code/ConcreteMethod;

    .line 379
    invoke-static {p1}, Lcom/android/dx/cf/code/BasicBlocker;->identifyBlocks(Lcom/android/dx/cf/code/ConcreteMethod;)Lcom/android/dx/cf/code/ByteBlockList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/cf/code/Ropper;->blocks:Lcom/android/dx/cf/code/ByteBlockList;

    .line 380
    invoke-virtual {v0}, Lcom/android/dx/cf/code/ByteBlockList;->getMaxLabel()I

    move-result v1

    iput v1, p0, Lcom/android/dx/cf/code/Ropper;->maxLabel:I

    .line 381
    invoke-virtual {p1}, Lcom/android/dx/cf/code/ConcreteMethod;->getMaxLocals()I

    move-result v2

    iput v2, p0, Lcom/android/dx/cf/code/Ropper;->maxLocals:I

    .line 382
    new-instance v3, Lcom/android/dx/cf/code/RopperMachine;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/dx/cf/code/RopperMachine;-><init>(Lcom/android/dx/cf/code/Ropper;Lcom/android/dx/cf/code/ConcreteMethod;Lcom/android/dx/rop/code/TranslationAdvice;Lcom/android/dx/cf/iface/MethodList;)V

    iput-object v3, p0, Lcom/android/dx/cf/code/Ropper;->machine:Lcom/android/dx/cf/code/RopperMachine;

    .line 383
    new-instance v4, Lcom/android/dx/cf/code/Simulator;

    invoke-direct {v4, v3, p1, p4}, Lcom/android/dx/cf/code/Simulator;-><init>(Lcom/android/dx/cf/code/Machine;Lcom/android/dx/cf/code/ConcreteMethod;Lcom/android/dx/dex/DexOptions;)V

    iput-object v4, p0, Lcom/android/dx/cf/code/Ropper;->sim:Lcom/android/dx/cf/code/Simulator;

    .line 384
    new-array v3, v1, [Lcom/android/dx/cf/code/Frame;

    iput-object v3, p0, Lcom/android/dx/cf/code/Ropper;->startFrames:[Lcom/android/dx/cf/code/Frame;

    .line 385
    new-array v4, v1, [Lcom/android/dx/cf/code/Ropper$Subroutine;

    iput-object v4, p0, Lcom/android/dx/cf/code/Ropper;->subroutines:[Lcom/android/dx/cf/code/Ropper$Subroutine;

    .line 393
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/dx/cf/code/ByteBlockList;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0xa

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    .line 394
    new-instance v4, Ljava/util/ArrayList;

    .line 395
    invoke-virtual {v0}, Lcom/android/dx/cf/code/ByteBlockList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xa

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/dx/cf/code/Ropper;->resultSubroutines:Ljava/util/ArrayList;

    .line 397
    new-array v0, v1, [Lcom/android/dx/cf/code/Ropper$CatchInfo;

    iput-object v0, p0, Lcom/android/dx/cf/code/Ropper;->catchInfos:[Lcom/android/dx/cf/code/Ropper$CatchInfo;

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dx/cf/code/Ropper;->synchNeedsExceptionHandler:Z

    .line 404
    new-instance v1, Lcom/android/dx/cf/code/Frame;

    invoke-virtual {p1}, Lcom/android/dx/cf/code/ConcreteMethod;->getMaxStack()I

    move-result v4

    invoke-direct {v1, v2, v4}, Lcom/android/dx/cf/code/Frame;-><init>(II)V

    aput-object v1, v3, v0

    .line 405
    new-instance v0, Lcom/android/dx/cf/code/Ropper$ExceptionSetupLabelAllocator;

    invoke-direct {v0, p0}, Lcom/android/dx/cf/code/Ropper$ExceptionSetupLabelAllocator;-><init>(Lcom/android/dx/cf/code/Ropper;)V

    iput-object v0, p0, Lcom/android/dx/cf/code/Ropper;->exceptionSetupLabelAllocator:Lcom/android/dx/cf/code/Ropper$ExceptionSetupLabelAllocator;

    .line 406
    return-void

    .line 375
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "advice == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/dx/cf/code/Ropper;)Lcom/android/dx/cf/code/Ropper$ExceptionSetupLabelAllocator;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/cf/code/Ropper;

    .line 56
    iget-object v0, p0, Lcom/android/dx/cf/code/Ropper;->exceptionSetupLabelAllocator:Lcom/android/dx/cf/code/Ropper$ExceptionSetupLabelAllocator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dx/cf/code/Ropper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/cf/code/Ropper;

    .line 56
    iget v0, p0, Lcom/android/dx/cf/code/Ropper;->maxLabel:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/dx/cf/code/Ropper;Lcom/android/dx/rop/code/InsnList;)Lcom/android/dx/rop/code/InsnList;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/cf/code/Ropper;
    .param p1, "x1"    # Lcom/android/dx/rop/code/InsnList;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/dx/cf/code/Ropper;->filterMoveReturnAddressInsns(Lcom/android/dx/rop/code/InsnList;)Lcom/android/dx/rop/code/InsnList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/dx/cf/code/Ropper;Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/util/IntList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dx/cf/code/Ropper;
    .param p1, "x1"    # Lcom/android/dx/rop/code/BasicBlock;
    .param p2, "x2"    # Lcom/android/dx/util/IntList;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/dx/cf/code/Ropper;->addBlock(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/util/IntList;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/dx/cf/code/Ropper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/dx/cf/code/Ropper;
    .param p1, "x1"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/android/dx/cf/code/Ropper;->hasSubroutines:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/dx/cf/code/Ropper;I)Lcom/android/dx/rop/code/BasicBlock;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/cf/code/Ropper;
    .param p1, "x1"    # I

    .line 56
    invoke-direct {p0, p1}, Lcom/android/dx/cf/code/Ropper;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/dx/cf/code/Ropper;IILcom/android/dx/cf/code/Ropper$Subroutine;Lcom/android/dx/cf/code/Frame;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/dx/cf/code/Ropper;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/dx/cf/code/Ropper$Subroutine;
    .param p4, "x4"    # Lcom/android/dx/cf/code/Frame;
    .param p5, "x5"    # [I

    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/android/dx/cf/code/Ropper;->mergeAndWorkAsNecessary(IILcom/android/dx/cf/code/Ropper$Subroutine;Lcom/android/dx/cf/code/Frame;[I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/dx/cf/code/Ropper;Lcom/android/dx/rop/code/BasicBlock;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/cf/code/Ropper;
    .param p1, "x1"    # Lcom/android/dx/rop/code/BasicBlock;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/dx/cf/code/Ropper;->isSubroutineCaller(Lcom/android/dx/rop/code/BasicBlock;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/dx/cf/code/Ropper;)Lcom/android/dx/cf/code/ConcreteMethod;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/cf/code/Ropper;

    .line 56
    iget-object v0, p0, Lcom/android/dx/cf/code/Ropper;->method:Lcom/android/dx/cf/code/ConcreteMethod;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/dx/cf/code/Ropper;Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/util/IntList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/cf/code/Ropper;
    .param p1, "x1"    # Lcom/android/dx/rop/code/BasicBlock;
    .param p2, "x2"    # Lcom/android/dx/util/IntList;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/dx/cf/code/Ropper;->addOrReplaceBlockNoDelete(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/util/IntList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/dx/cf/code/Ropper;I)Lcom/android/dx/cf/code/Ropper$Subroutine;
    .locals 1
    .param p0, "x0"    # Lcom/android/dx/cf/code/Ropper;
    .param p1, "x1"    # I

    .line 56
    invoke-direct {p0, p1}, Lcom/android/dx/cf/code/Ropper;->subroutineFromRetBlock(I)Lcom/android/dx/cf/code/Ropper$Subroutine;

    move-result-object v0

    return-object v0
.end method

.method private addBlock(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/util/IntList;)V
    .locals 2
    .param p1, "block"    # Lcom/android/dx/rop/code/BasicBlock;
    .param p2, "subroutines"    # Lcom/android/dx/util/IntList;

    .line 588
    if-eqz p1, :cond_0

    .line 592
    iget-object v0, p0, Lcom/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    invoke-virtual {p2}, Lcom/android/dx/util/IntList;->throwIfMutable()V

    .line 594
    iget-object v0, p0, Lcom/android/dx/cf/code/Ropper;->resultSubroutines:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    return-void

    .line 589
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "block == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addExceptionSetupBlocks()V
    .locals 13

    .line 1296
    iget-object v0, p0, Lcom/android/dx/cf/code/Ropper;->catchInfos:[Lcom/android/dx/cf/code/Ropper$CatchInfo;

    array-length v0, v0

    .line 1297
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1298
    iget-object v2, p0, Lcom/android/dx/cf/code/Ropper;->catchInfos:[Lcom/android/dx/cf/code/Ropper$CatchInfo;

    aget-object v2, v2, v1

    .line 1299
    .local v2, "catches":Lcom/android/dx/cf/code/Ropper$CatchInfo;
    if-eqz v2, :cond_0

    .line 1300
    invoke-virtual {v2}, Lcom/android/dx/cf/code/Ropper$CatchInfo;->getSetups()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dx/cf/code/Ropper$ExceptionHandlerSetup;

    .line 1301
    .local v4, "one":Lcom/android/dx/cf/code/Ropper$ExceptionHandlerSetup;
    invoke-direct {p0, v1}, Lcom/android/dx/cf/code/Ropper;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/rop/code/BasicBlock;->getFirstInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v5

    .line 1302
    .local v5, "proto":Lcom/android/dx/rop/code/Insn;
    invoke-virtual {v5}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v6

    .line 1303
    .local v6, "pos":Lcom/android/dx/rop/code/SourcePosition;
    new-instance v7, Lcom/android/dx/rop/code/InsnList;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Lcom/android/dx/rop/code/InsnList;-><init>(I)V

    .line 1305
    .local v7, "il":Lcom/android/dx/rop/code/InsnList;
    new-instance v8, Lcom/android/dx/rop/code/PlainInsn;

    invoke-virtual {v4}, Lcom/android/dx/cf/code/Ropper$ExceptionHandlerSetup;->getCaughtType()Lcom/android/dx/rop/type/Type;

    move-result-object v9

    invoke-static {v9}, Lcom/android/dx/rop/code/Rops;->opMoveException(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v9

    iget v10, p0, Lcom/android/dx/cf/code/Ropper;->maxLocals:I

    .line 1307
    invoke-virtual {v4}, Lcom/android/dx/cf/code/Ropper$ExceptionHandlerSetup;->getCaughtType()Lcom/android/dx/rop/type/Type;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    sget-object v11, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v8, v9, v6, v10, v11}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 1309
    .local v8, "insn":Lcom/android/dx/rop/code/Insn;
    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8}, Lcom/android/dx/rop/code/InsnList;->set(ILcom/android/dx/rop/code/Insn;)V

    .line 1311
    new-instance v9, Lcom/android/dx/rop/code/PlainInsn;

    sget-object v10, Lcom/android/dx/rop/code/Rops;->GOTO:Lcom/android/dx/rop/code/Rop;

    const/4 v11, 0x0

    sget-object v12, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v9, v10, v6, v11, v12}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    move-object v8, v9

    .line 1313
    const/4 v9, 0x1

    invoke-virtual {v7, v9, v8}, Lcom/android/dx/rop/code/InsnList;->set(ILcom/android/dx/rop/code/Insn;)V

    .line 1314
    invoke-virtual {v7}, Lcom/android/dx/rop/code/InsnList;->setImmutable()V

    .line 1316
    new-instance v9, Lcom/android/dx/rop/code/BasicBlock;

    invoke-virtual {v4}, Lcom/android/dx/cf/code/Ropper$ExceptionHandlerSetup;->getLabel()I

    move-result v10

    .line 1318
    invoke-static {v1}, Lcom/android/dx/util/IntList;->makeImmutable(I)Lcom/android/dx/util/IntList;

    move-result-object v11

    invoke-direct {v9, v10, v7, v11, v1}, Lcom/android/dx/rop/code/BasicBlock;-><init>(ILcom/android/dx/rop/code/InsnList;Lcom/android/dx/util/IntList;I)V

    .line 1320
    .local v9, "bb":Lcom/android/dx/rop/code/BasicBlock;
    iget-object v10, p0, Lcom/android/dx/cf/code/Ropper;->startFrames:[Lcom/android/dx/cf/code/Frame;

    aget-object v10, v10, v1

    invoke-virtual {v10}, Lcom/android/dx/cf/code/Frame;->getSubroutines()Lcom/android/dx/util/IntList;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/dx/cf/code/Ropper;->addBlock(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/util/IntList;)V

    .line 1321
    .end local v4    # "one":Lcom/android/dx/cf/code/Ropper$ExceptionHandlerSetup;
    .end local v5    # "proto":Lcom/android/dx/rop/code/Insn;
    .end local v6    # "pos":Lcom/android/dx/rop/code/SourcePosition;
    .end local v7    # "il":Lcom/android/dx/rop/code/InsnList;
    .end local v8    # "insn":Lcom/android/dx/rop/code/Insn;
    .end local v9    # "bb":Lcom/android/dx/rop/code/BasicBlock;
    goto :goto_1

    .line 1297
    .end local v2    # "catches":Lcom/android/dx/cf/code/Ropper$CatchInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1324
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private addOrReplaceBlock(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/util/IntList;)Z
    .locals 3
    .param p1, "block"    # Lcom/android/dx/rop/code/BasicBlock;
    .param p2, "subroutines"    # Lcom/android/dx/util/IntList;

    .line 609
    if-eqz p1, :cond_1

    .line 613
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/dx/cf/code/Ropper;->labelToResultIndex(I)I

    move-result v0

    .line 616
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 617
    const/4 v1, 0x0

    .local v1, "ret":Z
    goto :goto_0

    .line 626
    .end local v1    # "ret":Z
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/dx/cf/code/Ropper;->removeBlockAndSpecialSuccessors(I)V

    .line 627
    const/4 v1, 0x1

    .line 630
    .restart local v1    # "ret":Z
    :goto_0
    iget-object v2, p0, Lcom/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    invoke-virtual {p2}, Lcom/android/dx/util/IntList;->throwIfMutable()V

    .line 632
    iget-object v2, p0, Lcom/android/dx/cf/code/Ropper;->resultSubroutines:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    return v1

    .line 610
    .end local v0    # "idx":I
    .end local v1    # "ret":Z
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "block == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addOrReplaceBlockNoDelete(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/util/IntList;)Z
    .locals 3
    .param p1, "block"    # Lcom/android/dx/rop/code/BasicBlock;
    .param p2, "subroutines"    # Lcom/android/dx/util/IntList;

    .line 648
    if-eqz p1, :cond_1

    .line 652
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/dx/cf/code/Ropper;->labelToResultIndex(I)I

    move-result v0

    .line 655
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 656
    const/4 v1, 0x0

    .local v1, "ret":Z
    goto :goto_0

    .line 658
    .end local v1    # "ret":Z
    :cond_0
    iget-object v1, p0, Lcom/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 659
    iget-object v1, p0, Lcom/android/dx/cf/code/Ropper;->resultSubroutines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 660
    const/4 v1, 0x1

    .line 663
    .restart local v1    # "ret":Z
    :goto_0
    iget-object v2, p0, Lcom/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    invoke-virtual {p2}, Lcom/android/dx/util/IntList;->throwIfMutable()V

    .line 665
    iget-object v2, p0, Lcom/android/dx/cf/code/Ropper;->resultSubroutines:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    return v1

    .line 649
    .end local v0    # "idx":I
    .end local v1    # "ret":Z
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "block == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addReturnBlock()V
    .locals 10

    .line 1192
    iget-object v0, p0, Lcom/android/dx/cf/code/Ropper;->machine:Lcom/android/dx/cf/code/RopperMachine;

    invoke-virtual {v0}, Lcom/android/dx/cf/code/RopperMachine;->getReturnOp()Lcom/android/dx/rop/code/Rop;

    move-result-object v0

    .line 1194
    .local v0, "returnOp":Lcom/android/dx/rop/code/Rop;
    if-nez v0, :cond_0

    .line 1199
    return-void

    .line 1202
    :cond_0
    iget-object v1, p0, Lcom/android/dx/cf/code/Ropper;->machine:Lcom/android/dx/cf/code/RopperMachine;

    invoke-virtual {v1}, Lcom/android/dx/cf/code/RopperMachine;->getReturnPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v1

    .line 1203
    .local v1, "returnPos":Lcom/android/dx/rop/code/SourcePosition;
    const/4 v2, -0x2

    invoke-direct {p0, v2}, Lcom/android/dx/cf/code/Ropper;->getSpecialLabel(I)I

    move-result v2

    .line 1205
    .local v2, "label":I
    invoke-direct {p0}, Lcom/android/dx/cf/code/Ropper;->isSynchronized()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 1206
    new-instance v3, Lcom/android/dx/rop/code/InsnList;

    invoke-direct {v3, v4}, Lcom/android/dx/rop/code/InsnList;-><init>(I)V

    .line 1207
    .local v3, "insns":Lcom/android/dx/rop/code/InsnList;
    new-instance v6, Lcom/android/dx/rop/code/ThrowingInsn;

    sget-object v7, Lcom/android/dx/rop/code/Rops;->MONITOR_EXIT:Lcom/android/dx/rop/code/Rop;

    .line 1208
    invoke-direct {p0}, Lcom/android/dx/cf/code/Ropper;->getSynchReg()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v8

    invoke-static {v8}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v8

    sget-object v9, Lcom/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/android/dx/rop/type/StdTypeList;

    invoke-direct {v6, v7, v1, v8, v9}, Lcom/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;)V

    .line 1210
    .local v6, "insn":Lcom/android/dx/rop/code/Insn;
    invoke-virtual {v3, v5, v6}, Lcom/android/dx/rop/code/InsnList;->set(ILcom/android/dx/rop/code/Insn;)V

    .line 1211
    invoke-virtual {v3}, Lcom/android/dx/rop/code/InsnList;->setImmutable()V

    .line 1213
    const/4 v7, -0x3

    invoke-direct {p0, v7}, Lcom/android/dx/cf/code/Ropper;->getSpecialLabel(I)I

    move-result v7

    .line 1214
    .local v7, "nextLabel":I
    new-instance v8, Lcom/android/dx/rop/code/BasicBlock;

    .line 1216
    invoke-static {v7}, Lcom/android/dx/util/IntList;->makeImmutable(I)Lcom/android/dx/util/IntList;

    move-result-object v9

    invoke-direct {v8, v2, v3, v9, v7}, Lcom/android/dx/rop/code/BasicBlock;-><init>(ILcom/android/dx/rop/code/InsnList;Lcom/android/dx/util/IntList;I)V

    .line 1217
    .local v8, "bb":Lcom/android/dx/rop/code/BasicBlock;
    sget-object v9, Lcom/android/dx/util/IntList;->EMPTY:Lcom/android/dx/util/IntList;

    invoke-direct {p0, v8, v9}, Lcom/android/dx/cf/code/Ropper;->addBlock(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/util/IntList;)V

    .line 1219
    move v2, v7

    .line 1222
    .end local v3    # "insns":Lcom/android/dx/rop/code/InsnList;
    .end local v6    # "insn":Lcom/android/dx/rop/code/Insn;
    .end local v7    # "nextLabel":I
    .end local v8    # "bb":Lcom/android/dx/rop/code/BasicBlock;
    :cond_1
    new-instance v3, Lcom/android/dx/rop/code/InsnList;

    invoke-direct {v3, v4}, Lcom/android/dx/rop/code/InsnList;-><init>(I)V

    .line 1223
    .restart local v3    # "insns":Lcom/android/dx/rop/code/InsnList;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getSources()Lcom/android/dx/rop/type/TypeList;

    move-result-object v4

    .line 1226
    .local v4, "sourceTypes":Lcom/android/dx/rop/type/TypeList;
    invoke-interface {v4}, Lcom/android/dx/rop/type/TypeList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 1227
    sget-object v6, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    .local v6, "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    goto :goto_0

    .line 1229
    .end local v6    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    :cond_2
    invoke-interface {v4, v5}, Lcom/android/dx/rop/type/TypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    .line 1230
    .local v6, "source":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-static {v6}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v7

    move-object v6, v7

    .line 1233
    .local v6, "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    :goto_0
    new-instance v7, Lcom/android/dx/rop/code/PlainInsn;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v1, v8, v6}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 1234
    .local v7, "insn":Lcom/android/dx/rop/code/Insn;
    invoke-virtual {v3, v5, v7}, Lcom/android/dx/rop/code/InsnList;->set(ILcom/android/dx/rop/code/Insn;)V

    .line 1235
    invoke-virtual {v3}, Lcom/android/dx/rop/code/InsnList;->setImmutable()V

    .line 1237
    new-instance v5, Lcom/android/dx/rop/code/BasicBlock;

    sget-object v8, Lcom/android/dx/util/IntList;->EMPTY:Lcom/android/dx/util/IntList;

    const/4 v9, -0x1

    invoke-direct {v5, v2, v3, v8, v9}, Lcom/android/dx/rop/code/BasicBlock;-><init>(ILcom/android/dx/rop/code/InsnList;Lcom/android/dx/util/IntList;I)V

    .line 1238
    .local v5, "bb":Lcom/android/dx/rop/code/BasicBlock;
    sget-object v8, Lcom/android/dx/util/IntList;->EMPTY:Lcom/android/dx/util/IntList;

    invoke-direct {p0, v5, v8}, Lcom/android/dx/cf/code/Ropper;->addBlock(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/util/IntList;)V

    .line 1239
    return-void
.end method

.method private addSetupBlocks()V
    .locals 23

    .line 1109
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dx/cf/code/Ropper;->method:Lcom/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v1}, Lcom/android/dx/cf/code/ConcreteMethod;->getLocalVariables()Lcom/android/dx/cf/code/LocalVariableList;

    move-result-object v1

    .line 1110
    .local v1, "localVariables":Lcom/android/dx/cf/code/LocalVariableList;
    iget-object v2, v0, Lcom/android/dx/cf/code/Ropper;->method:Lcom/android/dx/cf/code/ConcreteMethod;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/dx/cf/code/ConcreteMethod;->makeSourcePosistion(I)Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v2

    .line 1111
    .local v2, "pos":Lcom/android/dx/rop/code/SourcePosition;
    iget-object v4, v0, Lcom/android/dx/cf/code/Ropper;->method:Lcom/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v4}, Lcom/android/dx/cf/code/ConcreteMethod;->getEffectiveDescriptor()Lcom/android/dx/rop/type/Prototype;

    move-result-object v10

    .line 1112
    .local v10, "desc":Lcom/android/dx/rop/type/Prototype;
    invoke-virtual {v10}, Lcom/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v11

    .line 1113
    .local v11, "params":Lcom/android/dx/rop/type/StdTypeList;
    invoke-virtual {v11}, Lcom/android/dx/rop/type/StdTypeList;->size()I

    move-result v12

    .line 1114
    .local v12, "sz":I
    new-instance v4, Lcom/android/dx/rop/code/InsnList;

    add-int/lit8 v5, v12, 0x1

    invoke-direct {v4, v5}, Lcom/android/dx/rop/code/InsnList;-><init>(I)V

    move-object v13, v4

    .line 1115
    .local v13, "insns":Lcom/android/dx/rop/code/InsnList;
    const/4 v4, 0x0

    .line 1117
    .local v4, "at":I
    const/4 v5, 0x0

    move v14, v4

    move v15, v5

    .end local v4    # "at":I
    .local v14, "at":I
    .local v15, "i":I
    :goto_0
    if-ge v15, v12, :cond_1

    .line 1118
    invoke-virtual {v11, v15}, Lcom/android/dx/rop/type/StdTypeList;->get(I)Lcom/android/dx/rop/type/Type;

    move-result-object v9

    .line 1119
    .local v9, "one":Lcom/android/dx/rop/type/Type;
    nop

    .line 1120
    invoke-virtual {v1, v3, v14}, Lcom/android/dx/cf/code/LocalVariableList;->pcAndIndexToLocal(II)Lcom/android/dx/cf/code/LocalVariableList$Item;

    move-result-object v16

    .line 1121
    .local v16, "local":Lcom/android/dx/cf/code/LocalVariableList$Item;
    if-nez v16, :cond_0

    .line 1122
    invoke-static {v14, v9}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    move-object v7, v4

    goto :goto_1

    .line 1123
    :cond_0
    invoke-virtual/range {v16 .. v16}, Lcom/android/dx/cf/code/LocalVariableList$Item;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v4

    invoke-static {v14, v9, v4}, Lcom/android/dx/rop/code/RegisterSpec;->makeLocalOptional(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    move-object v7, v4

    :goto_1
    nop

    .line 1125
    .local v7, "result":Lcom/android/dx/rop/code/RegisterSpec;
    new-instance v17, Lcom/android/dx/rop/code/PlainCstInsn;

    invoke-static {v9}, Lcom/android/dx/rop/code/Rops;->opMoveParam(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v5

    sget-object v8, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    .line 1127
    invoke-static {v14}, Lcom/android/dx/rop/cst/CstInteger;->make(I)Lcom/android/dx/rop/cst/CstInteger;

    move-result-object v18

    move-object/from16 v4, v17

    move-object v6, v2

    move-object/from16 v19, v9

    .end local v9    # "one":Lcom/android/dx/rop/type/Type;
    .local v19, "one":Lcom/android/dx/rop/type/Type;
    move-object/from16 v9, v18

    invoke-direct/range {v4 .. v9}, Lcom/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    .line 1128
    .local v4, "insn":Lcom/android/dx/rop/code/Insn;
    invoke-virtual {v13, v15, v4}, Lcom/android/dx/rop/code/InsnList;->set(ILcom/android/dx/rop/code/Insn;)V

    .line 1129
    invoke-virtual/range {v19 .. v19}, Lcom/android/dx/rop/type/Type;->getCategory()I

    move-result v5

    add-int/2addr v14, v5

    .line 1117
    .end local v4    # "insn":Lcom/android/dx/rop/code/Insn;
    .end local v7    # "result":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v16    # "local":Lcom/android/dx/cf/code/LocalVariableList$Item;
    .end local v19    # "one":Lcom/android/dx/rop/type/Type;
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1132
    .end local v15    # "i":I
    :cond_1
    new-instance v4, Lcom/android/dx/rop/code/PlainInsn;

    sget-object v5, Lcom/android/dx/rop/code/Rops;->GOTO:Lcom/android/dx/rop/code/Rop;

    sget-object v6, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    const/4 v15, 0x0

    invoke-direct {v4, v5, v2, v15, v6}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    invoke-virtual {v13, v12, v4}, Lcom/android/dx/rop/code/InsnList;->set(ILcom/android/dx/rop/code/Insn;)V

    .line 1134
    invoke-virtual {v13}, Lcom/android/dx/rop/code/InsnList;->setImmutable()V

    .line 1136
    invoke-direct/range {p0 .. p0}, Lcom/android/dx/cf/code/Ropper;->isSynchronized()Z

    move-result v16

    .line 1137
    .local v16, "synch":Z
    if-eqz v16, :cond_2

    const/4 v4, -0x4

    invoke-direct {v0, v4}, Lcom/android/dx/cf/code/Ropper;->getSpecialLabel(I)I

    move-result v4

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    move v9, v4

    .line 1138
    .local v9, "label":I
    new-instance v4, Lcom/android/dx/rop/code/BasicBlock;

    .line 1139
    const/4 v5, -0x1

    invoke-direct {v0, v5}, Lcom/android/dx/cf/code/Ropper;->getSpecialLabel(I)I

    move-result v5

    .line 1140
    invoke-static {v9}, Lcom/android/dx/util/IntList;->makeImmutable(I)Lcom/android/dx/util/IntList;

    move-result-object v6

    invoke-direct {v4, v5, v13, v6, v9}, Lcom/android/dx/rop/code/BasicBlock;-><init>(ILcom/android/dx/rop/code/InsnList;Lcom/android/dx/util/IntList;I)V

    move-object v8, v4

    .line 1141
    .local v8, "bb":Lcom/android/dx/rop/code/BasicBlock;
    sget-object v4, Lcom/android/dx/util/IntList;->EMPTY:Lcom/android/dx/util/IntList;

    invoke-direct {v0, v8, v4}, Lcom/android/dx/cf/code/Ropper;->addBlock(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/util/IntList;)V

    .line 1143
    if-eqz v16, :cond_6

    .line 1144
    invoke-direct/range {p0 .. p0}, Lcom/android/dx/cf/code/Ropper;->getSynchReg()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    .line 1146
    .local v7, "synchReg":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-direct/range {p0 .. p0}, Lcom/android/dx/cf/code/Ropper;->isStatic()Z

    move-result v4

    const/4 v6, 0x2

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 1147
    new-instance v15, Lcom/android/dx/rop/code/ThrowingCstInsn;

    sget-object v17, Lcom/android/dx/rop/code/Rops;->CONST_OBJECT:Lcom/android/dx/rop/code/Rop;

    sget-object v18, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    sget-object v19, Lcom/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/android/dx/rop/type/StdTypeList;

    iget-object v4, v0, Lcom/android/dx/cf/code/Ropper;->method:Lcom/android/dx/cf/code/ConcreteMethod;

    .line 1150
    invoke-virtual {v4}, Lcom/android/dx/cf/code/ConcreteMethod;->getDefiningClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v20

    move-object v4, v15

    move v3, v5

    move-object/from16 v5, v17

    move-object v6, v2

    move-object/from16 v17, v7

    .end local v7    # "synchReg":Lcom/android/dx/rop/code/RegisterSpec;
    .local v17, "synchReg":Lcom/android/dx/rop/code/RegisterSpec;
    move-object/from16 v7, v18

    move-object/from16 v18, v8

    .end local v8    # "bb":Lcom/android/dx/rop/code/BasicBlock;
    .local v18, "bb":Lcom/android/dx/rop/code/BasicBlock;
    move-object/from16 v8, v19

    move/from16 v22, v9

    .end local v9    # "label":I
    .local v22, "label":I
    move-object/from16 v9, v20

    invoke-direct/range {v4 .. v9}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    .line 1151
    .restart local v4    # "insn":Lcom/android/dx/rop/code/Insn;
    new-instance v5, Lcom/android/dx/rop/code/InsnList;

    invoke-direct {v5, v3}, Lcom/android/dx/rop/code/InsnList;-><init>(I)V

    .line 1152
    .end local v13    # "insns":Lcom/android/dx/rop/code/InsnList;
    .local v5, "insns":Lcom/android/dx/rop/code/InsnList;
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Lcom/android/dx/rop/code/InsnList;->set(ILcom/android/dx/rop/code/Insn;)V

    const/16 v21, 0x2

    goto :goto_3

    .line 1154
    .end local v4    # "insn":Lcom/android/dx/rop/code/Insn;
    .end local v5    # "insns":Lcom/android/dx/rop/code/InsnList;
    .end local v17    # "synchReg":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v18    # "bb":Lcom/android/dx/rop/code/BasicBlock;
    .end local v22    # "label":I
    .restart local v7    # "synchReg":Lcom/android/dx/rop/code/RegisterSpec;
    .restart local v8    # "bb":Lcom/android/dx/rop/code/BasicBlock;
    .restart local v9    # "label":I
    .restart local v13    # "insns":Lcom/android/dx/rop/code/InsnList;
    :cond_3
    move v3, v5

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move/from16 v22, v9

    .end local v7    # "synchReg":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v8    # "bb":Lcom/android/dx/rop/code/BasicBlock;
    .end local v9    # "label":I
    .restart local v17    # "synchReg":Lcom/android/dx/rop/code/RegisterSpec;
    .restart local v18    # "bb":Lcom/android/dx/rop/code/BasicBlock;
    .restart local v22    # "label":I
    new-instance v4, Lcom/android/dx/rop/code/InsnList;

    const/4 v9, 0x2

    invoke-direct {v4, v9}, Lcom/android/dx/rop/code/InsnList;-><init>(I)V

    move-object v13, v4

    .line 1155
    new-instance v19, Lcom/android/dx/rop/code/PlainCstInsn;

    sget-object v5, Lcom/android/dx/rop/code/Rops;->MOVE_PARAM_OBJECT:Lcom/android/dx/rop/code/Rop;

    sget-object v8, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    sget-object v20, Lcom/android/dx/rop/cst/CstInteger;->VALUE_0:Lcom/android/dx/rop/cst/CstInteger;

    move-object/from16 v4, v19

    move-object v6, v2

    move/from16 v21, v9

    move-object/from16 v9, v20

    invoke-direct/range {v4 .. v9}, Lcom/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    .line 1158
    .restart local v4    # "insn":Lcom/android/dx/rop/code/Insn;
    const/4 v5, 0x0

    invoke-virtual {v13, v5, v4}, Lcom/android/dx/rop/code/InsnList;->set(ILcom/android/dx/rop/code/Insn;)V

    .line 1159
    new-instance v5, Lcom/android/dx/rop/code/PlainInsn;

    sget-object v6, Lcom/android/dx/rop/code/Rops;->GOTO:Lcom/android/dx/rop/code/Rop;

    sget-object v7, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v5, v6, v2, v15, v7}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    invoke-virtual {v13, v3, v5}, Lcom/android/dx/rop/code/InsnList;->set(ILcom/android/dx/rop/code/Insn;)V

    move-object v5, v13

    .line 1163
    .end local v13    # "insns":Lcom/android/dx/rop/code/InsnList;
    .restart local v5    # "insns":Lcom/android/dx/rop/code/InsnList;
    :goto_3
    const/4 v6, -0x5

    invoke-direct {v0, v6}, Lcom/android/dx/cf/code/Ropper;->getSpecialLabel(I)I

    move-result v6

    .line 1164
    .local v6, "label2":I
    invoke-virtual {v5}, Lcom/android/dx/rop/code/InsnList;->setImmutable()V

    .line 1165
    new-instance v7, Lcom/android/dx/rop/code/BasicBlock;

    .line 1166
    invoke-static {v6}, Lcom/android/dx/util/IntList;->makeImmutable(I)Lcom/android/dx/util/IntList;

    move-result-object v8

    move/from16 v9, v22

    .end local v22    # "label":I
    .restart local v9    # "label":I
    invoke-direct {v7, v9, v5, v8, v6}, Lcom/android/dx/rop/code/BasicBlock;-><init>(ILcom/android/dx/rop/code/InsnList;Lcom/android/dx/util/IntList;I)V

    .line 1167
    .end local v18    # "bb":Lcom/android/dx/rop/code/BasicBlock;
    .local v7, "bb":Lcom/android/dx/rop/code/BasicBlock;
    sget-object v8, Lcom/android/dx/util/IntList;->EMPTY:Lcom/android/dx/util/IntList;

    invoke-direct {v0, v7, v8}, Lcom/android/dx/cf/code/Ropper;->addBlock(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/util/IntList;)V

    .line 1169
    new-instance v8, Lcom/android/dx/rop/code/InsnList;

    invoke-direct/range {p0 .. p0}, Lcom/android/dx/cf/code/Ropper;->isStatic()Z

    move-result v13

    if-eqz v13, :cond_4

    move/from16 v3, v21

    :cond_4
    invoke-direct {v8, v3}, Lcom/android/dx/rop/code/InsnList;-><init>(I)V

    move-object v13, v8

    .line 1171
    .end local v5    # "insns":Lcom/android/dx/rop/code/InsnList;
    .restart local v13    # "insns":Lcom/android/dx/rop/code/InsnList;
    invoke-direct/range {p0 .. p0}, Lcom/android/dx/cf/code/Ropper;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1172
    new-instance v3, Lcom/android/dx/rop/code/PlainInsn;

    invoke-static/range {v17 .. v17}, Lcom/android/dx/rop/code/Rops;->opMoveResultPseudo(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v5

    sget-object v8, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    move-object/from16 v15, v17

    .end local v17    # "synchReg":Lcom/android/dx/rop/code/RegisterSpec;
    .local v15, "synchReg":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-direct {v3, v5, v2, v15, v8}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    const/4 v5, 0x0

    invoke-virtual {v13, v5, v3}, Lcom/android/dx/rop/code/InsnList;->set(ILcom/android/dx/rop/code/Insn;)V

    goto :goto_4

    .line 1171
    .end local v15    # "synchReg":Lcom/android/dx/rop/code/RegisterSpec;
    .restart local v17    # "synchReg":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_5
    move-object/from16 v15, v17

    .line 1176
    .end local v17    # "synchReg":Lcom/android/dx/rop/code/RegisterSpec;
    .restart local v15    # "synchReg":Lcom/android/dx/rop/code/RegisterSpec;
    :goto_4
    new-instance v3, Lcom/android/dx/rop/code/ThrowingInsn;

    sget-object v5, Lcom/android/dx/rop/code/Rops;->MONITOR_ENTER:Lcom/android/dx/rop/code/Rop;

    .line 1177
    invoke-static {v15}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v8

    move-object/from16 v17, v1

    .end local v1    # "localVariables":Lcom/android/dx/cf/code/LocalVariableList;
    .local v17, "localVariables":Lcom/android/dx/cf/code/LocalVariableList;
    sget-object v1, Lcom/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/android/dx/rop/type/StdTypeList;

    invoke-direct {v3, v5, v2, v8, v1}, Lcom/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;)V

    move-object v1, v3

    .line 1179
    .end local v4    # "insn":Lcom/android/dx/rop/code/Insn;
    .local v1, "insn":Lcom/android/dx/rop/code/Insn;
    invoke-direct/range {p0 .. p0}, Lcom/android/dx/cf/code/Ropper;->isStatic()Z

    move-result v3

    invoke-virtual {v13, v3, v1}, Lcom/android/dx/rop/code/InsnList;->set(ILcom/android/dx/rop/code/Insn;)V

    .line 1180
    invoke-virtual {v13}, Lcom/android/dx/rop/code/InsnList;->setImmutable()V

    .line 1181
    new-instance v3, Lcom/android/dx/rop/code/BasicBlock;

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/dx/util/IntList;->makeImmutable(I)Lcom/android/dx/util/IntList;

    move-result-object v5

    invoke-direct {v3, v6, v13, v5, v4}, Lcom/android/dx/rop/code/BasicBlock;-><init>(ILcom/android/dx/rop/code/InsnList;Lcom/android/dx/util/IntList;I)V

    move-object v8, v3

    .line 1182
    .end local v7    # "bb":Lcom/android/dx/rop/code/BasicBlock;
    .restart local v8    # "bb":Lcom/android/dx/rop/code/BasicBlock;
    sget-object v3, Lcom/android/dx/util/IntList;->EMPTY:Lcom/android/dx/util/IntList;

    invoke-direct {v0, v8, v3}, Lcom/android/dx/cf/code/Ropper;->addBlock(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/util/IntList;)V

    goto :goto_5

    .line 1143
    .end local v6    # "label2":I
    .end local v15    # "synchReg":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v17    # "localVariables":Lcom/android/dx/cf/code/LocalVariableList;
    .local v1, "localVariables":Lcom/android/dx/cf/code/LocalVariableList;
    :cond_6
    move-object/from16 v17, v1

    move-object/from16 v18, v8

    .line 1184
    .end local v1    # "localVariables":Lcom/android/dx/cf/code/LocalVariableList;
    .restart local v17    # "localVariables":Lcom/android/dx/cf/code/LocalVariableList;
    :goto_5
    return-void
.end method

.method private addSynchExceptionHandlerBlock()V
    .locals 11

    .line 1247
    iget-boolean v0, p0, Lcom/android/dx/cf/code/Ropper;->synchNeedsExceptionHandler:Z

    if-nez v0, :cond_0

    .line 1254
    return-void

    .line 1257
    :cond_0
    iget-object v0, p0, Lcom/android/dx/cf/code/Ropper;->method:Lcom/android/dx/cf/code/ConcreteMethod;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dx/cf/code/ConcreteMethod;->makeSourcePosistion(I)Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v0

    .line 1258
    .local v0, "pos":Lcom/android/dx/rop/code/SourcePosition;
    sget-object v2, Lcom/android/dx/rop/type/Type;->THROWABLE:Lcom/android/dx/rop/type/Type;

    invoke-static {v1, v2}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 1262
    .local v2, "exReg":Lcom/android/dx/rop/code/RegisterSpec;
    new-instance v3, Lcom/android/dx/rop/code/InsnList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/android/dx/rop/code/InsnList;-><init>(I)V

    .line 1263
    .local v3, "insns":Lcom/android/dx/rop/code/InsnList;
    new-instance v4, Lcom/android/dx/rop/code/PlainInsn;

    sget-object v5, Lcom/android/dx/rop/type/Type;->THROWABLE:Lcom/android/dx/rop/type/Type;

    invoke-static {v5}, Lcom/android/dx/rop/code/Rops;->opMoveException(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v5

    sget-object v6, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v4, v5, v0, v2, v6}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 1265
    .local v4, "insn":Lcom/android/dx/rop/code/Insn;
    invoke-virtual {v3, v1, v4}, Lcom/android/dx/rop/code/InsnList;->set(ILcom/android/dx/rop/code/Insn;)V

    .line 1266
    new-instance v5, Lcom/android/dx/rop/code/ThrowingInsn;

    sget-object v6, Lcom/android/dx/rop/code/Rops;->MONITOR_EXIT:Lcom/android/dx/rop/code/Rop;

    .line 1267
    invoke-direct {p0}, Lcom/android/dx/cf/code/Ropper;->getSynchReg()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    invoke-static {v7}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v7

    sget-object v8, Lcom/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/android/dx/rop/type/StdTypeList;

    invoke-direct {v5, v6, v0, v7, v8}, Lcom/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;)V

    move-object v4, v5

    .line 1269
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Lcom/android/dx/rop/code/InsnList;->set(ILcom/android/dx/rop/code/Insn;)V

    .line 1270
    invoke-virtual {v3}, Lcom/android/dx/rop/code/InsnList;->setImmutable()V

    .line 1272
    const/4 v6, -0x7

    invoke-direct {p0, v6}, Lcom/android/dx/cf/code/Ropper;->getSpecialLabel(I)I

    move-result v6

    .line 1273
    .local v6, "label2":I
    new-instance v7, Lcom/android/dx/rop/code/BasicBlock;

    const/4 v8, -0x6

    invoke-direct {p0, v8}, Lcom/android/dx/cf/code/Ropper;->getSpecialLabel(I)I

    move-result v8

    .line 1274
    invoke-static {v6}, Lcom/android/dx/util/IntList;->makeImmutable(I)Lcom/android/dx/util/IntList;

    move-result-object v9

    invoke-direct {v7, v8, v3, v9, v6}, Lcom/android/dx/rop/code/BasicBlock;-><init>(ILcom/android/dx/rop/code/InsnList;Lcom/android/dx/util/IntList;I)V

    .line 1275
    .local v7, "bb":Lcom/android/dx/rop/code/BasicBlock;
    sget-object v8, Lcom/android/dx/util/IntList;->EMPTY:Lcom/android/dx/util/IntList;

    invoke-direct {p0, v7, v8}, Lcom/android/dx/cf/code/Ropper;->addBlock(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/util/IntList;)V

    .line 1277
    new-instance v8, Lcom/android/dx/rop/code/InsnList;

    invoke-direct {v8, v5}, Lcom/android/dx/rop/code/InsnList;-><init>(I)V

    move-object v3, v8

    .line 1278
    new-instance v5, Lcom/android/dx/rop/code/ThrowingInsn;

    sget-object v8, Lcom/android/dx/rop/code/Rops;->THROW:Lcom/android/dx/rop/code/Rop;

    .line 1279
    invoke-static {v2}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v9

    sget-object v10, Lcom/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/android/dx/rop/type/StdTypeList;

    invoke-direct {v5, v8, v0, v9, v10}, Lcom/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;)V

    move-object v4, v5

    .line 1281
    invoke-virtual {v3, v1, v4}, Lcom/android/dx/rop/code/InsnList;->set(ILcom/android/dx/rop/code/Insn;)V

    .line 1282
    invoke-virtual {v3}, Lcom/android/dx/rop/code/InsnList;->setImmutable()V

    .line 1284
    new-instance v1, Lcom/android/dx/rop/code/BasicBlock;

    sget-object v5, Lcom/android/dx/util/IntList;->EMPTY:Lcom/android/dx/util/IntList;

    const/4 v8, -0x1

    invoke-direct {v1, v6, v3, v5, v8}, Lcom/android/dx/rop/code/BasicBlock;-><init>(ILcom/android/dx/rop/code/InsnList;Lcom/android/dx/util/IntList;I)V

    .line 1285
    .end local v7    # "bb":Lcom/android/dx/rop/code/BasicBlock;
    .local v1, "bb":Lcom/android/dx/rop/code/BasicBlock;
    sget-object v5, Lcom/android/dx/util/IntList;->EMPTY:Lcom/android/dx/util/IntList;

    invoke-direct {p0, v1, v5}, Lcom/android/dx/cf/code/Ropper;->addBlock(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/util/IntList;)V

    .line 1286
    return-void
.end method

.method public static convert(Lcom/android/dx/cf/code/ConcreteMethod;Lcom/android/dx/rop/code/TranslationAdvice;Lcom/android/dx/cf/iface/MethodList;Lcom/android/dx/dex/DexOptions;)Lcom/android/dx/rop/code/RopMethod;
    .locals 3
    .param p0, "method"    # Lcom/android/dx/cf/code/ConcreteMethod;
    .param p1, "advice"    # Lcom/android/dx/rop/code/TranslationAdvice;
    .param p2, "methods"    # Lcom/android/dx/cf/iface/MethodList;
    .param p3, "dexOptions"    # Lcom/android/dx/dex/DexOptions;

    .line 348
    :try_start_0
    new-instance v0, Lcom/android/dx/cf/code/Ropper;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/dx/cf/code/Ropper;-><init>(Lcom/android/dx/cf/code/ConcreteMethod;Lcom/android/dx/rop/code/TranslationAdvice;Lcom/android/dx/cf/iface/MethodList;Lcom/android/dx/dex/DexOptions;)V

    .line 349
    .local v0, "r":Lcom/android/dx/cf/code/Ropper;
    invoke-direct {v0}, Lcom/android/dx/cf/code/Ropper;->doit()V

    .line 350
    invoke-direct {v0}, Lcom/android/dx/cf/code/Ropper;->getRopMethod()Lcom/android/dx/rop/code/RopMethod;

    move-result-object v1
    :try_end_0
    .catch Lcom/android/dx/cf/code/SimException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 351
    .end local v0    # "r":Lcom/android/dx/cf/code/Ropper;
    :catch_0
    move-exception v0

    .line 352
    .local v0, "ex":Lcom/android/dx/cf/code/SimException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...while working on method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 353
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ConcreteMethod;->getNat()Lcom/android/dx/rop/cst/CstNat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstNat;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-virtual {v0, v1}, Lcom/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 354
    throw v0
.end method

.method private deleteUnreachableBlocks()V
    .locals 3

    .line 1406
    new-instance v0, Lcom/android/dx/util/IntList;

    iget-object v1, p0, Lcom/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/dx/util/IntList;-><init>(I)V

    .line 1409
    .local v0, "reachableLabels":Lcom/android/dx/util/IntList;
    iget-object v1, p0, Lcom/android/dx/cf/code/Ropper;->resultSubroutines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1411
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/dx/cf/code/Ropper;->getSpecialLabel(I)I

    move-result v1

    new-instance v2, Lcom/android/dx/cf/code/Ropper$2;

    invoke-direct {v2, p0, v0}, Lcom/android/dx/cf/code/Ropper$2;-><init>(Lcom/android/dx/cf/code/Ropper;Lcom/android/dx/util/IntList;)V

    invoke-direct {p0, v1, v2}, Lcom/android/dx/cf/code/Ropper;->forEachNonSubBlockDepthFirst(ILcom/android/dx/rop/code/BasicBlock$Visitor;)V

    .line 1420
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->sort()V

    .line 1422
    iget-object v1, p0, Lcom/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1423
    iget-object v2, p0, Lcom/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/rop/code/BasicBlock;

    invoke-virtual {v2}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/dx/util/IntList;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    .line 1424
    iget-object v2, p0, Lcom/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1422
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1429
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private doit()V
    .locals 7

    .line 729
    iget v0, p0, Lcom/android/dx/cf/code/Ropper;->maxLabel:I

    invoke-static {v0}, Lcom/android/dx/util/Bits;->makeBitSet(I)[I

    move-result-object v0

    .line 731
    .local v0, "workSet":[I
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/dx/util/Bits;->set([II)V

    .line 732
    invoke-direct {p0}, Lcom/android/dx/cf/code/Ropper;->addSetupBlocks()V

    .line 733
    invoke-direct {p0}, Lcom/android/dx/cf/code/Ropper;->setFirstFrame()V

    .line 736
    :goto_0
    invoke-static {v0, v1}, Lcom/android/dx/util/Bits;->findFirst([II)I

    move-result v2

    .line 737
    .local v2, "offset":I
    if-gez v2, :cond_1

    .line 738
    nop

    .line 751
    .end local v2    # "offset":I
    invoke-direct {p0}, Lcom/android/dx/cf/code/Ropper;->addReturnBlock()V

    .line 752
    invoke-direct {p0}, Lcom/android/dx/cf/code/Ropper;->addSynchExceptionHandlerBlock()V

    .line 753
    invoke-direct {p0}, Lcom/android/dx/cf/code/Ropper;->addExceptionSetupBlocks()V

    .line 755
    iget-boolean v1, p0, Lcom/android/dx/cf/code/Ropper;->hasSubroutines:Z

    if-eqz v1, :cond_0

    .line 757
    invoke-direct {p0}, Lcom/android/dx/cf/code/Ropper;->inlineSubroutines()V

    .line 759
    :cond_0
    return-void

    .line 740
    .restart local v2    # "offset":I
    :cond_1
    invoke-static {v0, v2}, Lcom/android/dx/util/Bits;->clear([II)V

    .line 741
    iget-object v3, p0, Lcom/android/dx/cf/code/Ropper;->blocks:Lcom/android/dx/cf/code/ByteBlockList;

    invoke-virtual {v3, v2}, Lcom/android/dx/cf/code/ByteBlockList;->labelToBlock(I)Lcom/android/dx/cf/code/ByteBlock;

    move-result-object v3

    .line 742
    .local v3, "block":Lcom/android/dx/cf/code/ByteBlock;
    iget-object v4, p0, Lcom/android/dx/cf/code/Ropper;->startFrames:[Lcom/android/dx/cf/code/Frame;

    aget-object v4, v4, v2

    .line 744
    .local v4, "frame":Lcom/android/dx/cf/code/Frame;
    :try_start_0
    invoke-direct {p0, v3, v4, v0}, Lcom/android/dx/cf/code/Ropper;->processBlock(Lcom/android/dx/cf/code/ByteBlock;Lcom/android/dx/cf/code/Frame;[I)V
    :try_end_0
    .catch Lcom/android/dx/cf/code/SimException; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    nop

    .line 749
    .end local v2    # "offset":I
    .end local v3    # "block":Lcom/android/dx/cf/code/ByteBlock;
    .end local v4    # "frame":Lcom/android/dx/cf/code/Frame;
    goto :goto_0

    .line 745
    .restart local v2    # "offset":I
    .restart local v3    # "block":Lcom/android/dx/cf/code/ByteBlock;
    .restart local v4    # "frame":Lcom/android/dx/cf/code/Frame;
    :catch_0
    move-exception v1

    .line 746
    .local v1, "ex":Lcom/android/dx/cf/code/SimException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "...while working on block "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 747
    throw v1
.end method

.method private filterMoveReturnAddressInsns(Lcom/android/dx/rop/code/InsnList;)Lcom/android/dx/rop/code/InsnList;
    .locals 8
    .param p1, "insns"    # Lcom/android/dx/rop/code/InsnList;

    .line 1722
    const/4 v0, 0x0

    .line 1725
    .local v0, "newSz":I
    invoke-virtual {p1}, Lcom/android/dx/rop/code/InsnList;->size()I

    move-result v1

    .line 1726
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1727
    invoke-virtual {p1, v2}, Lcom/android/dx/rop/code/InsnList;->get(I)Lcom/android/dx/rop/code/Insn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v3

    sget-object v4, Lcom/android/dx/rop/code/Rops;->MOVE_RETURN_ADDRESS:Lcom/android/dx/rop/code/Rop;

    if-eq v3, v4, :cond_0

    .line 1728
    add-int/lit8 v0, v0, 0x1

    .line 1726
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1732
    .end local v2    # "i":I
    :cond_1
    if-ne v0, v1, :cond_2

    .line 1733
    return-object p1

    .line 1737
    :cond_2
    new-instance v2, Lcom/android/dx/rop/code/InsnList;

    invoke-direct {v2, v0}, Lcom/android/dx/rop/code/InsnList;-><init>(I)V

    .line 1739
    .local v2, "newInsns":Lcom/android/dx/rop/code/InsnList;
    const/4 v3, 0x0

    .line 1740
    .local v3, "newIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_4

    .line 1741
    invoke-virtual {p1, v4}, Lcom/android/dx/rop/code/InsnList;->get(I)Lcom/android/dx/rop/code/Insn;

    move-result-object v5

    .line 1742
    .local v5, "insn":Lcom/android/dx/rop/code/Insn;
    invoke-virtual {v5}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v6

    sget-object v7, Lcom/android/dx/rop/code/Rops;->MOVE_RETURN_ADDRESS:Lcom/android/dx/rop/code/Rop;

    if-eq v6, v7, :cond_3

    .line 1743
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "newIndex":I
    .local v6, "newIndex":I
    invoke-virtual {v2, v3, v5}, Lcom/android/dx/rop/code/InsnList;->set(ILcom/android/dx/rop/code/Insn;)V

    move v3, v6

    .line 1740
    .end local v5    # "insn":Lcom/android/dx/rop/code/Insn;
    .end local v6    # "newIndex":I
    .restart local v3    # "newIndex":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1747
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {v2}, Lcom/android/dx/rop/code/InsnList;->setImmutable()V

    .line 1748
    return-object v2
.end method

.method private forEachNonSubBlockDepthFirst(ILcom/android/dx/rop/code/BasicBlock$Visitor;)V
    .locals 3
    .param p1, "firstLabel"    # I
    .param p2, "v"    # Lcom/android/dx/rop/code/BasicBlock$Visitor;

    .line 1759
    invoke-direct {p0, p1}, Lcom/android/dx/cf/code/Ropper;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v0

    new-instance v1, Ljava/util/BitSet;

    iget v2, p0, Lcom/android/dx/cf/code/Ropper;->maxLabel:I

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    invoke-direct {p0, v0, p2, v1}, Lcom/android/dx/cf/code/Ropper;->forEachNonSubBlockDepthFirst0(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/rop/code/BasicBlock$Visitor;Ljava/util/BitSet;)V

    .line 1761
    return-void
.end method

.method private forEachNonSubBlockDepthFirst0(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/rop/code/BasicBlock$Visitor;Ljava/util/BitSet;)V
    .locals 6
    .param p1, "next"    # Lcom/android/dx/rop/code/BasicBlock;
    .param p2, "v"    # Lcom/android/dx/rop/code/BasicBlock$Visitor;
    .param p3, "visited"    # Ljava/util/BitSet;

    .line 1773
    invoke-interface {p2, p1}, Lcom/android/dx/rop/code/BasicBlock$Visitor;->visitBlock(Lcom/android/dx/rop/code/BasicBlock;)V

    .line 1774
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/util/BitSet;->set(I)V

    .line 1776
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v0

    .line 1777
    .local v0, "successors":Lcom/android/dx/util/IntList;
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    move-result v1

    .line 1779
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1780
    invoke-virtual {v0, v2}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v3

    .line 1782
    .local v3, "succ":I
    invoke-virtual {p3, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1783
    goto :goto_1

    .line 1786
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/dx/cf/code/Ropper;->isSubroutineCaller(Lcom/android/dx/rop/code/BasicBlock;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-lez v2, :cond_1

    .line 1788
    goto :goto_1

    .line 1795
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/dx/cf/code/Ropper;->labelToResultIndex(I)I

    move-result v4

    .line 1796
    .local v4, "idx":I
    if-ltz v4, :cond_2

    .line 1797
    iget-object v5, p0, Lcom/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dx/rop/code/BasicBlock;

    invoke-direct {p0, v5, p2, p3}, Lcom/android/dx/cf/code/Ropper;->forEachNonSubBlockDepthFirst0(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/rop/code/BasicBlock$Visitor;Ljava/util/BitSet;)V

    .line 1779
    .end local v3    # "succ":I
    .end local v4    # "idx":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1800
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private getAvailableLabel()I
    .locals 4

    .line 481
    invoke-direct {p0}, Lcom/android/dx/cf/code/Ropper;->getMinimumUnreservedLabel()I

    move-result v0

    .line 483
    .local v0, "candidate":I
    iget-object v1, p0, Lcom/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/rop/code/BasicBlock;

    .line 484
    .local v2, "bb":Lcom/android/dx/rop/code/BasicBlock;
    invoke-virtual {v2}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v3

    .line 485
    .local v3, "label":I
    if-lt v3, v0, :cond_0

    .line 486
    add-int/lit8 v0, v3, 0x1

    .line 488
    .end local v2    # "bb":Lcom/android/dx/rop/code/BasicBlock;
    .end local v3    # "label":I
    :cond_0
    goto :goto_0

    .line 490
    :cond_1
    return v0
.end method

.method private getMinimumUnreservedLabel()I
    .locals 2

    .line 457
    iget v0, p0, Lcom/android/dx/cf/code/Ropper;->maxLabel:I

    iget-object v1, p0, Lcom/android/dx/cf/code/Ropper;->method:Lcom/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v1}, Lcom/android/dx/cf/code/ConcreteMethod;->getCatches()Lcom/android/dx/cf/code/ByteCatchList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/cf/code/ByteCatchList;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    return v0
.end method

.method private getNormalRegCount()I
    .locals 2

    .line 520
    iget v0, p0, Lcom/android/dx/cf/code/Ropper;->maxLocals:I

    iget-object v1, p0, Lcom/android/dx/cf/code/Ropper;->method:Lcom/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v1}, Lcom/android/dx/cf/code/ConcreteMethod;->getMaxStack()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getRopMethod()Lcom/android/dx/rop/code/RopMethod;
    .locals 4

    .line 708
    iget-object v0, p0, Lcom/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 709
    .local v0, "sz":I
    new-instance v1, Lcom/android/dx/rop/code/BasicBlockList;

    invoke-direct {v1, v0}, Lcom/android/dx/rop/code/BasicBlockList;-><init>(I)V

    .line 710
    .local v1, "bbl":Lcom/android/dx/rop/code/BasicBlockList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 711
    iget-object v3, p0, Lcom/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/rop/code/BasicBlock;

    invoke-virtual {v1, v2, v3}, Lcom/android/dx/rop/code/BasicBlockList;->set(ILcom/android/dx/rop/code/BasicBlock;)V

    .line 710
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 713
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlockList;->setImmutable()V

    .line 722
    new-instance v2, Lcom/android/dx/rop/code/RopMethod;

    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/android/dx/cf/code/Ropper;->getSpecialLabel(I)I

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/android/dx/rop/code/RopMethod;-><init>(Lcom/android/dx/rop/code/BasicBlockList;I)V

    return-object v2
.end method

.method private getSpecialLabel(I)I
    .locals 2
    .param p1, "label"    # I

    .line 443
    iget v0, p0, Lcom/android/dx/cf/code/Ropper;->maxLabel:I

    iget-object v1, p0, Lcom/android/dx/cf/code/Ropper;->method:Lcom/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v1}, Lcom/android/dx/cf/code/ConcreteMethod;->getCatches()Lcom/android/dx/cf/code/ByteCatchList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/cf/code/ByteCatchList;->size()I

    move-result v1

    add-int/2addr v0, v1

    not-int v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method private getSynchReg()Lcom/android/dx/rop/code/RegisterSpec;
    .locals 3

    .line 538
    invoke-direct {p0}, Lcom/android/dx/cf/code/Ropper;->getNormalRegCount()I

    move-result v0

    .line 539
    .local v0, "reg":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    sget-object v2, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    invoke-static {v1, v2}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    return-object v1
.end method

.method private inlineSubroutines()V
    .locals 9

    .line 1346
    new-instance v0, Lcom/android/dx/util/IntList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/dx/util/IntList;-><init>(I)V

    .line 1355
    .local v0, "reachableSubroutineCallerLabels":Lcom/android/dx/util/IntList;
    new-instance v1, Lcom/android/dx/cf/code/Ropper$1;

    invoke-direct {v1, p0, v0}, Lcom/android/dx/cf/code/Ropper$1;-><init>(Lcom/android/dx/cf/code/Ropper;Lcom/android/dx/util/IntList;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/dx/cf/code/Ropper;->forEachNonSubBlockDepthFirst(ILcom/android/dx/rop/code/BasicBlock$Visitor;)V

    .line 1368
    invoke-direct {p0}, Lcom/android/dx/cf/code/Ropper;->getAvailableLabel()I

    move-result v1

    .line 1369
    .local v1, "largestAllocedLabel":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1371
    .local v2, "labelToSubroutines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/util/IntList;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1372
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1371
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1375
    .end local v3    # "i":I
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1376
    iget-object v4, p0, Lcom/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dx/rop/code/BasicBlock;

    .line 1377
    .local v4, "b":Lcom/android/dx/rop/code/BasicBlock;
    if-nez v4, :cond_1

    .line 1378
    goto :goto_2

    .line 1380
    :cond_1
    iget-object v5, p0, Lcom/android/dx/cf/code/Ropper;->resultSubroutines:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dx/util/IntList;

    .line 1381
    .local v5, "subroutineList":Lcom/android/dx/util/IntList;
    invoke-virtual {v4}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v6

    invoke-virtual {v2, v6, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1375
    .end local v4    # "b":Lcom/android/dx/rop/code/BasicBlock;
    .end local v5    # "subroutineList":Lcom/android/dx/util/IntList;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1388
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    move-result v3

    .line 1389
    .local v3, "sz":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v3, :cond_3

    .line 1390
    invoke-virtual {v0, v4}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v5

    .line 1391
    .local v5, "label":I
    new-instance v6, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;

    new-instance v7, Lcom/android/dx/cf/code/Ropper$LabelAllocator;

    .line 1392
    invoke-direct {p0}, Lcom/android/dx/cf/code/Ropper;->getAvailableLabel()I

    move-result v8

    invoke-direct {v7, v8}, Lcom/android/dx/cf/code/Ropper$LabelAllocator;-><init>(I)V

    invoke-direct {v6, p0, v7, v2}, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;-><init>(Lcom/android/dx/cf/code/Ropper;Lcom/android/dx/cf/code/Ropper$LabelAllocator;Ljava/util/ArrayList;)V

    .line 1394
    invoke-direct {p0, v5}, Lcom/android/dx/cf/code/Ropper;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/dx/cf/code/Ropper$SubroutineInliner;->inlineSubroutineCalledFrom(Lcom/android/dx/rop/code/BasicBlock;)V

    .line 1389
    .end local v5    # "label":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1398
    .end local v4    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/android/dx/cf/code/Ropper;->deleteUnreachableBlocks()V

    .line 1399
    return-void
.end method

.method private isStatic()Z
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/android/dx/cf/code/Ropper;->method:Lcom/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v0}, Lcom/android/dx/cf/code/ConcreteMethod;->getAccessFlags()I

    move-result v0

    .line 510
    .local v0, "accessFlags":I
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSubroutineCaller(Lcom/android/dx/rop/code/BasicBlock;)Z
    .locals 6
    .param p1, "bb"    # Lcom/android/dx/rop/code/BasicBlock;

    .line 1333
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v0

    .line 1334
    .local v0, "successors":Lcom/android/dx/util/IntList;
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    return v3

    .line 1336
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v2

    .line 1338
    .local v2, "subLabel":I
    iget-object v4, p0, Lcom/android/dx/cf/code/Ropper;->subroutines:[Lcom/android/dx/cf/code/Ropper$Subroutine;

    array-length v5, v4

    if-ge v2, v5, :cond_1

    aget-object v4, v4, v2

    if-eqz v4, :cond_1

    move v3, v1

    :cond_1
    return v3
.end method

.method private isSynchronized()Z
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/android/dx/cf/code/Ropper;->method:Lcom/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v0}, Lcom/android/dx/cf/code/ConcreteMethod;->getAccessFlags()I

    move-result v0

    .line 500
    .local v0, "accessFlags":I
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;
    .locals 4
    .param p1, "label"    # I

    .line 570
    invoke-direct {p0, p1}, Lcom/android/dx/cf/code/Ropper;->labelToResultIndex(I)I

    move-result v0

    .line 572
    .local v0, "idx":I
    if-ltz v0, :cond_0

    .line 577
    iget-object v1, p0, Lcom/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/rop/code/BasicBlock;

    return-object v1

    .line 573
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no such label "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 574
    invoke-static {p1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private labelToResultIndex(I)I
    .locals 4
    .param p1, "label"    # I

    .line 551
    iget-object v0, p0, Lcom/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 552
    .local v0, "sz":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 553
    iget-object v2, p0, Lcom/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/rop/code/BasicBlock;

    .line 554
    .local v2, "one":Lcom/android/dx/rop/code/BasicBlock;
    invoke-virtual {v2}, Lcom/android/dx/rop/code/BasicBlock;->getLabel()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 555
    return v1

    .line 552
    .end local v2    # "one":Lcom/android/dx/rop/code/BasicBlock;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 559
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private mergeAndWorkAsNecessary(IILcom/android/dx/cf/code/Ropper$Subroutine;Lcom/android/dx/cf/code/Frame;[I)V
    .locals 3
    .param p1, "label"    # I
    .param p2, "pred"    # I
    .param p3, "calledSubroutine"    # Lcom/android/dx/cf/code/Ropper$Subroutine;
    .param p4, "frame"    # Lcom/android/dx/cf/code/Frame;
    .param p5, "workSet"    # [I

    .line 1071
    iget-object v0, p0, Lcom/android/dx/cf/code/Ropper;->startFrames:[Lcom/android/dx/cf/code/Frame;

    aget-object v1, v0, p1

    .line 1074
    .local v1, "existing":Lcom/android/dx/cf/code/Frame;
    if-eqz v1, :cond_1

    .line 1080
    if-eqz p3, :cond_0

    .line 1081
    nop

    .line 1082
    invoke-virtual {p3}, Lcom/android/dx/cf/code/Ropper$Subroutine;->getStartBlock()I

    move-result v0

    .line 1081
    invoke-virtual {v1, p4, v0, p2}, Lcom/android/dx/cf/code/Frame;->mergeWithSubroutineCaller(Lcom/android/dx/cf/code/Frame;II)Lcom/android/dx/cf/code/Frame;

    move-result-object v0

    .local v0, "merged":Lcom/android/dx/cf/code/Frame;
    goto :goto_0

    .line 1084
    .end local v0    # "merged":Lcom/android/dx/cf/code/Frame;
    :cond_0
    invoke-virtual {v1, p4}, Lcom/android/dx/cf/code/Frame;->mergeWith(Lcom/android/dx/cf/code/Frame;)Lcom/android/dx/cf/code/Frame;

    move-result-object v0

    .line 1086
    .restart local v0    # "merged":Lcom/android/dx/cf/code/Frame;
    :goto_0
    if-eq v0, v1, :cond_3

    .line 1087
    iget-object v2, p0, Lcom/android/dx/cf/code/Ropper;->startFrames:[Lcom/android/dx/cf/code/Frame;

    aput-object v0, v2, p1

    .line 1088
    invoke-static {p5, p1}, Lcom/android/dx/util/Bits;->set([II)V

    goto :goto_2

    .line 1092
    .end local v0    # "merged":Lcom/android/dx/cf/code/Frame;
    :cond_1
    if-eqz p3, :cond_2

    .line 1093
    nop

    .line 1094
    invoke-virtual {p4, p1, p2}, Lcom/android/dx/cf/code/Frame;->makeNewSubroutineStartFrame(II)Lcom/android/dx/cf/code/Frame;

    move-result-object v2

    aput-object v2, v0, p1

    goto :goto_1

    .line 1096
    :cond_2
    aput-object p4, v0, p1

    .line 1098
    :goto_1
    invoke-static {p5, p1}, Lcom/android/dx/util/Bits;->set([II)V

    .line 1100
    :cond_3
    :goto_2
    return-void
.end method

.method private processBlock(Lcom/android/dx/cf/code/ByteBlock;Lcom/android/dx/cf/code/Frame;[I)V
    .locals 28
    .param p1, "block"    # Lcom/android/dx/cf/code/ByteBlock;
    .param p2, "frame"    # Lcom/android/dx/cf/code/Frame;
    .param p3, "workSet"    # [I

    .line 781
    move-object/from16 v7, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/code/ByteBlock;->getCatches()Lcom/android/dx/cf/code/ByteCatchList;

    move-result-object v8

    .line 782
    .local v8, "catches":Lcom/android/dx/cf/code/ByteCatchList;
    iget-object v0, v7, Lcom/android/dx/cf/code/Ropper;->machine:Lcom/android/dx/cf/code/RopperMachine;

    invoke-virtual {v8}, Lcom/android/dx/cf/code/ByteCatchList;->toRopCatchList()Lcom/android/dx/rop/type/TypeList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dx/cf/code/RopperMachine;->startBlock(Lcom/android/dx/rop/type/TypeList;)V

    .line 788
    invoke-virtual/range {p2 .. p2}, Lcom/android/dx/cf/code/Frame;->copy()Lcom/android/dx/cf/code/Frame;

    move-result-object v9

    .line 789
    .end local p2    # "frame":Lcom/android/dx/cf/code/Frame;
    .local v9, "frame":Lcom/android/dx/cf/code/Frame;
    iget-object v0, v7, Lcom/android/dx/cf/code/Ropper;->sim:Lcom/android/dx/cf/code/Simulator;

    move-object/from16 v10, p1

    invoke-virtual {v0, v10, v9}, Lcom/android/dx/cf/code/Simulator;->simulate(Lcom/android/dx/cf/code/ByteBlock;Lcom/android/dx/cf/code/Frame;)V

    .line 790
    invoke-virtual {v9}, Lcom/android/dx/cf/code/Frame;->setImmutable()V

    .line 792
    iget-object v0, v7, Lcom/android/dx/cf/code/Ropper;->machine:Lcom/android/dx/cf/code/RopperMachine;

    invoke-virtual {v0}, Lcom/android/dx/cf/code/RopperMachine;->getExtraBlockCount()I

    move-result v11

    .line 793
    .local v11, "extraBlockCount":I
    iget-object v0, v7, Lcom/android/dx/cf/code/Ropper;->machine:Lcom/android/dx/cf/code/RopperMachine;

    invoke-virtual {v0}, Lcom/android/dx/cf/code/RopperMachine;->getInsns()Ljava/util/ArrayList;

    move-result-object v12

    .line 794
    .local v12, "insns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/code/Insn;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 801
    .local v13, "insnSz":I
    invoke-virtual {v8}, Lcom/android/dx/cf/code/ByteCatchList;->size()I

    move-result v14

    .line 802
    .local v14, "catchSz":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/code/ByteBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v0

    .line 806
    .local v0, "successors":Lcom/android/dx/util/IntList;
    const/4 v1, 0x0

    .line 807
    .local v1, "calledSubroutine":Lcom/android/dx/cf/code/Ropper$Subroutine;
    iget-object v2, v7, Lcom/android/dx/cf/code/Ropper;->machine:Lcom/android/dx/cf/code/RopperMachine;

    invoke-virtual {v2}, Lcom/android/dx/cf/code/RopperMachine;->hasJsr()Z

    move-result v2

    const/4 v15, 0x1

    if-eqz v2, :cond_1

    .line 812
    const/4 v2, 0x1

    .line 814
    .local v2, "startSuccessorIndex":I
    invoke-virtual {v0, v15}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v3

    .line 816
    .local v3, "subroutineLabel":I
    iget-object v4, v7, Lcom/android/dx/cf/code/Ropper;->subroutines:[Lcom/android/dx/cf/code/Ropper$Subroutine;

    aget-object v5, v4, v3

    if-nez v5, :cond_0

    .line 817
    new-instance v5, Lcom/android/dx/cf/code/Ropper$Subroutine;

    invoke-direct {v5, v7, v3}, Lcom/android/dx/cf/code/Ropper$Subroutine;-><init>(Lcom/android/dx/cf/code/Ropper;I)V

    aput-object v5, v4, v3

    .line 821
    :cond_0
    iget-object v4, v7, Lcom/android/dx/cf/code/Ropper;->subroutines:[Lcom/android/dx/cf/code/Ropper$Subroutine;

    aget-object v4, v4, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/code/ByteBlock;->getLabel()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/dx/cf/code/Ropper$Subroutine;->addCallerBlock(I)V

    .line 823
    iget-object v4, v7, Lcom/android/dx/cf/code/Ropper;->subroutines:[Lcom/android/dx/cf/code/Ropper$Subroutine;

    aget-object v1, v4, v3

    .line 824
    .end local v3    # "subroutineLabel":I
    move-object/from16 v6, p3

    move-object v5, v0

    move-object/from16 v16, v1

    move/from16 v17, v2

    goto :goto_1

    .end local v2    # "startSuccessorIndex":I
    :cond_1
    iget-object v2, v7, Lcom/android/dx/cf/code/Ropper;->machine:Lcom/android/dx/cf/code/RopperMachine;

    invoke-virtual {v2}, Lcom/android/dx/cf/code/RopperMachine;->hasRet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 831
    iget-object v2, v7, Lcom/android/dx/cf/code/Ropper;->machine:Lcom/android/dx/cf/code/RopperMachine;

    invoke-virtual {v2}, Lcom/android/dx/cf/code/RopperMachine;->getReturnAddress()Lcom/android/dx/cf/code/ReturnAddress;

    move-result-object v2

    .line 832
    .local v2, "ra":Lcom/android/dx/cf/code/ReturnAddress;
    invoke-virtual {v2}, Lcom/android/dx/cf/code/ReturnAddress;->getSubroutineAddress()I

    move-result v3

    .line 834
    .restart local v3    # "subroutineLabel":I
    iget-object v4, v7, Lcom/android/dx/cf/code/Ropper;->subroutines:[Lcom/android/dx/cf/code/Ropper$Subroutine;

    aget-object v5, v4, v3

    if-nez v5, :cond_2

    .line 835
    new-instance v5, Lcom/android/dx/cf/code/Ropper$Subroutine;

    .line 836
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/code/ByteBlock;->getLabel()I

    move-result v6

    invoke-direct {v5, v7, v3, v6}, Lcom/android/dx/cf/code/Ropper$Subroutine;-><init>(Lcom/android/dx/cf/code/Ropper;II)V

    aput-object v5, v4, v3

    goto :goto_0

    .line 838
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/code/ByteBlock;->getLabel()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/dx/cf/code/Ropper$Subroutine;->addRetBlock(I)V

    .line 841
    :goto_0
    iget-object v4, v7, Lcom/android/dx/cf/code/Ropper;->subroutines:[Lcom/android/dx/cf/code/Ropper$Subroutine;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/dx/cf/code/Ropper$Subroutine;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v0

    .line 842
    iget-object v4, v7, Lcom/android/dx/cf/code/Ropper;->subroutines:[Lcom/android/dx/cf/code/Ropper$Subroutine;

    aget-object v4, v4, v3

    .line 843
    move-object/from16 v6, p3

    invoke-virtual {v4, v9, v6}, Lcom/android/dx/cf/code/Ropper$Subroutine;->mergeToSuccessors(Lcom/android/dx/cf/code/Frame;[I)V

    .line 845
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    move-result v2

    .line 846
    .end local v3    # "subroutineLabel":I
    .local v2, "startSuccessorIndex":I
    move-object v5, v0

    move-object/from16 v16, v1

    move/from16 v17, v2

    goto :goto_1

    .end local v2    # "startSuccessorIndex":I
    :cond_3
    move-object/from16 v6, p3

    iget-object v2, v7, Lcom/android/dx/cf/code/Ropper;->machine:Lcom/android/dx/cf/code/RopperMachine;

    invoke-virtual {v2}, Lcom/android/dx/cf/code/RopperMachine;->wereCatchesUsed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 852
    move v2, v14

    move-object v5, v0

    move-object/from16 v16, v1

    move/from16 v17, v2

    .restart local v2    # "startSuccessorIndex":I
    goto :goto_1

    .line 854
    .end local v2    # "startSuccessorIndex":I
    :cond_4
    const/4 v2, 0x0

    move-object v5, v0

    move-object/from16 v16, v1

    move/from16 v17, v2

    .line 857
    .end local v0    # "successors":Lcom/android/dx/util/IntList;
    .end local v1    # "calledSubroutine":Lcom/android/dx/cf/code/Ropper$Subroutine;
    .local v5, "successors":Lcom/android/dx/util/IntList;
    .local v16, "calledSubroutine":Lcom/android/dx/cf/code/Ropper$Subroutine;
    .local v17, "startSuccessorIndex":I
    :goto_1
    invoke-virtual {v5}, Lcom/android/dx/util/IntList;->size()I

    move-result v4

    .line 858
    .local v4, "succSz":I
    move/from16 v0, v17

    move v3, v0

    .local v3, "i":I
    :goto_2
    if-ge v3, v4, :cond_5

    .line 860
    invoke-virtual {v5, v3}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v18

    .line 862
    .local v18, "succ":I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/code/ByteBlock;->getLabel()I

    move-result v0
    :try_end_0
    .catch Lcom/android/dx/cf/code/SimException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v1, p0

    move/from16 v2, v18

    move/from16 v19, v3

    .end local v3    # "i":I
    .local v19, "i":I
    move v3, v0

    move/from16 v20, v4

    .end local v4    # "succSz":I
    .local v20, "succSz":I
    move-object/from16 v4, v16

    move-object/from16 v21, v5

    .end local v5    # "successors":Lcom/android/dx/util/IntList;
    .local v21, "successors":Lcom/android/dx/util/IntList;
    move-object v5, v9

    move-object/from16 v6, p3

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/dx/cf/code/Ropper;->mergeAndWorkAsNecessary(IILcom/android/dx/cf/code/Ropper$Subroutine;Lcom/android/dx/cf/code/Frame;[I)V
    :try_end_1
    .catch Lcom/android/dx/cf/code/SimException; {:try_start_1 .. :try_end_1} :catch_0

    .line 867
    nop

    .line 859
    .end local v18    # "succ":I
    add-int/lit8 v3, v19, 0x1

    move-object/from16 v6, p3

    move/from16 v4, v20

    move-object/from16 v5, v21

    .end local v19    # "i":I
    .restart local v3    # "i":I
    goto :goto_2

    .line 864
    .end local v3    # "i":I
    .restart local v18    # "succ":I
    .restart local v19    # "i":I
    :catch_0
    move-exception v0

    goto :goto_3

    .end local v19    # "i":I
    .end local v20    # "succSz":I
    .end local v21    # "successors":Lcom/android/dx/util/IntList;
    .restart local v3    # "i":I
    .restart local v4    # "succSz":I
    .restart local v5    # "successors":Lcom/android/dx/util/IntList;
    :catch_1
    move-exception v0

    move/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    .line 865
    .end local v3    # "i":I
    .end local v4    # "succSz":I
    .end local v5    # "successors":Lcom/android/dx/util/IntList;
    .local v0, "ex":Lcom/android/dx/cf/code/SimException;
    .restart local v19    # "i":I
    .restart local v20    # "succSz":I
    .restart local v21    # "successors":Lcom/android/dx/util/IntList;
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...while merging to block "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 866
    throw v0

    .line 858
    .end local v0    # "ex":Lcom/android/dx/cf/code/SimException;
    .end local v18    # "succ":I
    .end local v19    # "i":I
    .end local v20    # "succSz":I
    .end local v21    # "successors":Lcom/android/dx/util/IntList;
    .restart local v3    # "i":I
    .restart local v4    # "succSz":I
    .restart local v5    # "successors":Lcom/android/dx/util/IntList;
    :cond_5
    move/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    .line 870
    .end local v3    # "i":I
    .end local v4    # "succSz":I
    .end local v5    # "successors":Lcom/android/dx/util/IntList;
    .restart local v20    # "succSz":I
    .restart local v21    # "successors":Lcom/android/dx/util/IntList;
    if-nez v20, :cond_6

    iget-object v0, v7, Lcom/android/dx/cf/code/Ropper;->machine:Lcom/android/dx/cf/code/RopperMachine;

    invoke-virtual {v0}, Lcom/android/dx/cf/code/RopperMachine;->returns()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 880
    const/4 v0, -0x2

    invoke-direct {v7, v0}, Lcom/android/dx/cf/code/Ropper;->getSpecialLabel(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/dx/util/IntList;->makeImmutable(I)Lcom/android/dx/util/IntList;

    move-result-object v5

    .line 881
    .end local v21    # "successors":Lcom/android/dx/util/IntList;
    .restart local v5    # "successors":Lcom/android/dx/util/IntList;
    const/4 v4, 0x1

    move v6, v4

    .end local v20    # "succSz":I
    .restart local v4    # "succSz":I
    goto :goto_4

    .line 886
    .end local v4    # "succSz":I
    .end local v5    # "successors":Lcom/android/dx/util/IntList;
    .restart local v20    # "succSz":I
    .restart local v21    # "successors":Lcom/android/dx/util/IntList;
    :cond_6
    move/from16 v6, v20

    move-object/from16 v5, v21

    .end local v20    # "succSz":I
    .end local v21    # "successors":Lcom/android/dx/util/IntList;
    .restart local v5    # "successors":Lcom/android/dx/util/IntList;
    .local v6, "succSz":I
    :goto_4
    if-nez v6, :cond_7

    .line 887
    const/4 v0, -0x1

    move v4, v0

    .local v0, "primarySucc":I
    goto :goto_5

    .line 889
    .end local v0    # "primarySucc":I
    :cond_7
    iget-object v0, v7, Lcom/android/dx/cf/code/Ropper;->machine:Lcom/android/dx/cf/code/RopperMachine;

    invoke-virtual {v0}, Lcom/android/dx/cf/code/RopperMachine;->getPrimarySuccessorIndex()I

    move-result v0

    .line 890
    .restart local v0    # "primarySucc":I
    if-ltz v0, :cond_8

    .line 891
    invoke-virtual {v5, v0}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v0

    move v4, v0

    goto :goto_5

    .line 890
    :cond_8
    move v4, v0

    .line 899
    .end local v0    # "primarySucc":I
    .local v4, "primarySucc":I
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/dx/cf/code/Ropper;->isSynchronized()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v7, Lcom/android/dx/cf/code/Ropper;->machine:Lcom/android/dx/cf/code/RopperMachine;

    invoke-virtual {v0}, Lcom/android/dx/cf/code/RopperMachine;->canThrow()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v15

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    :goto_6
    move/from16 v18, v0

    .line 901
    .local v18, "synch":Z
    const/4 v0, 0x0

    if-nez v18, :cond_b

    if-eqz v14, :cond_a

    goto :goto_7

    :cond_a
    move/from16 v27, v6

    move-object/from16 v22, v8

    move v8, v4

    goto/16 :goto_c

    .line 909
    :cond_b
    :goto_7
    const/4 v1, 0x0

    .line 910
    .local v1, "catchesAny":Z
    new-instance v2, Lcom/android/dx/util/IntList;

    invoke-direct {v2, v6}, Lcom/android/dx/util/IntList;-><init>(I)V

    .line 911
    .local v2, "newSucc":Lcom/android/dx/util/IntList;
    const/16 v19, 0x0

    move/from16 v15, v19

    .local v15, "i":I
    :goto_8
    if-ge v15, v14, :cond_e

    .line 912
    invoke-virtual {v8, v15}, Lcom/android/dx/cf/code/ByteCatchList;->get(I)Lcom/android/dx/cf/code/ByteCatchList$Item;

    move-result-object v19

    .line 913
    .local v19, "one":Lcom/android/dx/cf/code/ByteCatchList$Item;
    move/from16 v20, v4

    .end local v4    # "primarySucc":I
    .local v20, "primarySucc":I
    invoke-virtual/range {v19 .. v19}, Lcom/android/dx/cf/code/ByteCatchList$Item;->getExceptionClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v4

    .line 914
    .local v4, "exceptionClass":Lcom/android/dx/rop/cst/CstType;
    invoke-virtual/range {v19 .. v19}, Lcom/android/dx/cf/code/ByteCatchList$Item;->getHandlerPc()I

    move-result v21

    .line 916
    .local v21, "targ":I
    sget-object v3, Lcom/android/dx/rop/cst/CstType;->OBJECT:Lcom/android/dx/rop/cst/CstType;

    if-ne v4, v3, :cond_c

    const/4 v3, 0x1

    goto :goto_9

    :cond_c
    const/4 v3, 0x0

    :goto_9
    or-int v23, v1, v3

    .line 918
    .end local v1    # "catchesAny":Z
    .local v23, "catchesAny":Z
    invoke-virtual {v9, v4}, Lcom/android/dx/cf/code/Frame;->makeExceptionHandlerStartFrame(Lcom/android/dx/rop/cst/CstType;)Lcom/android/dx/cf/code/Frame;

    move-result-object v24

    .line 921
    .local v24, "f":Lcom/android/dx/cf/code/Frame;
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/code/ByteBlock;->getLabel()I

    move-result v3
    :try_end_2
    .catch Lcom/android/dx/cf/code/SimException; {:try_start_2 .. :try_end_2} :catch_3

    const/16 v25, 0x0

    move-object/from16 v1, p0

    move-object/from16 v26, v2

    .end local v2    # "newSucc":Lcom/android/dx/util/IntList;
    .local v26, "newSucc":Lcom/android/dx/util/IntList;
    move/from16 v2, v21

    move-object/from16 v22, v8

    move/from16 v8, v20

    move-object/from16 v20, v4

    .end local v4    # "exceptionClass":Lcom/android/dx/rop/cst/CstType;
    .local v8, "primarySucc":I
    .local v20, "exceptionClass":Lcom/android/dx/rop/cst/CstType;
    .local v22, "catches":Lcom/android/dx/cf/code/ByteCatchList;
    move-object/from16 v4, v25

    move-object/from16 v25, v5

    .end local v5    # "successors":Lcom/android/dx/util/IntList;
    .local v25, "successors":Lcom/android/dx/util/IntList;
    move-object/from16 v5, v24

    move/from16 v27, v6

    .end local v6    # "succSz":I
    .local v27, "succSz":I
    move-object/from16 v6, p3

    :try_start_3
    invoke-direct/range {v1 .. v6}, Lcom/android/dx/cf/code/Ropper;->mergeAndWorkAsNecessary(IILcom/android/dx/cf/code/Ropper$Subroutine;Lcom/android/dx/cf/code/Frame;[I)V
    :try_end_3
    .catch Lcom/android/dx/cf/code/SimException; {:try_start_3 .. :try_end_3} :catch_2

    .line 927
    nop

    .line 932
    iget-object v1, v7, Lcom/android/dx/cf/code/Ropper;->catchInfos:[Lcom/android/dx/cf/code/Ropper$CatchInfo;

    aget-object v1, v1, v21

    .line 933
    .local v1, "handlers":Lcom/android/dx/cf/code/Ropper$CatchInfo;
    if-nez v1, :cond_d

    .line 934
    new-instance v2, Lcom/android/dx/cf/code/Ropper$CatchInfo;

    invoke-direct {v2, v7, v0}, Lcom/android/dx/cf/code/Ropper$CatchInfo;-><init>(Lcom/android/dx/cf/code/Ropper;Lcom/android/dx/cf/code/Ropper$1;)V

    move-object v1, v2

    .line 935
    iget-object v2, v7, Lcom/android/dx/cf/code/Ropper;->catchInfos:[Lcom/android/dx/cf/code/Ropper$CatchInfo;

    aput-object v1, v2, v21

    .line 937
    :cond_d
    invoke-virtual/range {v20 .. v20}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dx/cf/code/Ropper$CatchInfo;->getSetup(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/cf/code/Ropper$ExceptionHandlerSetup;

    move-result-object v2

    .line 942
    .local v2, "handler":Lcom/android/dx/cf/code/Ropper$ExceptionHandlerSetup;
    invoke-virtual {v2}, Lcom/android/dx/cf/code/Ropper$ExceptionHandlerSetup;->getLabel()I

    move-result v3

    move-object/from16 v4, v26

    .end local v26    # "newSucc":Lcom/android/dx/util/IntList;
    .local v4, "newSucc":Lcom/android/dx/util/IntList;
    invoke-virtual {v4, v3}, Lcom/android/dx/util/IntList;->add(I)V

    .line 911
    .end local v1    # "handlers":Lcom/android/dx/cf/code/Ropper$CatchInfo;
    .end local v2    # "handler":Lcom/android/dx/cf/code/Ropper$ExceptionHandlerSetup;
    .end local v19    # "one":Lcom/android/dx/cf/code/ByteCatchList$Item;
    .end local v20    # "exceptionClass":Lcom/android/dx/rop/cst/CstType;
    .end local v21    # "targ":I
    .end local v24    # "f":Lcom/android/dx/cf/code/Frame;
    add-int/lit8 v15, v15, 0x1

    move-object v2, v4

    move v4, v8

    move-object/from16 v8, v22

    move/from16 v1, v23

    move-object/from16 v5, v25

    move/from16 v6, v27

    goto :goto_8

    .line 923
    .end local v4    # "newSucc":Lcom/android/dx/util/IntList;
    .restart local v19    # "one":Lcom/android/dx/cf/code/ByteCatchList$Item;
    .restart local v20    # "exceptionClass":Lcom/android/dx/rop/cst/CstType;
    .restart local v21    # "targ":I
    .restart local v24    # "f":Lcom/android/dx/cf/code/Frame;
    .restart local v26    # "newSucc":Lcom/android/dx/util/IntList;
    :catch_2
    move-exception v0

    move-object/from16 v4, v26

    .end local v26    # "newSucc":Lcom/android/dx/util/IntList;
    .restart local v4    # "newSucc":Lcom/android/dx/util/IntList;
    goto :goto_a

    .end local v22    # "catches":Lcom/android/dx/cf/code/ByteCatchList;
    .end local v25    # "successors":Lcom/android/dx/util/IntList;
    .end local v27    # "succSz":I
    .local v2, "newSucc":Lcom/android/dx/util/IntList;
    .local v4, "exceptionClass":Lcom/android/dx/rop/cst/CstType;
    .restart local v5    # "successors":Lcom/android/dx/util/IntList;
    .restart local v6    # "succSz":I
    .local v8, "catches":Lcom/android/dx/cf/code/ByteCatchList;
    .local v20, "primarySucc":I
    :catch_3
    move-exception v0

    move-object/from16 v25, v5

    move/from16 v27, v6

    move-object/from16 v22, v8

    move/from16 v8, v20

    move-object/from16 v20, v4

    move-object v4, v2

    .line 924
    .end local v2    # "newSucc":Lcom/android/dx/util/IntList;
    .end local v5    # "successors":Lcom/android/dx/util/IntList;
    .end local v6    # "succSz":I
    .local v0, "ex":Lcom/android/dx/cf/code/SimException;
    .local v4, "newSucc":Lcom/android/dx/util/IntList;
    .local v8, "primarySucc":I
    .local v20, "exceptionClass":Lcom/android/dx/rop/cst/CstType;
    .restart local v22    # "catches":Lcom/android/dx/cf/code/ByteCatchList;
    .restart local v25    # "successors":Lcom/android/dx/util/IntList;
    .restart local v27    # "succSz":I
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...while merging exception to block "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 925
    invoke-static/range {v21 .. v21}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 924
    invoke-virtual {v0, v1}, Lcom/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 926
    throw v0

    .line 911
    .end local v0    # "ex":Lcom/android/dx/cf/code/SimException;
    .end local v19    # "one":Lcom/android/dx/cf/code/ByteCatchList$Item;
    .end local v20    # "exceptionClass":Lcom/android/dx/rop/cst/CstType;
    .end local v21    # "targ":I
    .end local v22    # "catches":Lcom/android/dx/cf/code/ByteCatchList;
    .end local v23    # "catchesAny":Z
    .end local v24    # "f":Lcom/android/dx/cf/code/Frame;
    .end local v25    # "successors":Lcom/android/dx/util/IntList;
    .end local v27    # "succSz":I
    .local v1, "catchesAny":Z
    .restart local v2    # "newSucc":Lcom/android/dx/util/IntList;
    .local v4, "primarySucc":I
    .restart local v5    # "successors":Lcom/android/dx/util/IntList;
    .restart local v6    # "succSz":I
    .local v8, "catches":Lcom/android/dx/cf/code/ByteCatchList;
    :cond_e
    move-object/from16 v25, v5

    move/from16 v27, v6

    move-object/from16 v22, v8

    move v8, v4

    move-object v4, v2

    .line 945
    .end local v2    # "newSucc":Lcom/android/dx/util/IntList;
    .end local v5    # "successors":Lcom/android/dx/util/IntList;
    .end local v6    # "succSz":I
    .end local v15    # "i":I
    .local v4, "newSucc":Lcom/android/dx/util/IntList;
    .local v8, "primarySucc":I
    .restart local v22    # "catches":Lcom/android/dx/cf/code/ByteCatchList;
    .restart local v25    # "successors":Lcom/android/dx/util/IntList;
    .restart local v27    # "succSz":I
    if-eqz v18, :cond_10

    if-nez v1, :cond_10

    .line 953
    const/4 v2, -0x6

    invoke-direct {v7, v2}, Lcom/android/dx/cf/code/Ropper;->getSpecialLabel(I)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/android/dx/util/IntList;->add(I)V

    .line 954
    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/android/dx/cf/code/Ropper;->synchNeedsExceptionHandler:Z

    .line 956
    sub-int v3, v13, v11

    sub-int/2addr v3, v2

    .restart local v3    # "i":I
    :goto_b
    if-ge v3, v13, :cond_10

    .line 957
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/rop/code/Insn;

    .line 958
    .local v2, "insn":Lcom/android/dx/rop/code/Insn;
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Insn;->canThrow()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 959
    sget-object v5, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    invoke-virtual {v2, v5}, Lcom/android/dx/rop/code/Insn;->withAddedCatch(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/code/Insn;

    move-result-object v2

    .line 960
    invoke-virtual {v12, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 956
    .end local v2    # "insn":Lcom/android/dx/rop/code/Insn;
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 965
    .end local v3    # "i":I
    :cond_10
    if-ltz v8, :cond_11

    .line 966
    invoke-virtual {v4, v8}, Lcom/android/dx/util/IntList;->add(I)V

    .line 969
    :cond_11
    invoke-virtual {v4}, Lcom/android/dx/util/IntList;->setImmutable()V

    .line 970
    move-object v5, v4

    .line 975
    .end local v1    # "catchesAny":Z
    .end local v4    # "newSucc":Lcom/android/dx/util/IntList;
    .end local v25    # "successors":Lcom/android/dx/util/IntList;
    .restart local v5    # "successors":Lcom/android/dx/util/IntList;
    :goto_c
    invoke-virtual {v5, v8}, Lcom/android/dx/util/IntList;->indexOf(I)I

    move-result v1

    move v4, v8

    .line 982
    .end local v8    # "primarySucc":I
    .local v1, "primarySuccListIndex":I
    .local v4, "primarySucc":I
    :goto_d
    if-lez v11, :cond_15

    .line 987
    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/rop/code/Insn;

    .line 988
    .local v2, "extraInsn":Lcom/android/dx/rop/code/Insn;
    nop

    .line 989
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_12

    const/4 v3, 0x1

    goto :goto_e

    :cond_12
    const/4 v3, 0x0

    .line 991
    .local v3, "needsGoto":Z
    :goto_e
    new-instance v6, Lcom/android/dx/rop/code/InsnList;

    if-eqz v3, :cond_13

    const/4 v8, 0x2

    goto :goto_f

    :cond_13
    const/4 v8, 0x1

    :goto_f
    invoke-direct {v6, v8}, Lcom/android/dx/rop/code/InsnList;-><init>(I)V

    .line 992
    .local v6, "il":Lcom/android/dx/rop/code/InsnList;
    move-object v8, v5

    .line 994
    .local v8, "extraBlockSuccessors":Lcom/android/dx/util/IntList;
    const/4 v15, 0x0

    invoke-virtual {v6, v15, v2}, Lcom/android/dx/rop/code/InsnList;->set(ILcom/android/dx/rop/code/Insn;)V

    .line 996
    if-eqz v3, :cond_14

    .line 997
    new-instance v15, Lcom/android/dx/rop/code/PlainInsn;

    sget-object v0, Lcom/android/dx/rop/code/Rops;->GOTO:Lcom/android/dx/rop/code/Rop;

    .line 998
    move/from16 v20, v3

    .end local v3    # "needsGoto":Z
    .local v20, "needsGoto":Z
    invoke-virtual {v2}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v3

    move-object/from16 v21, v2

    .end local v2    # "extraInsn":Lcom/android/dx/rop/code/Insn;
    .local v21, "extraInsn":Lcom/android/dx/rop/code/Insn;
    sget-object v2, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    move-object/from16 v23, v8

    const/4 v8, 0x0

    .end local v8    # "extraBlockSuccessors":Lcom/android/dx/util/IntList;
    .local v23, "extraBlockSuccessors":Lcom/android/dx/util/IntList;
    invoke-direct {v15, v0, v3, v8, v2}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 997
    const/4 v0, 0x1

    invoke-virtual {v6, v0, v15}, Lcom/android/dx/rop/code/InsnList;->set(ILcom/android/dx/rop/code/Insn;)V

    .line 1004
    invoke-static {v4}, Lcom/android/dx/util/IntList;->makeImmutable(I)Lcom/android/dx/util/IntList;

    move-result-object v8

    .end local v23    # "extraBlockSuccessors":Lcom/android/dx/util/IntList;
    .restart local v8    # "extraBlockSuccessors":Lcom/android/dx/util/IntList;
    goto :goto_10

    .line 996
    .end local v20    # "needsGoto":Z
    .end local v21    # "extraInsn":Lcom/android/dx/rop/code/Insn;
    .restart local v2    # "extraInsn":Lcom/android/dx/rop/code/Insn;
    .restart local v3    # "needsGoto":Z
    :cond_14
    move-object/from16 v21, v2

    move/from16 v20, v3

    move-object/from16 v23, v8

    .line 1006
    .end local v2    # "extraInsn":Lcom/android/dx/rop/code/Insn;
    .end local v3    # "needsGoto":Z
    .restart local v20    # "needsGoto":Z
    .restart local v21    # "extraInsn":Lcom/android/dx/rop/code/Insn;
    :goto_10
    invoke-virtual {v6}, Lcom/android/dx/rop/code/InsnList;->setImmutable()V

    .line 1008
    invoke-direct/range {p0 .. p0}, Lcom/android/dx/cf/code/Ropper;->getAvailableLabel()I

    move-result v0

    .line 1009
    .local v0, "label":I
    new-instance v2, Lcom/android/dx/rop/code/BasicBlock;

    invoke-direct {v2, v0, v6, v8, v4}, Lcom/android/dx/rop/code/BasicBlock;-><init>(ILcom/android/dx/rop/code/InsnList;Lcom/android/dx/util/IntList;I)V

    .line 1012
    .local v2, "bb":Lcom/android/dx/rop/code/BasicBlock;
    invoke-virtual {v9}, Lcom/android/dx/cf/code/Frame;->getSubroutines()Lcom/android/dx/util/IntList;

    move-result-object v3

    invoke-direct {v7, v2, v3}, Lcom/android/dx/cf/code/Ropper;->addBlock(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/util/IntList;)V

    .line 1014
    invoke-virtual {v5}, Lcom/android/dx/util/IntList;->mutableCopy()Lcom/android/dx/util/IntList;

    move-result-object v5

    .line 1015
    invoke-virtual {v5, v1, v0}, Lcom/android/dx/util/IntList;->set(II)V

    .line 1016
    invoke-virtual {v5}, Lcom/android/dx/util/IntList;->setImmutable()V

    .line 1017
    move v4, v0

    .line 982
    .end local v0    # "label":I
    .end local v2    # "bb":Lcom/android/dx/rop/code/BasicBlock;
    .end local v6    # "il":Lcom/android/dx/rop/code/InsnList;
    .end local v8    # "extraBlockSuccessors":Lcom/android/dx/util/IntList;
    .end local v20    # "needsGoto":Z
    .end local v21    # "extraInsn":Lcom/android/dx/rop/code/Insn;
    add-int/lit8 v11, v11, -0x1

    const/4 v0, 0x0

    goto :goto_d

    .line 1020
    :cond_15
    if-nez v13, :cond_16

    const/4 v8, 0x0

    goto :goto_11

    :cond_16
    add-int/lit8 v0, v13, -0x1

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/dx/rop/code/Insn;

    :goto_11
    move-object v0, v8

    .line 1030
    .local v0, "lastInsn":Lcom/android/dx/rop/code/Insn;
    if-eqz v0, :cond_17

    .line 1031
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    .line 1032
    :cond_17
    if-nez v0, :cond_18

    sget-object v2, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    goto :goto_12

    .line 1033
    :cond_18
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v2

    :goto_12
    nop

    .line 1034
    .local v2, "pos":Lcom/android/dx/rop/code/SourcePosition;
    new-instance v3, Lcom/android/dx/rop/code/PlainInsn;

    sget-object v6, Lcom/android/dx/rop/code/Rops;->GOTO:Lcom/android/dx/rop/code/Rop;

    sget-object v8, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    const/4 v15, 0x0

    invoke-direct {v3, v6, v2, v15, v8}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1036
    add-int/lit8 v13, v13, 0x1

    .line 1044
    .end local v2    # "pos":Lcom/android/dx/rop/code/SourcePosition;
    :cond_19
    new-instance v2, Lcom/android/dx/rop/code/InsnList;

    invoke-direct {v2, v13}, Lcom/android/dx/rop/code/InsnList;-><init>(I)V

    .line 1045
    .local v2, "il":Lcom/android/dx/rop/code/InsnList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v13, :cond_1a

    .line 1046
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/dx/rop/code/Insn;

    invoke-virtual {v2, v3, v6}, Lcom/android/dx/rop/code/InsnList;->set(ILcom/android/dx/rop/code/Insn;)V

    .line 1045
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1048
    .end local v3    # "i":I
    :cond_1a
    invoke-virtual {v2}, Lcom/android/dx/rop/code/InsnList;->setImmutable()V

    .line 1050
    new-instance v3, Lcom/android/dx/rop/code/BasicBlock;

    .line 1051
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/code/ByteBlock;->getLabel()I

    move-result v6

    invoke-direct {v3, v6, v2, v5, v4}, Lcom/android/dx/rop/code/BasicBlock;-><init>(ILcom/android/dx/rop/code/InsnList;Lcom/android/dx/util/IntList;I)V

    .line 1052
    .local v3, "bb":Lcom/android/dx/rop/code/BasicBlock;
    invoke-virtual {v9}, Lcom/android/dx/cf/code/Frame;->getSubroutines()Lcom/android/dx/util/IntList;

    move-result-object v6

    invoke-direct {v7, v3, v6}, Lcom/android/dx/cf/code/Ropper;->addOrReplaceBlock(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/util/IntList;)Z

    .line 1053
    return-void
.end method

.method private removeBlockAndSpecialSuccessors(I)V
    .locals 9
    .param p1, "idx"    # I

    .line 678
    invoke-direct {p0}, Lcom/android/dx/cf/code/Ropper;->getMinimumUnreservedLabel()I

    move-result v0

    .line 679
    .local v0, "minLabel":I
    iget-object v1, p0, Lcom/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/rop/code/BasicBlock;

    .line 680
    .local v1, "block":Lcom/android/dx/rop/code/BasicBlock;
    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v2

    .line 681
    .local v2, "successors":Lcom/android/dx/util/IntList;
    invoke-virtual {v2}, Lcom/android/dx/util/IntList;->size()I

    move-result v3

    .line 683
    .local v3, "sz":I
    iget-object v4, p0, Lcom/android/dx/cf/code/Ropper;->result:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 684
    iget-object v4, p0, Lcom/android/dx/cf/code/Ropper;->resultSubroutines:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 686
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 687
    invoke-virtual {v2, v4}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v5

    .line 688
    .local v5, "label":I
    if-lt v5, v0, :cond_1

    .line 689
    invoke-direct {p0, v5}, Lcom/android/dx/cf/code/Ropper;->labelToResultIndex(I)I

    move-result p1

    .line 690
    if-ltz p1, :cond_0

    .line 694
    invoke-direct {p0, p1}, Lcom/android/dx/cf/code/Ropper;->removeBlockAndSpecialSuccessors(I)V

    goto :goto_1

    .line 691
    :cond_0
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid label "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 692
    invoke-static {v5}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 686
    .end local v5    # "label":I
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 697
    .end local v4    # "i":I
    :cond_2
    return-void
.end method

.method private setFirstFrame()V
    .locals 4

    .line 766
    iget-object v0, p0, Lcom/android/dx/cf/code/Ropper;->method:Lcom/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v0}, Lcom/android/dx/cf/code/ConcreteMethod;->getEffectiveDescriptor()Lcom/android/dx/rop/type/Prototype;

    move-result-object v0

    .line 767
    .local v0, "desc":Lcom/android/dx/rop/type/Prototype;
    iget-object v1, p0, Lcom/android/dx/cf/code/Ropper;->startFrames:[Lcom/android/dx/cf/code/Frame;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lcom/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/dx/cf/code/Frame;->initializeWithParameters(Lcom/android/dx/rop/type/StdTypeList;)V

    .line 768
    iget-object v1, p0, Lcom/android/dx/cf/code/Ropper;->startFrames:[Lcom/android/dx/cf/code/Frame;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/dx/cf/code/Frame;->setImmutable()V

    .line 769
    return-void
.end method

.method private subroutineFromRetBlock(I)Lcom/android/dx/cf/code/Ropper$Subroutine;
    .locals 3
    .param p1, "label"    # I

    .line 1697
    iget-object v0, p0, Lcom/android/dx/cf/code/Ropper;->subroutines:[Lcom/android/dx/cf/code/Ropper$Subroutine;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1698
    iget-object v1, p0, Lcom/android/dx/cf/code/Ropper;->subroutines:[Lcom/android/dx/cf/code/Ropper$Subroutine;

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    .line 1699
    aget-object v1, v1, v0

    .line 1701
    .local v1, "subroutine":Lcom/android/dx/cf/code/Ropper$Subroutine;
    invoke-static {v1}, Lcom/android/dx/cf/code/Ropper$Subroutine;->access$1300(Lcom/android/dx/cf/code/Ropper$Subroutine;)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1702
    return-object v1

    .line 1697
    .end local v1    # "subroutine":Lcom/android/dx/cf/code/Ropper$Subroutine;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1707
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method getFirstTempStackReg()I
    .locals 2

    .line 423
    invoke-direct {p0}, Lcom/android/dx/cf/code/Ropper;->getNormalRegCount()I

    move-result v0

    .line 424
    .local v0, "regCount":I
    invoke-direct {p0}, Lcom/android/dx/cf/code/Ropper;->isSynchronized()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method
