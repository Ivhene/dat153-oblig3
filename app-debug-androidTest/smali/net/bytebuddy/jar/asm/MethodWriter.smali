.class final Lnet/bytebuddy/jar/asm/MethodWriter;
.super Lnet/bytebuddy/jar/asm/MethodVisitor;
.source "MethodWriter.java"


# static fields
.field static final COMPUTE_ALL_FRAMES:I = 0x4

.field static final COMPUTE_INSERTED_FRAMES:I = 0x3

.field static final COMPUTE_MAX_STACK_AND_LOCAL:I = 0x1

.field static final COMPUTE_MAX_STACK_AND_LOCAL_FROM_FRAMES:I = 0x2

.field static final COMPUTE_NOTHING:I

.field private static final NA:I

.field private static final STACK_SIZE_DELTA:[I


# instance fields
.field private final accessFlags:I

.field private final code:Lnet/bytebuddy/jar/asm/ByteVector;

.field private final compute:I

.field private currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

.field private currentFrame:[I

.field private currentLocals:I

.field private defaultValue:Lnet/bytebuddy/jar/asm/ByteVector;

.field private final descriptor:Ljava/lang/String;

.field private final descriptorIndex:I

.field private final exceptionIndexTable:[I

.field private firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

.field private firstBasicBlock:Lnet/bytebuddy/jar/asm/Label;

.field private firstCodeAttribute:Lnet/bytebuddy/jar/asm/Attribute;

.field private firstHandler:Lnet/bytebuddy/jar/asm/Handler;

.field private hasAsmInstructions:Z

.field private hasSubroutines:Z

.field private invisibleAnnotableParameterCount:I

.field private lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

.field private lastBytecodeOffset:I

.field private lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastHandler:Lnet/bytebuddy/jar/asm/Handler;

.field private lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeInvisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeVisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

.field private lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

.field private lineNumberTableLength:I

.field private localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

.field private localVariableTableLength:I

.field private localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

.field private localVariableTypeTableLength:I

.field private maxLocals:I

.field private maxRelativeStackSize:I

.field private maxStack:I

.field private final name:Ljava/lang/String;

.field private final nameIndex:I

.field private final numberOfExceptions:I

.field private parameters:Lnet/bytebuddy/jar/asm/ByteVector;

.field private parametersCount:I

.field private previousFrame:[I

.field private previousFrameOffset:I

.field private relativeStackSize:I

.field private final signatureIndex:I

.field private sourceLength:I

.field private sourceOffset:I

.field private stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

.field private stackMapTableNumberOfEntries:I

.field private final symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

.field private visibleAnnotableParameterCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const/16 v0, 0xca

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/bytebuddy/jar/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x1
        0x1
        0x1
        0x2
        0x2
        0x1
        0x1
        0x1
        0x0
        0x0
        0x1
        0x2
        0x1
        0x2
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x1
        0x0
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3
        -0x4
        -0x3
        -0x4
        -0x3
        -0x3
        -0x3
        -0x3
        -0x1
        -0x2
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x0
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        0x0
        0x0
        0x0
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        0x0
        0x1
        0x0
        0x1
        -0x1
        -0x1
        0x0
        0x0
        0x1
        0x1
        -0x1
        0x0
        -0x1
        0x0
        0x0
        0x0
        -0x3
        -0x1
        -0x1
        -0x3
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        0x0
        0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x1
        -0x1
        0x0
        0x0
        -0x1
        -0x1
        0x0
        0x0
    .end array-data
.end method

.method constructor <init>(Lnet/bytebuddy/jar/asm/SymbolTable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 3
    .param p1, "symbolTable"    # Lnet/bytebuddy/jar/asm/SymbolTable;
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;
    .param p5, "signature"    # Ljava/lang/String;
    .param p6, "exceptions"    # [Ljava/lang/String;
    .param p7, "compute"    # I

    .line 595
    const/high16 v0, 0x90000

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;-><init>(I)V

    .line 320
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 596
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 597
    const-string v0, "<init>"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40000

    or-int/2addr v0, p2

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    .line 598
    invoke-virtual {p1, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->nameIndex:I

    .line 599
    iput-object p3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->name:Ljava/lang/String;

    .line 600
    invoke-virtual {p1, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptorIndex:I

    .line 601
    iput-object p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptor:Ljava/lang/String;

    .line 602
    const/4 v0, 0x0

    if-nez p5, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p5}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    :goto_1
    iput v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->signatureIndex:I

    .line 603
    if-eqz p6, :cond_3

    array-length v1, p6

    if-lez v1, :cond_3

    .line 604
    array-length v0, p6

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    .line 605
    new-array v0, v0, [I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->exceptionIndexTable:[I

    .line 606
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    if-ge v0, v1, :cond_2

    .line 607
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->exceptionIndexTable:[I

    aget-object v2, p6, v0

    invoke-virtual {p1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v2

    iget v2, v2, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    aput v2, v1, v0

    .line 606
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    :cond_2
    goto :goto_3

    .line 610
    :cond_3
    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    .line 611
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->exceptionIndexTable:[I

    .line 613
    :goto_3
    iput p7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    .line 614
    if-eqz p7, :cond_5

    .line 616
    invoke-static {p4}, Lnet/bytebuddy/jar/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    .line 617
    .local v0, "argumentsSize":I
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_4

    .line 618
    add-int/lit8 v0, v0, -0x1

    .line 620
    :cond_4
    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    .line 621
    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentLocals:I

    .line 623
    new-instance v1, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v1}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 624
    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    .line 626
    .end local v0    # "argumentsSize":I
    :cond_5
    return-void
.end method

.method private addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V
    .locals 3
    .param p1, "info"    # I
    .param p2, "successor"    # Lnet/bytebuddy/jar/asm/Label;

    .line 1782
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    new-instance v1, Lnet/bytebuddy/jar/asm/Edge;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    invoke-direct {v1, p1, p2, v2}, Lnet/bytebuddy/jar/asm/Edge;-><init>(ILnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Edge;)V

    iput-object v1, v0, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    .line 1783
    return-void
.end method

.method private computeAllFrames()V
    .locals 13

    .line 1560
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    .line 1561
    .local v0, "handler":Lnet/bytebuddy/jar/asm/Handler;
    :goto_0
    const-string v1, "java/lang/Throwable"

    if-eqz v0, :cond_2

    .line 1563
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/Handler;->catchTypeDescriptor:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/Handler;->catchTypeDescriptor:Ljava/lang/String;

    .line 1564
    .local v1, "catchTypeDescriptor":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-static {v2, v1}, Lnet/bytebuddy/jar/asm/Frame;->getAbstractTypeFromInternalName(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)I

    move-result v2

    .line 1566
    .local v2, "catchType":I
    iget-object v3, v0, Lnet/bytebuddy/jar/asm/Handler;->handlerPc:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v3}, Lnet/bytebuddy/jar/asm/Label;->getCanonicalInstance()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v3

    .line 1567
    .local v3, "handlerBlock":Lnet/bytebuddy/jar/asm/Label;
    iget-short v4, v3, Lnet/bytebuddy/jar/asm/Label;->flags:S

    or-int/lit8 v4, v4, 0x2

    int-to-short v4, v4

    iput-short v4, v3, Lnet/bytebuddy/jar/asm/Label;->flags:S

    .line 1569
    iget-object v4, v0, Lnet/bytebuddy/jar/asm/Handler;->startPc:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v4}, Lnet/bytebuddy/jar/asm/Label;->getCanonicalInstance()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v4

    .line 1570
    .local v4, "handlerRangeBlock":Lnet/bytebuddy/jar/asm/Label;
    iget-object v5, v0, Lnet/bytebuddy/jar/asm/Handler;->endPc:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v5}, Lnet/bytebuddy/jar/asm/Label;->getCanonicalInstance()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v5

    .line 1571
    .local v5, "handlerRangeEnd":Lnet/bytebuddy/jar/asm/Label;
    :goto_2
    if-eq v4, v5, :cond_1

    .line 1572
    new-instance v6, Lnet/bytebuddy/jar/asm/Edge;

    iget-object v7, v4, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    invoke-direct {v6, v2, v3, v7}, Lnet/bytebuddy/jar/asm/Edge;-><init>(ILnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Edge;)V

    iput-object v6, v4, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    .line 1574
    iget-object v4, v4, Lnet/bytebuddy/jar/asm/Label;->nextBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_2

    .line 1576
    :cond_1
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Handler;->nextHandler:Lnet/bytebuddy/jar/asm/Handler;

    .line 1577
    .end local v1    # "catchTypeDescriptor":Ljava/lang/String;
    .end local v2    # "catchType":I
    .end local v3    # "handlerBlock":Lnet/bytebuddy/jar/asm/Label;
    .end local v4    # "handlerRangeBlock":Lnet/bytebuddy/jar/asm/Label;
    .end local v5    # "handlerRangeEnd":Lnet/bytebuddy/jar/asm/Label;
    goto :goto_0

    .line 1580
    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    .line 1581
    .local v2, "firstFrame":Lnet/bytebuddy/jar/asm/Frame;
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptor:Ljava/lang/String;

    iget v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lnet/bytebuddy/jar/asm/Frame;->setInputFrameFromDescriptor(Lnet/bytebuddy/jar/asm/SymbolTable;ILjava/lang/String;I)V

    .line 1582
    invoke-virtual {v2, p0}, Lnet/bytebuddy/jar/asm/Frame;->accept(Lnet/bytebuddy/jar/asm/MethodWriter;)V

    .line 1590
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1591
    .local v3, "listOfBlocksToProcess":Lnet/bytebuddy/jar/asm/Label;
    sget-object v4, Lnet/bytebuddy/jar/asm/Label;->EMPTY_LIST:Lnet/bytebuddy/jar/asm/Label;

    iput-object v4, v3, Lnet/bytebuddy/jar/asm/Label;->nextListElement:Lnet/bytebuddy/jar/asm/Label;

    .line 1592
    const/4 v4, 0x0

    .line 1593
    .local v4, "maxStackSize":I
    :goto_3
    sget-object v5, Lnet/bytebuddy/jar/asm/Label;->EMPTY_LIST:Lnet/bytebuddy/jar/asm/Label;

    if-eq v3, v5, :cond_6

    .line 1595
    move-object v5, v3

    .line 1596
    .local v5, "basicBlock":Lnet/bytebuddy/jar/asm/Label;
    iget-object v3, v3, Lnet/bytebuddy/jar/asm/Label;->nextListElement:Lnet/bytebuddy/jar/asm/Label;

    .line 1597
    const/4 v6, 0x0

    iput-object v6, v5, Lnet/bytebuddy/jar/asm/Label;->nextListElement:Lnet/bytebuddy/jar/asm/Label;

    .line 1599
    iget-short v6, v5, Lnet/bytebuddy/jar/asm/Label;->flags:S

    or-int/lit8 v6, v6, 0x8

    int-to-short v6, v6

    iput-short v6, v5, Lnet/bytebuddy/jar/asm/Label;->flags:S

    .line 1601
    iget-object v6, v5, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    invoke-virtual {v6}, Lnet/bytebuddy/jar/asm/Frame;->getInputStackSize()I

    move-result v6

    iget-short v7, v5, Lnet/bytebuddy/jar/asm/Label;->outputStackMax:S

    add-int/2addr v6, v7

    .line 1602
    .local v6, "maxBlockStackSize":I
    if-le v6, v4, :cond_3

    .line 1603
    move v4, v6

    .line 1606
    :cond_3
    iget-object v7, v5, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    .line 1607
    .local v7, "outgoingEdge":Lnet/bytebuddy/jar/asm/Edge;
    :goto_4
    if-eqz v7, :cond_5

    .line 1608
    iget-object v8, v7, Lnet/bytebuddy/jar/asm/Edge;->successor:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v8}, Lnet/bytebuddy/jar/asm/Label;->getCanonicalInstance()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v8

    .line 1609
    .local v8, "successorBlock":Lnet/bytebuddy/jar/asm/Label;
    iget-object v9, v5, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v10, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v11, v8, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iget v12, v7, Lnet/bytebuddy/jar/asm/Edge;->info:I

    .line 1610
    invoke-virtual {v9, v10, v11, v12}, Lnet/bytebuddy/jar/asm/Frame;->merge(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/Frame;I)Z

    move-result v9

    .line 1611
    .local v9, "successorBlockChanged":Z
    if-eqz v9, :cond_4

    iget-object v10, v8, Lnet/bytebuddy/jar/asm/Label;->nextListElement:Lnet/bytebuddy/jar/asm/Label;

    if-nez v10, :cond_4

    .line 1614
    iput-object v3, v8, Lnet/bytebuddy/jar/asm/Label;->nextListElement:Lnet/bytebuddy/jar/asm/Label;

    .line 1615
    move-object v3, v8

    .line 1617
    :cond_4
    iget-object v7, v7, Lnet/bytebuddy/jar/asm/Edge;->nextEdge:Lnet/bytebuddy/jar/asm/Edge;

    .line 1618
    .end local v8    # "successorBlock":Lnet/bytebuddy/jar/asm/Label;
    .end local v9    # "successorBlockChanged":Z
    goto :goto_4

    .line 1619
    .end local v5    # "basicBlock":Lnet/bytebuddy/jar/asm/Label;
    .end local v6    # "maxBlockStackSize":I
    .end local v7    # "outgoingEdge":Lnet/bytebuddy/jar/asm/Edge;
    :cond_5
    goto :goto_3

    .line 1624
    :cond_6
    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1625
    .restart local v5    # "basicBlock":Lnet/bytebuddy/jar/asm/Label;
    :goto_5
    if-eqz v5, :cond_b

    .line 1626
    iget-short v6, v5, Lnet/bytebuddy/jar/asm/Label;->flags:S

    const/16 v7, 0xa

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_7

    .line 1628
    iget-object v6, v5, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    invoke-virtual {v6, p0}, Lnet/bytebuddy/jar/asm/Frame;->accept(Lnet/bytebuddy/jar/asm/MethodWriter;)V

    .line 1630
    :cond_7
    iget-short v6, v5, Lnet/bytebuddy/jar/asm/Label;->flags:S

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_a

    .line 1632
    iget-object v6, v5, Lnet/bytebuddy/jar/asm/Label;->nextBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1633
    .local v6, "nextBasicBlock":Lnet/bytebuddy/jar/asm/Label;
    iget v7, v5, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    .line 1634
    .local v7, "startOffset":I
    if-nez v6, :cond_8

    iget-object v8, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v8, v8, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    goto :goto_6

    :cond_8
    iget v8, v6, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    :goto_6
    const/4 v9, 0x1

    sub-int/2addr v8, v9

    .line 1635
    .local v8, "endOffset":I
    if-lt v8, v7, :cond_a

    .line 1637
    move v10, v7

    .local v10, "i":I
    :goto_7
    const/4 v11, 0x0

    if-ge v10, v8, :cond_9

    .line 1638
    iget-object v12, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v12, v12, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    aput-byte v11, v12, v10

    .line 1637
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 1640
    .end local v10    # "i":I
    :cond_9
    iget-object v10, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v10, v10, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    const/16 v12, -0x41

    aput-byte v12, v10, v8

    .line 1643
    invoke-virtual {p0, v7, v11, v9}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitFrameStart(III)I

    move-result v10

    .line 1644
    .local v10, "frameIndex":I
    iget-object v11, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    iget-object v12, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 1645
    invoke-static {v12, v1}, Lnet/bytebuddy/jar/asm/Frame;->getAbstractTypeFromInternalName(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)I

    move-result v12

    aput v12, v11, v10

    .line 1646
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitFrameEnd()V

    .line 1648
    iget-object v11, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    invoke-static {v11, v5, v6}, Lnet/bytebuddy/jar/asm/Handler;->removeRange(Lnet/bytebuddy/jar/asm/Handler;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;)Lnet/bytebuddy/jar/asm/Handler;

    move-result-object v11

    iput-object v11, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    .line 1650
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1653
    .end local v6    # "nextBasicBlock":Lnet/bytebuddy/jar/asm/Label;
    .end local v7    # "startOffset":I
    .end local v8    # "endOffset":I
    .end local v10    # "frameIndex":I
    :cond_a
    iget-object v5, v5, Lnet/bytebuddy/jar/asm/Label;->nextBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_5

    .line 1656
    :cond_b
    iput v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    .line 1657
    return-void
.end method

.method private computeMaxStackAndLocal()V
    .locals 10

    .line 1662
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    .line 1663
    .local v0, "handler":Lnet/bytebuddy/jar/asm/Handler;
    :goto_0
    const v1, 0x7fffffff

    if-eqz v0, :cond_2

    .line 1664
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/Handler;->handlerPc:Lnet/bytebuddy/jar/asm/Label;

    .line 1665
    .local v2, "handlerBlock":Lnet/bytebuddy/jar/asm/Label;
    iget-object v3, v0, Lnet/bytebuddy/jar/asm/Handler;->startPc:Lnet/bytebuddy/jar/asm/Label;

    .line 1666
    .local v3, "handlerRangeBlock":Lnet/bytebuddy/jar/asm/Label;
    iget-object v4, v0, Lnet/bytebuddy/jar/asm/Handler;->endPc:Lnet/bytebuddy/jar/asm/Label;

    .line 1668
    .local v4, "handlerRangeEnd":Lnet/bytebuddy/jar/asm/Label;
    :goto_1
    if-eq v3, v4, :cond_1

    .line 1669
    iget-short v5, v3, Lnet/bytebuddy/jar/asm/Label;->flags:S

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_0

    .line 1670
    new-instance v5, Lnet/bytebuddy/jar/asm/Edge;

    iget-object v6, v3, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    invoke-direct {v5, v1, v2, v6}, Lnet/bytebuddy/jar/asm/Edge;-><init>(ILnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Edge;)V

    iput-object v5, v3, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    goto :goto_2

    .line 1676
    :cond_0
    iget-object v5, v3, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v5, v5, Lnet/bytebuddy/jar/asm/Edge;->nextEdge:Lnet/bytebuddy/jar/asm/Edge;

    new-instance v6, Lnet/bytebuddy/jar/asm/Edge;

    iget-object v7, v3, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v7, v7, Lnet/bytebuddy/jar/asm/Edge;->nextEdge:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v7, v7, Lnet/bytebuddy/jar/asm/Edge;->nextEdge:Lnet/bytebuddy/jar/asm/Edge;

    invoke-direct {v6, v1, v2, v7}, Lnet/bytebuddy/jar/asm/Edge;-><init>(ILnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Edge;)V

    iput-object v6, v5, Lnet/bytebuddy/jar/asm/Edge;->nextEdge:Lnet/bytebuddy/jar/asm/Edge;

    .line 1680
    :goto_2
    iget-object v3, v3, Lnet/bytebuddy/jar/asm/Label;->nextBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_1

    .line 1682
    :cond_1
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Handler;->nextHandler:Lnet/bytebuddy/jar/asm/Handler;

    .line 1683
    .end local v2    # "handlerBlock":Lnet/bytebuddy/jar/asm/Label;
    .end local v3    # "handlerRangeBlock":Lnet/bytebuddy/jar/asm/Label;
    .end local v4    # "handlerRangeEnd":Lnet/bytebuddy/jar/asm/Label;
    goto :goto_0

    .line 1686
    :cond_2
    iget-boolean v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->hasSubroutines:Z

    if-eqz v2, :cond_7

    .line 1689
    const/4 v2, 0x1

    .line 1690
    .local v2, "numSubroutines":S
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v3, v2}, Lnet/bytebuddy/jar/asm/Label;->markSubroutine(S)V

    .line 1693
    const/4 v3, 0x1

    .local v3, "currentSubroutine":S
    :goto_3
    if-gt v3, v2, :cond_5

    .line 1694
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1695
    .local v4, "basicBlock":Lnet/bytebuddy/jar/asm/Label;
    :goto_4
    if-eqz v4, :cond_4

    .line 1696
    iget-short v5, v4, Lnet/bytebuddy/jar/asm/Label;->flags:S

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_3

    iget-short v5, v4, Lnet/bytebuddy/jar/asm/Label;->subroutineId:S

    if-ne v5, v3, :cond_3

    .line 1698
    iget-object v5, v4, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v5, v5, Lnet/bytebuddy/jar/asm/Edge;->nextEdge:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v5, v5, Lnet/bytebuddy/jar/asm/Edge;->successor:Lnet/bytebuddy/jar/asm/Label;

    .line 1699
    .local v5, "jsrTarget":Lnet/bytebuddy/jar/asm/Label;
    iget-short v6, v5, Lnet/bytebuddy/jar/asm/Label;->subroutineId:S

    if-nez v6, :cond_3

    .line 1701
    add-int/lit8 v6, v2, 0x1

    int-to-short v2, v6

    invoke-virtual {v5, v2}, Lnet/bytebuddy/jar/asm/Label;->markSubroutine(S)V

    .line 1704
    .end local v5    # "jsrTarget":Lnet/bytebuddy/jar/asm/Label;
    :cond_3
    iget-object v4, v4, Lnet/bytebuddy/jar/asm/Label;->nextBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_4

    .line 1693
    .end local v4    # "basicBlock":Lnet/bytebuddy/jar/asm/Label;
    :cond_4
    add-int/lit8 v4, v3, 0x1

    int-to-short v3, v4

    goto :goto_3

    .line 1710
    .end local v3    # "currentSubroutine":S
    :cond_5
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1711
    .local v3, "basicBlock":Lnet/bytebuddy/jar/asm/Label;
    :goto_5
    if-eqz v3, :cond_7

    .line 1712
    iget-short v4, v3, Lnet/bytebuddy/jar/asm/Label;->flags:S

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_6

    .line 1715
    iget-object v4, v3, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v4, v4, Lnet/bytebuddy/jar/asm/Edge;->nextEdge:Lnet/bytebuddy/jar/asm/Edge;

    iget-object v4, v4, Lnet/bytebuddy/jar/asm/Edge;->successor:Lnet/bytebuddy/jar/asm/Label;

    .line 1716
    .local v4, "subroutine":Lnet/bytebuddy/jar/asm/Label;
    invoke-virtual {v4, v3}, Lnet/bytebuddy/jar/asm/Label;->addSubroutineRetSuccessors(Lnet/bytebuddy/jar/asm/Label;)V

    .line 1718
    .end local v4    # "subroutine":Lnet/bytebuddy/jar/asm/Label;
    :cond_6
    iget-object v3, v3, Lnet/bytebuddy/jar/asm/Label;->nextBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_5

    .line 1726
    .end local v2    # "numSubroutines":S
    .end local v3    # "basicBlock":Lnet/bytebuddy/jar/asm/Label;
    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1727
    .local v2, "listOfBlocksToProcess":Lnet/bytebuddy/jar/asm/Label;
    sget-object v3, Lnet/bytebuddy/jar/asm/Label;->EMPTY_LIST:Lnet/bytebuddy/jar/asm/Label;

    iput-object v3, v2, Lnet/bytebuddy/jar/asm/Label;->nextListElement:Lnet/bytebuddy/jar/asm/Label;

    .line 1728
    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    .line 1729
    .local v3, "maxStackSize":I
    :goto_6
    sget-object v4, Lnet/bytebuddy/jar/asm/Label;->EMPTY_LIST:Lnet/bytebuddy/jar/asm/Label;

    if-eq v2, v4, :cond_d

    .line 1733
    move-object v4, v2

    .line 1734
    .local v4, "basicBlock":Lnet/bytebuddy/jar/asm/Label;
    iget-object v2, v2, Lnet/bytebuddy/jar/asm/Label;->nextListElement:Lnet/bytebuddy/jar/asm/Label;

    .line 1736
    iget-short v5, v4, Lnet/bytebuddy/jar/asm/Label;->inputStackSize:S

    .line 1737
    .local v5, "inputStackTop":I
    iget-short v6, v4, Lnet/bytebuddy/jar/asm/Label;->outputStackMax:S

    add-int/2addr v6, v5

    .line 1739
    .local v6, "maxBlockStackSize":I
    if-le v6, v3, :cond_8

    .line 1740
    move v3, v6

    .line 1744
    :cond_8
    iget-object v7, v4, Lnet/bytebuddy/jar/asm/Label;->outgoingEdges:Lnet/bytebuddy/jar/asm/Edge;

    .line 1745
    .local v7, "outgoingEdge":Lnet/bytebuddy/jar/asm/Edge;
    iget-short v8, v4, Lnet/bytebuddy/jar/asm/Label;->flags:S

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_9

    .line 1750
    iget-object v7, v7, Lnet/bytebuddy/jar/asm/Edge;->nextEdge:Lnet/bytebuddy/jar/asm/Edge;

    .line 1752
    :cond_9
    :goto_7
    if-eqz v7, :cond_c

    .line 1753
    iget-object v8, v7, Lnet/bytebuddy/jar/asm/Edge;->successor:Lnet/bytebuddy/jar/asm/Label;

    .line 1754
    .local v8, "successorBlock":Lnet/bytebuddy/jar/asm/Label;
    iget-object v9, v8, Lnet/bytebuddy/jar/asm/Label;->nextListElement:Lnet/bytebuddy/jar/asm/Label;

    if-nez v9, :cond_b

    .line 1755
    nop

    .line 1756
    iget v9, v7, Lnet/bytebuddy/jar/asm/Edge;->info:I

    if-ne v9, v1, :cond_a

    const/4 v9, 0x1

    goto :goto_8

    :cond_a
    iget v9, v7, Lnet/bytebuddy/jar/asm/Edge;->info:I

    add-int/2addr v9, v5

    :goto_8
    int-to-short v9, v9

    iput-short v9, v8, Lnet/bytebuddy/jar/asm/Label;->inputStackSize:S

    .line 1757
    iput-object v2, v8, Lnet/bytebuddy/jar/asm/Label;->nextListElement:Lnet/bytebuddy/jar/asm/Label;

    .line 1758
    move-object v2, v8

    .line 1760
    :cond_b
    iget-object v7, v7, Lnet/bytebuddy/jar/asm/Edge;->nextEdge:Lnet/bytebuddy/jar/asm/Edge;

    .line 1761
    .end local v8    # "successorBlock":Lnet/bytebuddy/jar/asm/Label;
    goto :goto_7

    .line 1762
    .end local v4    # "basicBlock":Lnet/bytebuddy/jar/asm/Label;
    .end local v5    # "inputStackTop":I
    .end local v6    # "maxBlockStackSize":I
    .end local v7    # "outgoingEdge":Lnet/bytebuddy/jar/asm/Edge;
    :cond_c
    goto :goto_6

    .line 1763
    :cond_d
    iput v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    .line 1764
    return-void
.end method

.method private endCurrentBasicBlockWithNoSuccessor()V
    .locals 4

    .line 1794
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1795
    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    .line 1796
    .local v0, "nextBasicBlock":Lnet/bytebuddy/jar/asm/Label;
    new-instance v1, Lnet/bytebuddy/jar/asm/Frame;

    invoke-direct {v1, v0}, Lnet/bytebuddy/jar/asm/Frame;-><init>(Lnet/bytebuddy/jar/asm/Label;)V

    iput-object v1, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    .line 1797
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v3}, Lnet/bytebuddy/jar/asm/Label;->resolve([BI)Z

    .line 1798
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iput-object v0, v1, Lnet/bytebuddy/jar/asm/Label;->nextBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1799
    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1800
    iput-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .end local v0    # "nextBasicBlock":Lnet/bytebuddy/jar/asm/Label;
    goto :goto_0

    .line 1801
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1802
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    int-to-short v1, v1

    iput-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->outputStackMax:S

    .line 1803
    iput-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_1

    .line 1801
    :cond_1
    :goto_0
    nop

    .line 1805
    :goto_1
    return-void
.end method

.method private putAbstractTypes(II)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1958
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 1959
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    aget v2, v2, v0

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-static {v1, v2, v3}, Lnet/bytebuddy/jar/asm/Frame;->putAbstractType(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/ByteVector;)V

    .line 1958
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1961
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private putFrame()V
    .locals 14

    .line 1859
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    .line 1860
    .local v2, "numLocal":I
    const/4 v3, 0x2

    aget v0, v0, v3

    .line 1861
    .local v0, "numStack":I
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->getMajorVersion()I

    move-result v3

    const/16 v4, 0x32

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-ge v3, v4, :cond_0

    .line 1863
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    aget v3, v3, v5

    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1864
    add-int/lit8 v1, v2, 0x3

    invoke-direct {p0, v6, v1}, Lnet/bytebuddy/jar/asm/MethodWriter;->putAbstractTypes(II)V

    .line 1865
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1866
    add-int/lit8 v1, v2, 0x3

    add-int/lit8 v3, v2, 0x3

    add-int/2addr v3, v0

    invoke-direct {p0, v1, v3}, Lnet/bytebuddy/jar/asm/MethodWriter;->putAbstractTypes(II)V

    .line 1867
    return-void

    .line 1870
    :cond_0
    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    if-nez v3, :cond_1

    .line 1871
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    aget v3, v3, v5

    goto :goto_0

    .line 1872
    :cond_1
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    aget v3, v3, v5

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->previousFrame:[I

    aget v4, v4, v5

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    :goto_0
    nop

    .line 1873
    .local v3, "offsetDelta":I
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->previousFrame:[I

    aget v4, v4, v1

    .line 1874
    .local v4, "previousNumlocal":I
    sub-int v7, v2, v4

    .line 1875
    .local v7, "numLocalDelta":I
    const/16 v8, 0xff

    .line 1876
    .local v8, "type":I
    const/16 v9, 0xf7

    const/16 v10, 0x40

    const/16 v11, 0xfb

    if-nez v0, :cond_3

    .line 1877
    packed-switch v7, :pswitch_data_0

    .line 1893
    goto :goto_3

    .line 1889
    :pswitch_0
    const/16 v8, 0xfc

    .line 1890
    goto :goto_3

    .line 1884
    :pswitch_1
    if-ge v3, v10, :cond_2

    goto :goto_1

    :cond_2
    move v5, v11

    :goto_1
    move v8, v5

    .line 1885
    goto :goto_3

    .line 1881
    :pswitch_2
    const/16 v8, 0xf8

    .line 1882
    goto :goto_3

    .line 1895
    :cond_3
    if-nez v7, :cond_5

    if-ne v0, v1, :cond_5

    .line 1897
    const/16 v1, 0x3f

    if-ge v3, v1, :cond_4

    .line 1898
    goto :goto_2

    .line 1899
    :cond_4
    move v10, v9

    :goto_2
    move v8, v10

    .line 1901
    :cond_5
    :goto_3
    const/16 v1, 0xff

    if-eq v8, v1, :cond_7

    .line 1903
    const/4 v5, 0x3

    .line 1904
    .local v5, "frameIndex":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    if-ge v10, v4, :cond_7

    if-ge v10, v2, :cond_7

    .line 1905
    iget-object v12, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    aget v12, v12, v5

    iget-object v13, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->previousFrame:[I

    aget v13, v13, v5

    if-eq v12, v13, :cond_6

    .line 1906
    const/16 v8, 0xff

    .line 1907
    goto :goto_5

    .line 1909
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 1904
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1912
    .end local v5    # "frameIndex":I
    .end local v10    # "i":I
    :cond_7
    :goto_5
    sparse-switch v8, :sswitch_data_0

    .line 1942
    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v5, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1943
    add-int/lit8 v1, v2, 0x3

    invoke-direct {p0, v6, v1}, Lnet/bytebuddy/jar/asm/MethodWriter;->putAbstractTypes(II)V

    .line 1944
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1945
    add-int/lit8 v1, v2, 0x3

    add-int/lit8 v5, v2, 0x3

    add-int/2addr v5, v0

    invoke-direct {p0, v1, v5}, Lnet/bytebuddy/jar/asm/MethodWriter;->putAbstractTypes(II)V

    goto :goto_6

    .line 1935
    :sswitch_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit16 v5, v7, 0xfb

    .line 1936
    invoke-virtual {v1, v5}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    .line 1937
    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1938
    add-int/lit8 v1, v4, 0x3

    add-int/lit8 v5, v2, 0x3

    invoke-direct {p0, v1, v5}, Lnet/bytebuddy/jar/asm/MethodWriter;->putAbstractTypes(II)V

    .line 1939
    goto :goto_6

    .line 1927
    :sswitch_1
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v1, v11}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1928
    goto :goto_6

    .line 1930
    :sswitch_2
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit16 v5, v7, 0xfb

    .line 1931
    invoke-virtual {v1, v5}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    .line 1932
    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1933
    goto :goto_6

    .line 1921
    :sswitch_3
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1922
    invoke-virtual {v1, v9}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    .line 1923
    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1924
    add-int/lit8 v1, v2, 0x3

    add-int/lit8 v5, v2, 0x4

    invoke-direct {p0, v1, v5}, Lnet/bytebuddy/jar/asm/MethodWriter;->putAbstractTypes(II)V

    .line 1925
    goto :goto_6

    .line 1917
    :sswitch_4
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit8 v5, v3, 0x40

    invoke-virtual {v1, v5}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1918
    add-int/lit8 v1, v2, 0x3

    add-int/lit8 v5, v2, 0x4

    invoke-direct {p0, v1, v5}, Lnet/bytebuddy/jar/asm/MethodWriter;->putAbstractTypes(II)V

    .line 1919
    goto :goto_6

    .line 1914
    :sswitch_5
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1915
    nop

    .line 1948
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x40 -> :sswitch_4
        0xf7 -> :sswitch_3
        0xf8 -> :sswitch_2
        0xfb -> :sswitch_1
        0xfc -> :sswitch_0
    .end sparse-switch
.end method

.method private putFrameType(Ljava/lang/Object;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/Object;

    .line 1974
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1975
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_0

    .line 1976
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1977
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1978
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 1979
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_0

    .line 1981
    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1982
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lnet/bytebuddy/jar/asm/Label;

    iget v1, v1, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    .line 1983
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1985
    :goto_0
    return-void
.end method

.method private visitSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 6
    .param p1, "dflt"    # Lnet/bytebuddy/jar/asm/Label;
    .param p2, "labels"    # [Lnet/bytebuddy/jar/asm/Label;

    .line 1362
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_2

    .line 1363
    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 1364
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    const/16 v1, 0xab

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2, v2}, Lnet/bytebuddy/jar/asm/Frame;->execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    .line 1366
    invoke-direct {p0, v3, p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V

    .line 1367
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Label;->getCanonicalInstance()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v0

    iget-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    or-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    iput-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    .line 1368
    array-length v0, p2

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 1369
    .local v2, "label":Lnet/bytebuddy/jar/asm/Label;
    invoke-direct {p0, v3, v2}, Lnet/bytebuddy/jar/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V

    .line 1370
    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/Label;->getCanonicalInstance()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v4

    iget-short v5, v4, Lnet/bytebuddy/jar/asm/Label;->flags:S

    or-int/lit8 v5, v5, 0x2

    int-to-short v5, v5

    iput-short v5, v4, Lnet/bytebuddy/jar/asm/Label;->flags:S

    .line 1368
    .end local v2    # "label":Lnet/bytebuddy/jar/asm/Label;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1372
    :cond_0
    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    .line 1374
    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    sub-int/2addr v1, v0

    iput v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    .line 1376
    invoke-direct {p0, v1, p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V

    .line 1377
    array-length v0, p2

    :goto_1
    if-ge v3, v0, :cond_1

    aget-object v1, p2, v3

    .line 1378
    .local v1, "label":Lnet/bytebuddy/jar/asm/Label;
    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    invoke-direct {p0, v2, v1}, Lnet/bytebuddy/jar/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V

    .line 1377
    .end local v1    # "label":Lnet/bytebuddy/jar/asm/Label;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1382
    :cond_1
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->endCurrentBasicBlockWithNoSuccessor()V

    .line 1384
    :cond_2
    return-void
.end method


# virtual methods
.method canCopyMethodAttributes(Lnet/bytebuddy/jar/asm/ClassReader;ZZIII)Z
    .locals 7
    .param p1, "source"    # Lnet/bytebuddy/jar/asm/ClassReader;
    .param p2, "hasSyntheticAttribute"    # Z
    .param p3, "hasDeprecatedAttribute"    # Z
    .param p4, "descriptorIndex"    # I
    .param p5, "signatureIndex"    # I
    .param p6, "exceptionsOffset"    # I

    .line 2026
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->getSource()Lnet/bytebuddy/jar/asm/ClassReader;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptorIndex:I

    if-ne p4, v0, :cond_7

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->signatureIndex:I

    if-ne p5, v0, :cond_7

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    const/high16 v2, 0x20000

    and-int/2addr v0, v2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eq p3, v0, :cond_1

    goto :goto_3

    .line 2032
    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 2033
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->getMajorVersion()I

    move-result v0

    const/16 v3, 0x31

    if-ge v0, v3, :cond_2

    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 2034
    .local v0, "needSyntheticAttribute":Z
    :goto_1
    if-eq p2, v0, :cond_3

    .line 2035
    return v1

    .line 2037
    :cond_3
    if-nez p6, :cond_4

    .line 2038
    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    if-eqz v3, :cond_6

    .line 2039
    return v1

    .line 2041
    :cond_4
    invoke-virtual {p1, p6}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v3

    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    if-ne v3, v4, :cond_6

    .line 2042
    add-int/lit8 v3, p6, 0x2

    .line 2043
    .local v3, "currentExceptionOffset":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    if-ge v4, v5, :cond_6

    .line 2044
    invoke-virtual {p1, v3}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->exceptionIndexTable:[I

    aget v6, v6, v4

    if-eq v5, v6, :cond_5

    .line 2045
    return v1

    .line 2047
    :cond_5
    add-int/lit8 v3, v3, 0x2

    .line 2043
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2050
    .end local v3    # "currentExceptionOffset":I
    .end local v4    # "i":I
    :cond_6
    return v2

    .line 2030
    .end local v0    # "needSyntheticAttribute":Z
    :cond_7
    :goto_3
    return v1
.end method

.method final collectAttributePrototypes(Lnet/bytebuddy/jar/asm/Attribute$Set;)V
    .locals 1
    .param p1, "attributePrototypes"    # Lnet/bytebuddy/jar/asm/Attribute$Set;

    .line 2390
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/Attribute$Set;->addAttributes(Lnet/bytebuddy/jar/asm/Attribute;)V

    .line 2391
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstCodeAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/Attribute$Set;->addAttributes(Lnet/bytebuddy/jar/asm/Attribute;)V

    .line 2392
    return-void
.end method

.method computeMethodInfoSize()I
    .locals 7

    .line 2077
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->sourceOffset:I

    if-eqz v0, :cond_0

    .line 2079
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->sourceLength:I

    add-int/lit8 v0, v0, 0x6

    return v0

    .line 2082
    :cond_0
    const/16 v0, 0x8

    .line 2084
    .local v0, "size":I
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    if-lez v1, :cond_a

    .line 2085
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    const v2, 0xffff

    if-gt v1, v2, :cond_9

    .line 2089
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "Code"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2092
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x10

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    invoke-static {v2}, Lnet/bytebuddy/jar/asm/Handler;->getExceptionTableSize(Lnet/bytebuddy/jar/asm/Handler;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 2093
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_3

    .line 2094
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->getMajorVersion()I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2095
    .local v1, "useStackMapTable":Z
    :goto_0
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    if-eqz v1, :cond_2

    const-string v3, "StackMapTable"

    goto :goto_1

    :cond_2
    const-string v3, "StackMap"

    :goto_1
    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2097
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 2099
    .end local v1    # "useStackMapTable":Z
    :cond_3
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_4

    .line 2100
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "LineNumberTable"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2102
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 2104
    :cond_4
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_5

    .line 2105
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "LocalVariableTable"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2107
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 2109
    :cond_5
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_6

    .line 2110
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "LocalVariableTypeTable"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2112
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 2114
    :cond_6
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_7

    .line 2115
    nop

    .line 2116
    const-string v2, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2119
    :cond_7
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_8

    .line 2120
    nop

    .line 2121
    const-string v2, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2124
    :cond_8
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstCodeAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v1, :cond_a

    .line 2125
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v4, v4, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iget v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    iget v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    .line 2126
    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/Attribute;->computeAttributesSize(Lnet/bytebuddy/jar/asm/SymbolTable;[BIII)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    .line 2086
    :cond_9
    new-instance v1, Lnet/bytebuddy/jar/asm/MethodTooLargeException;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 2087
    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->getClassName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->name:Ljava/lang/String;

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptor:Ljava/lang/String;

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v5, v5, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    invoke-direct {v1, v2, v3, v4, v5}, Lnet/bytebuddy/jar/asm/MethodTooLargeException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 2130
    :cond_a
    :goto_2
    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    if-lez v1, :cond_b

    .line 2131
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "Exceptions"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2132
    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 2134
    :cond_b
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->signatureIndex:I

    invoke-static {v1, v2, v3}, Lnet/bytebuddy/jar/asm/Attribute;->computeAttributesSize(Lnet/bytebuddy/jar/asm/SymbolTable;II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2135
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 2136
    invoke-static {v1, v2, v3, v4}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2141
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_d

    .line 2142
    nop

    .line 2146
    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->visibleAnnotableParameterCount:I

    if-nez v2, :cond_c

    .line 2147
    array-length v2, v1

    goto :goto_3

    .line 2148
    :cond_c
    nop

    .line 2143
    :goto_3
    const-string v3, "RuntimeVisibleParameterAnnotations"

    invoke-static {v3, v1, v2}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeParameterAnnotationsSize(Ljava/lang/String;[Lnet/bytebuddy/jar/asm/AnnotationWriter;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2150
    :cond_d
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_f

    .line 2151
    nop

    .line 2155
    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->invisibleAnnotableParameterCount:I

    if-nez v2, :cond_e

    .line 2156
    array-length v2, v1

    goto :goto_4

    .line 2157
    :cond_e
    nop

    .line 2152
    :goto_4
    const-string v3, "RuntimeInvisibleParameterAnnotations"

    invoke-static {v3, v1, v2}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeParameterAnnotationsSize(Ljava/lang/String;[Lnet/bytebuddy/jar/asm/AnnotationWriter;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2159
    :cond_f
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->defaultValue:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_10

    .line 2160
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "AnnotationDefault"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2161
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->defaultValue:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    .line 2163
    :cond_10
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_11

    .line 2164
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    const-string v2, "MethodParameters"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2166
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    .line 2168
    :cond_11
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v1, :cond_12

    .line 2169
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/Attribute;->computeAttributesSize(Lnet/bytebuddy/jar/asm/SymbolTable;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2171
    :cond_12
    return v0
.end method

.method hasAsmInstructions()Z
    .locals 1

    .line 633
    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->hasAsmInstructions:Z

    return v0
.end method

.method hasFrames()Z
    .locals 1

    .line 629
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method putMethodInfo(Lnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 20
    .param p1, "output"    # Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2181
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->getMajorVersion()I

    move-result v1

    const/16 v2, 0x31

    const/4 v9, 0x0

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v9

    :goto_0
    move v11, v1

    .line 2182
    .local v11, "useSyntheticAttribute":Z
    if-eqz v11, :cond_1

    const/16 v1, 0x1000

    goto :goto_1

    :cond_1
    move v1, v9

    :goto_1
    move v12, v1

    .line 2183
    .local v12, "mask":I
    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    not-int v2, v12

    and-int/2addr v1, v2

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->nameIndex:I

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptorIndex:I

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2185
    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->sourceOffset:I

    if-eqz v1, :cond_2

    .line 2186
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->getSource()Lnet/bytebuddy/jar/asm/ClassReader;

    move-result-object v1

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/ClassReader;->classFileBuffer:[B

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->sourceOffset:I

    iget v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->sourceLength:I

    invoke-virtual {v8, v1, v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2187
    return-void

    .line 2190
    :cond_2
    const/4 v1, 0x0

    .line 2191
    .local v1, "attributeCount":I
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    if-lez v2, :cond_3

    .line 2192
    add-int/lit8 v1, v1, 0x1

    .line 2194
    :cond_3
    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    if-lez v2, :cond_4

    .line 2195
    add-int/lit8 v1, v1, 0x1

    .line 2197
    :cond_4
    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    and-int/lit16 v3, v2, 0x1000

    if-eqz v3, :cond_5

    if-eqz v11, :cond_5

    .line 2198
    add-int/lit8 v1, v1, 0x1

    .line 2200
    :cond_5
    iget v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->signatureIndex:I

    if-eqz v3, :cond_6

    .line 2201
    add-int/lit8 v1, v1, 0x1

    .line 2203
    :cond_6
    const/high16 v3, 0x20000

    and-int/2addr v2, v3

    if-eqz v2, :cond_7

    .line 2204
    add-int/lit8 v1, v1, 0x1

    .line 2206
    :cond_7
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_8

    .line 2207
    add-int/lit8 v1, v1, 0x1

    .line 2209
    :cond_8
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_9

    .line 2210
    add-int/lit8 v1, v1, 0x1

    .line 2212
    :cond_9
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_a

    .line 2213
    add-int/lit8 v1, v1, 0x1

    .line 2215
    :cond_a
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_b

    .line 2216
    add-int/lit8 v1, v1, 0x1

    .line 2218
    :cond_b
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_c

    .line 2219
    add-int/lit8 v1, v1, 0x1

    .line 2221
    :cond_c
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v2, :cond_d

    .line 2222
    add-int/lit8 v1, v1, 0x1

    .line 2224
    :cond_d
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->defaultValue:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v2, :cond_e

    .line 2225
    add-int/lit8 v1, v1, 0x1

    .line 2227
    :cond_e
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v2, :cond_f

    .line 2228
    add-int/lit8 v1, v1, 0x1

    .line 2230
    :cond_f
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v2, :cond_10

    .line 2231
    invoke-virtual {v2}, Lnet/bytebuddy/jar/asm/Attribute;->getAttributeCount()I

    move-result v2

    add-int/2addr v1, v2

    move v13, v1

    goto :goto_2

    .line 2230
    :cond_10
    move v13, v1

    .line 2234
    .end local v1    # "attributeCount":I
    .local v13, "attributeCount":I
    :goto_2
    invoke-virtual {v8, v13}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2235
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    if-lez v1, :cond_20

    .line 2238
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0xa

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    invoke-static {v2}, Lnet/bytebuddy/jar/asm/Handler;->getExceptionTableSize(Lnet/bytebuddy/jar/asm/Handler;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2239
    .local v1, "size":I
    const/4 v2, 0x0

    .line 2240
    .local v2, "codeAttributeCount":I
    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v3, :cond_11

    .line 2242
    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v3

    .line 2243
    add-int/lit8 v2, v2, 0x1

    .line 2245
    :cond_11
    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v3, :cond_12

    .line 2247
    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v3

    .line 2248
    add-int/lit8 v2, v2, 0x1

    .line 2250
    :cond_12
    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v3, :cond_13

    .line 2252
    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v3

    .line 2253
    add-int/lit8 v2, v2, 0x1

    .line 2255
    :cond_13
    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v3, :cond_14

    .line 2257
    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v1, v3

    .line 2258
    add-int/lit8 v2, v2, 0x1

    .line 2260
    :cond_14
    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    const-string v4, "RuntimeVisibleTypeAnnotations"

    if-eqz v3, :cond_15

    .line 2261
    nop

    .line 2262
    invoke-virtual {v3, v4}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2264
    add-int/lit8 v2, v2, 0x1

    .line 2266
    :cond_15
    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    const-string v5, "RuntimeInvisibleTypeAnnotations"

    if-eqz v3, :cond_16

    .line 2267
    nop

    .line 2268
    invoke-virtual {v3, v5}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2270
    add-int/lit8 v2, v2, 0x1

    .line 2272
    :cond_16
    iget-object v14, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstCodeAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v14, :cond_17

    .line 2273
    iget-object v15, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v6, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v6, v6, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iget v7, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    iget v10, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    .line 2274
    move-object/from16 v16, v3

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v10

    invoke-virtual/range {v14 .. v19}, Lnet/bytebuddy/jar/asm/Attribute;->computeAttributesSize(Lnet/bytebuddy/jar/asm/SymbolTable;[BIII)I

    move-result v3

    add-int/2addr v1, v3

    .line 2276
    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstCodeAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    invoke-virtual {v3}, Lnet/bytebuddy/jar/asm/Attribute;->getAttributeCount()I

    move-result v3

    add-int/2addr v2, v3

    move v10, v1

    move v14, v2

    goto :goto_3

    .line 2272
    :cond_17
    move v10, v1

    move v14, v2

    .line 2278
    .end local v1    # "size":I
    .end local v2    # "codeAttributeCount":I
    .local v10, "size":I
    .local v14, "codeAttributeCount":I
    :goto_3
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 2279
    const-string v2, "Code"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    .line 2280
    invoke-virtual {v1, v10}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    .line 2281
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    .line 2282
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 2283
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 2284
    invoke-virtual {v1, v2, v9, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2285
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    invoke-static {v1, v8}, Lnet/bytebuddy/jar/asm/Handler;->putExceptionTable(Lnet/bytebuddy/jar/asm/Handler;Lnet/bytebuddy/jar/asm/ByteVector;)V

    .line 2286
    invoke-virtual {v8, v14}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2287
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_1a

    .line 2288
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->getMajorVersion()I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_18

    const/4 v1, 0x1

    goto :goto_4

    :cond_18
    move v1, v9

    .line 2289
    .local v1, "useStackMapTable":Z
    :goto_4
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 2292
    if-eqz v1, :cond_19

    const-string v3, "StackMapTable"

    goto :goto_5

    :cond_19
    const-string v3, "StackMap"

    .line 2291
    :goto_5
    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    .line 2290
    invoke-virtual {v8, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v3, v3, 0x2

    .line 2293
    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    iget v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    .line 2294
    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v6, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v6, v6, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 2295
    invoke-virtual {v2, v3, v9, v6}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2297
    .end local v1    # "useStackMapTable":Z
    :cond_1a
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_1b

    .line 2298
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 2299
    const-string v2, "LineNumberTable"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v2, v2, 0x2

    .line 2300
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTableLength:I

    .line 2301
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 2302
    invoke-virtual {v1, v2, v9, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2304
    :cond_1b
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_1c

    .line 2305
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 2306
    const-string v2, "LocalVariableTable"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v2, v2, 0x2

    .line 2307
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTableLength:I

    .line 2308
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 2309
    invoke-virtual {v1, v2, v9, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2311
    :cond_1c
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_1d

    .line 2312
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 2313
    const-string v2, "LocalVariableTypeTable"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v2, v2, 0x2

    .line 2314
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTableLength:I

    .line 2315
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 2316
    invoke-virtual {v1, v2, v9, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2318
    :cond_1d
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_1e

    .line 2319
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 2320
    invoke-virtual {v2, v4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    .line 2319
    invoke-virtual {v1, v2, v8}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->putAnnotations(ILnet/bytebuddy/jar/asm/ByteVector;)V

    .line 2322
    :cond_1e
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_1f

    .line 2323
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 2324
    invoke-virtual {v2, v5}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    .line 2323
    invoke-virtual {v1, v2, v8}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->putAnnotations(ILnet/bytebuddy/jar/asm/ByteVector;)V

    .line 2326
    :cond_1f
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstCodeAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v1, :cond_20

    .line 2327
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v4, v4, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iget v5, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    iget v6, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    move-object/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lnet/bytebuddy/jar/asm/Attribute;->putAttributes(Lnet/bytebuddy/jar/asm/SymbolTable;[BIIILnet/bytebuddy/jar/asm/ByteVector;)V

    .line 2331
    .end local v10    # "size":I
    .end local v14    # "codeAttributeCount":I
    :cond_20
    iget v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    if-lez v1, :cond_21

    .line 2332
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 2333
    const-string v2, "Exceptions"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    .line 2334
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->numberOfExceptions:I

    .line 2335
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2336
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->exceptionIndexTable:[I

    array-length v2, v1

    move v3, v9

    :goto_6
    if-ge v3, v2, :cond_21

    aget v4, v1, v3

    .line 2337
    .local v4, "exceptionIndex":I
    invoke-virtual {v8, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2336
    .end local v4    # "exceptionIndex":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 2340
    :cond_21
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    iget v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->signatureIndex:I

    invoke-static {v1, v2, v3, v8}, Lnet/bytebuddy/jar/asm/Attribute;->putAttributes(Lnet/bytebuddy/jar/asm/SymbolTable;IILnet/bytebuddy/jar/asm/ByteVector;)V

    .line 2341
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v4, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v5, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->putAnnotations(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/AnnotationWriter;Lnet/bytebuddy/jar/asm/ByteVector;)V

    .line 2348
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_23

    .line 2349
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 2350
    const-string v2, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 2352
    iget v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->visibleAnnotableParameterCount:I

    if-nez v3, :cond_22

    .line 2353
    array-length v3, v2

    goto :goto_7

    .line 2354
    :cond_22
    nop

    .line 2349
    :goto_7
    invoke-static {v1, v2, v3, v8}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->putParameterAnnotations(I[Lnet/bytebuddy/jar/asm/AnnotationWriter;ILnet/bytebuddy/jar/asm/ByteVector;)V

    .line 2357
    :cond_23
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-eqz v1, :cond_25

    .line 2358
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 2359
    const-string v2, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 2361
    iget v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->invisibleAnnotableParameterCount:I

    if-nez v3, :cond_24

    .line 2362
    array-length v3, v2

    goto :goto_8

    .line 2363
    :cond_24
    nop

    .line 2358
    :goto_8
    invoke-static {v1, v2, v3, v8}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->putParameterAnnotations(I[Lnet/bytebuddy/jar/asm/AnnotationWriter;ILnet/bytebuddy/jar/asm/ByteVector;)V

    .line 2366
    :cond_25
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->defaultValue:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_26

    .line 2367
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 2368
    const-string v2, "AnnotationDefault"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->defaultValue:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 2369
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->defaultValue:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->defaultValue:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 2370
    invoke-virtual {v1, v2, v9, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2372
    :cond_26
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v1, :cond_27

    .line 2373
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 2374
    const-string v2, "MethodParameters"

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 2375
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->parametersCount:I

    .line 2376
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v3, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v3, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 2377
    invoke-virtual {v1, v2, v9, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 2379
    :cond_27
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    if-eqz v1, :cond_28

    .line 2380
    iget-object v2, v0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, v2, v8}, Lnet/bytebuddy/jar/asm/Attribute;->putAttributes(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/ByteVector;)V

    .line 2382
    :cond_28
    return-void
.end method

.method setMethodAttributesSource(II)V
    .locals 1
    .param p1, "methodInfoOffset"    # I
    .param p2, "methodInfoLength"    # I

    .line 2065
    add-int/lit8 v0, p1, 0x6

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->sourceOffset:I

    .line 2066
    add-int/lit8 v0, p2, -0x6

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->sourceLength:I

    .line 2067
    return-void
.end method

.method visitAbstractType(II)V
    .locals 1
    .param p1, "frameIndex"    # I
    .param p2, "abstractType"    # I

    .line 1837
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    aput p2, v0, p1

    .line 1838
    return-void
.end method

.method public visitAnnotableParameterCount(IZ)V
    .locals 0
    .param p1, "parameterCount"    # I
    .param p2, "visible"    # Z

    .line 682
    if-eqz p2, :cond_0

    .line 683
    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->visibleAnnotableParameterCount:I

    goto :goto_0

    .line 685
    :cond_0
    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->invisibleAnnotableParameterCount:I

    .line 687
    :goto_0
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 657
    if-eqz p2, :cond_0

    .line 658
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 659
    invoke-static {v0, p1, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->create(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 658
    return-object v0

    .line 661
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 662
    invoke-static {v0, p1, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->create(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 661
    return-object v0
.end method

.method public visitAnnotationDefault()Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 5

    .line 651
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->defaultValue:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 652
    new-instance v0, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->defaultValue:Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;ZLnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    return-object v0
.end method

.method public visitAttribute(Lnet/bytebuddy/jar/asm/Attribute;)V
    .locals 1
    .param p1, "attribute"    # Lnet/bytebuddy/jar/asm/Attribute;

    .line 716
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Attribute;->isCodeAttribute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstCodeAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    iput-object v0, p1, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 718
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstCodeAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    goto :goto_0

    .line 720
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    iput-object v0, p1, Lnet/bytebuddy/jar/asm/Attribute;->nextAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 721
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstAttribute:Lnet/bytebuddy/jar/asm/Attribute;

    .line 723
    :goto_0
    return-void
.end method

.method public visitCode()V
    .locals 0

    .line 728
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 1769
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;

    .line 992
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    .line 994
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p2, p3, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    .line 995
    .local v0, "fieldrefSymbol":Lnet/bytebuddy/jar/asm/Symbol;
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v1, p1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 997
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v1, :cond_b

    .line 998
    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq v2, v3, :cond_a

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    goto :goto_3

    .line 1002
    :cond_0
    invoke-virtual {p4, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1003
    .local v1, "firstDescChar":C
    const/4 v2, 0x1

    const/4 v3, -0x2

    const/16 v5, 0x4a

    const/16 v6, 0x44

    packed-switch p1, :pswitch_data_0

    .line 1015
    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    if-eq v1, v6, :cond_7

    if-ne v1, v5, :cond_8

    goto :goto_1

    .line 1011
    :pswitch_0
    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    if-eq v1, v6, :cond_1

    if-ne v1, v5, :cond_2

    :cond_1
    move v4, v2

    :cond_2
    add-int/2addr v3, v4

    .line 1012
    .local v3, "size":I
    goto :goto_2

    .line 1008
    .end local v3    # "size":I
    :pswitch_1
    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    if-eq v1, v6, :cond_4

    if-ne v1, v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    :cond_4
    :goto_0
    add-int/2addr v3, v2

    .line 1009
    .restart local v3    # "size":I
    goto :goto_2

    .line 1005
    .end local v3    # "size":I
    :pswitch_2
    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    if-eq v1, v6, :cond_5

    if-ne v1, v5, :cond_6

    :cond_5
    const/4 v2, 0x2

    :cond_6
    add-int/2addr v3, v2

    .line 1006
    .restart local v3    # "size":I
    goto :goto_2

    .line 1015
    .end local v3    # "size":I
    :cond_7
    :goto_1
    const/4 v3, -0x3

    :cond_8
    add-int/2addr v3, v2

    .line 1018
    .restart local v3    # "size":I
    :goto_2
    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v3, v2, :cond_9

    .line 1019
    iput v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    .line 1021
    :cond_9
    iput v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_4

    .line 999
    .end local v1    # "firstDescChar":C
    .end local v3    # "size":I
    :cond_a
    :goto_3
    iget-object v1, v1, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, p1, v4, v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    .line 1024
    :cond_b
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "numLocal"    # I
    .param p3, "local"    # [Ljava/lang/Object;
    .param p4, "numStack"    # I
    .param p5, "stack"    # [Ljava/lang/Object;

    .line 737
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 738
    return-void

    .line 741
    :cond_0
    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 742
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    if-nez v0, :cond_1

    .line 746
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    new-instance v2, Lnet/bytebuddy/jar/asm/CurrentFrame;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v2, v3}, Lnet/bytebuddy/jar/asm/CurrentFrame;-><init>(Lnet/bytebuddy/jar/asm/Label;)V

    iput-object v2, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    .line 747
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4, p2}, Lnet/bytebuddy/jar/asm/Frame;->setInputFrameFromDescriptor(Lnet/bytebuddy/jar/asm/SymbolTable;ILjava/lang/String;I)V

    .line 749
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    invoke-virtual {v0, p0}, Lnet/bytebuddy/jar/asm/Frame;->accept(Lnet/bytebuddy/jar/asm/MethodWriter;)V

    goto/16 :goto_8

    .line 751
    :cond_1
    if-ne p1, v2, :cond_2

    .line 752
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lnet/bytebuddy/jar/asm/Frame;->setInputFrameFromApiFormat(Lnet/bytebuddy/jar/asm/SymbolTable;I[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 758
    :cond_2
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    invoke-virtual {v0, p0}, Lnet/bytebuddy/jar/asm/Frame;->accept(Lnet/bytebuddy/jar/asm/MethodWriter;)V

    goto/16 :goto_8

    .line 760
    :cond_3
    if-ne p1, v2, :cond_7

    .line 761
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->previousFrame:[I

    if-nez v0, :cond_4

    .line 762
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    shr-int/2addr v0, v1

    .line 763
    .local v0, "argumentsSize":I
    new-instance v2, Lnet/bytebuddy/jar/asm/Frame;

    new-instance v3, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v3}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    invoke-direct {v2, v3}, Lnet/bytebuddy/jar/asm/Frame;-><init>(Lnet/bytebuddy/jar/asm/Label;)V

    .line 764
    .local v2, "implicitFirstFrame":Lnet/bytebuddy/jar/asm/Frame;
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->accessFlags:I

    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v0}, Lnet/bytebuddy/jar/asm/Frame;->setInputFrameFromDescriptor(Lnet/bytebuddy/jar/asm/SymbolTable;ILjava/lang/String;I)V

    .line 766
    invoke-virtual {v2, p0}, Lnet/bytebuddy/jar/asm/Frame;->accept(Lnet/bytebuddy/jar/asm/MethodWriter;)V

    .line 768
    .end local v0    # "argumentsSize":I
    .end local v2    # "implicitFirstFrame":Lnet/bytebuddy/jar/asm/Frame;
    :cond_4
    iput p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentLocals:I

    .line 769
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    invoke-virtual {p0, v0, p2, p4}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitFrameStart(III)I

    move-result v0

    .line 770
    .local v0, "frameIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_5

    .line 771
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "frameIndex":I
    .local v4, "frameIndex":I
    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    aget-object v6, p3, v2

    invoke-static {v5, v6}, Lnet/bytebuddy/jar/asm/Frame;->getAbstractTypeFromApiFormat(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/Object;)I

    move-result v5

    aput v5, v3, v0

    .line 770
    add-int/lit8 v2, v2, 0x1

    move v0, v4

    goto :goto_0

    .line 773
    .end local v2    # "i":I
    .end local v4    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, p4, :cond_6

    .line 774
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "frameIndex":I
    .restart local v4    # "frameIndex":I
    iget-object v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    aget-object v6, p5, v2

    invoke-static {v5, v6}, Lnet/bytebuddy/jar/asm/Frame;->getAbstractTypeFromApiFormat(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/Object;)I

    move-result v5

    aput v5, v3, v0

    .line 773
    add-int/lit8 v2, v2, 0x1

    move v0, v4

    goto :goto_1

    .line 776
    .end local v2    # "i":I
    .end local v4    # "frameIndex":I
    .restart local v0    # "frameIndex":I
    :cond_6
    invoke-virtual {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitFrameEnd()V

    .line 777
    .end local v0    # "frameIndex":I
    goto/16 :goto_8

    .line 778
    :cond_7
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->getMajorVersion()I

    move-result v0

    const/16 v2, 0x32

    if-lt v0, v2, :cond_14

    .line 782
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez v0, :cond_8

    .line 783
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 784
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .local v0, "offsetDelta":I
    goto :goto_2

    .line 786
    .end local v0    # "offsetDelta":I
    :cond_8
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->previousFrameOffset:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    .line 787
    .restart local v0    # "offsetDelta":I
    if-gez v0, :cond_a

    .line 788
    if-ne p1, v3, :cond_9

    .line 789
    return-void

    .line 791
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 796
    :cond_a
    :goto_2
    const/16 v2, 0x40

    packed-switch p1, :pswitch_data_0

    .line 837
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 827
    :pswitch_0
    if-ge v0, v2, :cond_b

    .line 828
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit8 v3, v0, 0x40

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_3

    .line 830
    :cond_b
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 831
    const/16 v3, 0xf7

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    .line 832
    invoke-virtual {v2, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 834
    :goto_3
    const/4 v2, 0x0

    aget-object v2, p5, v2

    invoke-direct {p0, v2}, Lnet/bytebuddy/jar/asm/MethodWriter;->putFrameType(Ljava/lang/Object;)V

    .line 835
    goto/16 :goto_7

    .line 820
    :pswitch_1
    if-ge v0, v2, :cond_c

    .line 821
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v2, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_7

    .line 823
    :cond_c
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v3, 0xfb

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 825
    goto :goto_7

    .line 816
    :pswitch_2
    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentLocals:I

    sub-int/2addr v2, p2

    iput v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentLocals:I

    .line 817
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    rsub-int v3, p2, 0xfb

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 818
    goto :goto_7

    .line 809
    :pswitch_3
    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentLocals:I

    add-int/2addr v2, p2

    iput v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentLocals:I

    .line 810
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    add-int/lit16 v3, p2, 0xfb

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 811
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, p2, :cond_d

    .line 812
    aget-object v3, p3, v2

    invoke-direct {p0, v3}, Lnet/bytebuddy/jar/asm/MethodWriter;->putFrameType(Ljava/lang/Object;)V

    .line 811
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 814
    .end local v2    # "i":I
    :cond_d
    goto :goto_7

    .line 798
    :pswitch_4
    iput p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentLocals:I

    .line 799
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 800
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    if-ge v2, p2, :cond_e

    .line 801
    aget-object v3, p3, v2

    invoke-direct {p0, v3}, Lnet/bytebuddy/jar/asm/MethodWriter;->putFrameType(Ljava/lang/Object;)V

    .line 800
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 803
    .end local v2    # "i":I
    :cond_e
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v2, p4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 804
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    if-ge v2, p4, :cond_f

    .line 805
    aget-object v3, p5, v2

    invoke-direct {p0, v3}, Lnet/bytebuddy/jar/asm/MethodWriter;->putFrameType(Ljava/lang/Object;)V

    .line 804
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 807
    .end local v2    # "i":I
    :cond_f
    nop

    .line 840
    :goto_7
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iput v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->previousFrameOffset:I

    .line 841
    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    .line 844
    .end local v0    # "offsetDelta":I
    :goto_8
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    if-ne v0, v1, :cond_13

    .line 845
    iput p4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    .line 846
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, p4, :cond_12

    .line 847
    aget-object v1, p5, v0

    sget-object v2, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v1, v2, :cond_10

    aget-object v1, p5, v0

    sget-object v2, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v1, v2, :cond_11

    .line 848
    :cond_10
    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    .line 846
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 851
    .end local v0    # "i":I
    :cond_12
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v0, v1, :cond_13

    .line 852
    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    .line 856
    :cond_13
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    .line 857
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentLocals:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    .line 858
    return-void

    .line 779
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Class versions V1_5 or less must use F_NEW frames."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method visitFrameEnd()V
    .locals 1

    .line 1846
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->previousFrame:[I

    if-eqz v0, :cond_1

    .line 1847
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez v0, :cond_0

    .line 1848
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableEntries:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1850
    :cond_0
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->putFrame()V

    .line 1851
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    .line 1853
    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->previousFrame:[I

    .line 1854
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    .line 1855
    return-void
.end method

.method visitFrameStart(III)I
    .locals 3
    .param p1, "offset"    # I
    .param p2, "numLocal"    # I
    .param p3, "numStack"    # I

    .line 1820
    add-int/lit8 v0, p2, 0x3

    add-int/2addr v0, p3

    .line 1821
    .local v0, "frameLength":I
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-ge v1, v0, :cond_1

    .line 1822
    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    .line 1824
    :cond_1
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentFrame:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 1825
    const/4 v2, 0x1

    aput p2, v1, v2

    .line 1826
    const/4 v2, 0x2

    aput p3, v1, v2

    .line 1827
    const/4 v1, 0x3

    return v1
.end method

.method public visitIincInsn(II)V
    .locals 4
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .line 1311
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1313
    const/16 v0, 0xff

    const/16 v1, 0x84

    if-gt p1, v0, :cond_1

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_1

    const/16 v0, -0x80

    if-ge p2, v0, :cond_0

    goto :goto_0

    .line 1316
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->put11(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_1

    .line 1314
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v2, 0xc4

    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1319
    :goto_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_3

    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 1321
    :cond_2
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Lnet/bytebuddy/jar/asm/Frame;->execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    .line 1323
    :cond_3
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    if-eqz v0, :cond_4

    .line 1324
    add-int/lit8 v0, p1, 0x1

    .line 1325
    .local v0, "currentMaxLocals":I
    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    if-le v0, v1, :cond_4

    .line 1326
    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    .line 1329
    .end local v0    # "currentMaxLocals":I
    :cond_4
    return-void
.end method

.method public visitInsn(I)V
    .locals 3
    .param p1, "opcode"    # I

    .line 862
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    .line 864
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 866
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_5

    .line 867
    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 870
    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    sget-object v1, Lnet/bytebuddy/jar/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    .line 871
    .local v0, "size":I
    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v0, v1, :cond_1

    .line 872
    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    .line 874
    :cond_1
    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_1

    .line 868
    .end local v0    # "size":I
    :cond_2
    :goto_0
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lnet/bytebuddy/jar/asm/Frame;->execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    .line 876
    :goto_1
    const/16 v0, 0xac

    if-lt p1, v0, :cond_3

    const/16 v0, 0xb1

    if-le p1, v0, :cond_4

    :cond_3
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_5

    .line 877
    :cond_4
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->endCurrentBasicBlockWithNoSuccessor()V

    .line 880
    :cond_5
    return-void
.end method

.method public visitInsnAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 3
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lnet/bytebuddy/jar/asm/TypePath;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 1407
    const v0, -0xffff01

    if-eqz p4, :cond_0

    .line 1408
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    and-int/2addr v0, p1

    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 1409
    invoke-static {v1, v0, p2, p3, v2}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->create(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 1408
    return-object v0

    .line 1416
    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    and-int/2addr v0, p1

    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 1417
    invoke-static {v1, v0, p2, p3, v2}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->create(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 1416
    return-object v0
.end method

.method public visitIntInsn(II)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .line 884
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    .line 886
    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    .line 887
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_0

    .line 889
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->put11(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 892
    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_4

    .line 893
    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 895
    :cond_1
    const/16 v0, 0xbc

    if-eq p1, v0, :cond_4

    .line 897
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    add-int/lit8 v0, v0, 0x1

    .line 898
    .local v0, "size":I
    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v0, v1, :cond_2

    .line 899
    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    .line 901
    :cond_2
    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_2

    .line 894
    .end local v0    # "size":I
    :cond_3
    :goto_1
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lnet/bytebuddy/jar/asm/Frame;->execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    .line 904
    :cond_4
    :goto_2
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "bootstrapMethodHandle"    # Lnet/bytebuddy/jar/asm/Handle;
    .param p4, "bootstrapMethodArguments"    # [Ljava/lang/Object;

    .line 1069
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1071
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 1072
    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantInvokeDynamic(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    .line 1074
    .local v0, "invokeDynamicSymbol":Lnet/bytebuddy/jar/asm/Symbol;
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    const/16 v3, 0xba

    invoke-virtual {v1, v3, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1075
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1077
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v1, :cond_3

    .line 1078
    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    goto :goto_0

    .line 1081
    :cond_0
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Symbol;->getArgumentsAndReturnSizes()I

    move-result v1

    .line 1082
    .local v1, "argumentsAndReturnSize":I
    and-int/lit8 v2, v1, 0x3

    shr-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .line 1083
    .local v2, "stackSizeDelta":I
    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    add-int/2addr v3, v2

    .line 1084
    .local v3, "size":I
    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v3, v4, :cond_1

    .line 1085
    iput v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    .line 1087
    :cond_1
    iput v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_1

    .line 1079
    .end local v1    # "argumentsAndReturnSize":I
    .end local v2    # "stackSizeDelta":I
    .end local v3    # "size":I
    :cond_2
    :goto_0
    iget-object v1, v1, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, v3, v2, v0, v4}, Lnet/bytebuddy/jar/asm/Frame;->execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    .line 1090
    :cond_3
    :goto_1
    return-void
.end method

.method public visitJumpInsn(ILnet/bytebuddy/jar/asm/Label;)V
    .locals 12
    .param p1, "opcode"    # I
    .param p2, "label"    # Lnet/bytebuddy/jar/asm/Label;

    .line 1094
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1098
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    add-int/lit8 v1, p1, -0x21

    goto :goto_0

    :cond_0
    move v1, p1

    .line 1099
    .local v1, "baseOpcode":I
    :goto_0
    const/4 v2, 0x0

    .line 1100
    .local v2, "nextInsnIsJumpTarget":Z
    iget-short v3, p2, Lnet/bytebuddy/jar/asm/Label;->flags:S

    const/4 v4, 0x4

    and-int/2addr v3, v4

    const/16 v5, 0xa8

    const/16 v6, 0xa7

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_4

    iget v3, p2, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    iget-object v9, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v9, v9, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    sub-int/2addr v3, v9

    const/16 v9, -0x8000

    if-ge v3, v9, :cond_4

    .line 1106
    if-ne v1, v6, :cond_1

    .line 1107
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v3, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_2

    .line 1108
    :cond_1
    if-ne v1, v5, :cond_2

    .line 1109
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v3, 0xc9

    invoke-virtual {v0, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_2

    .line 1114
    :cond_2
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v3, 0xc6

    if-lt v1, v3, :cond_3

    xor-int/lit8 v3, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v1, 0x1

    xor-int/2addr v3, v8

    sub-int/2addr v3, v8

    :goto_1
    invoke-virtual {v0, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1115
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1122
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v3, 0xdc

    invoke-virtual {v0, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1123
    iput-boolean v8, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->hasAsmInstructions:Z

    .line 1125
    const/4 v2, 0x1

    .line 1127
    :goto_2
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    sub-int/2addr v3, v8

    invoke-virtual {p2, v0, v3, v8}, Lnet/bytebuddy/jar/asm/Label;->put(Lnet/bytebuddy/jar/asm/ByteVector;IZ)V

    goto :goto_3

    .line 1128
    :cond_4
    if-eq v1, p1, :cond_5

    .line 1131
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1132
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    sub-int/2addr v3, v8

    invoke-virtual {p2, v0, v3, v8}, Lnet/bytebuddy/jar/asm/Label;->put(Lnet/bytebuddy/jar/asm/ByteVector;IZ)V

    goto :goto_3

    .line 1137
    :cond_5
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1138
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    sub-int/2addr v3, v8

    invoke-virtual {p2, v0, v3, v7}, Lnet/bytebuddy/jar/asm/Label;->put(Lnet/bytebuddy/jar/asm/ByteVector;IZ)V

    .line 1142
    :goto_3
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_e

    .line 1143
    const/4 v3, 0x0

    .line 1144
    .local v3, "nextBasicBlock":Lnet/bytebuddy/jar/asm/Label;
    iget v9, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-ne v9, v4, :cond_6

    .line 1145
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    invoke-virtual {v0, v1, v7, v11, v11}, Lnet/bytebuddy/jar/asm/Frame;->execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    .line 1147
    invoke-virtual {p2}, Lnet/bytebuddy/jar/asm/Label;->getCanonicalInstance()Lnet/bytebuddy/jar/asm/Label;

    move-result-object v0

    iget-short v4, v0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    or-int/2addr v4, v10

    int-to-short v4, v4

    iput-short v4, v0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    .line 1149
    invoke-direct {p0, v7, p2}, Lnet/bytebuddy/jar/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V

    .line 1150
    if-eq v1, v6, :cond_b

    .line 1154
    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    move-object v3, v0

    goto :goto_4

    .line 1156
    :cond_6
    const/4 v4, 0x3

    if-ne v9, v4, :cond_7

    .line 1157
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    invoke-virtual {v0, v1, v7, v11, v11}, Lnet/bytebuddy/jar/asm/Frame;->execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    goto :goto_4

    .line 1158
    :cond_7
    if-ne v9, v10, :cond_8

    .line 1160
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    sget-object v4, Lnet/bytebuddy/jar/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    aget v4, v4, v1

    add-int/2addr v0, v4

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_4

    .line 1162
    :cond_8
    if-ne v1, v5, :cond_a

    .line 1164
    iget-short v0, p2, Lnet/bytebuddy/jar/asm/Label;->flags:S

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_9

    .line 1165
    iget-short v0, p2, Lnet/bytebuddy/jar/asm/Label;->flags:S

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    iput-short v0, p2, Lnet/bytebuddy/jar/asm/Label;->flags:S

    .line 1166
    iput-boolean v8, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->hasSubroutines:Z

    .line 1168
    :cond_9
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iget-short v4, v0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    or-int/lit8 v4, v4, 0x10

    int-to-short v4, v4

    iput-short v4, v0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    .line 1175
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    add-int/2addr v0, v8

    invoke-direct {p0, v0, p2}, Lnet/bytebuddy/jar/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V

    .line 1177
    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    move-object v3, v0

    goto :goto_4

    .line 1180
    :cond_a
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    sget-object v4, Lnet/bytebuddy/jar/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    aget v4, v4, v1

    add-int/2addr v0, v4

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    .line 1181
    invoke-direct {p0, v0, p2}, Lnet/bytebuddy/jar/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V

    .line 1186
    :cond_b
    :goto_4
    if-eqz v3, :cond_d

    .line 1187
    if-eqz v2, :cond_c

    .line 1188
    iget-short v0, v3, Lnet/bytebuddy/jar/asm/Label;->flags:S

    or-int/2addr v0, v10

    int-to-short v0, v0

    iput-short v0, v3, Lnet/bytebuddy/jar/asm/Label;->flags:S

    .line 1190
    :cond_c
    invoke-virtual {p0, v3}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    .line 1192
    :cond_d
    if-ne v1, v6, :cond_e

    .line 1193
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->endCurrentBasicBlockWithNoSuccessor()V

    .line 1196
    .end local v3    # "nextBasicBlock":Lnet/bytebuddy/jar/asm/Label;
    :cond_e
    return-void
.end method

.method public visitLabel(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 5
    .param p1, "label"    # Lnet/bytebuddy/jar/asm/Label;

    .line 1201
    iget-boolean v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->hasAsmInstructions:Z

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    invoke-virtual {p1, v1, v2}, Lnet/bytebuddy/jar/asm/Label;->resolve([BI)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->hasAsmInstructions:Z

    .line 1204
    iget-short v0, p1, Lnet/bytebuddy/jar/asm/Label;->flags:S

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1205
    return-void

    .line 1207
    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v2, :cond_5

    .line 1208
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_2

    .line 1209
    iget v0, p1, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iget v1, v1, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    if-ne v0, v1, :cond_1

    .line 1214
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iget-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    iget-short v2, p1, Lnet/bytebuddy/jar/asm/Label;->flags:S

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    .line 1218
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iput-object v0, p1, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    .line 1221
    return-void

    .line 1224
    :cond_1
    invoke-direct {p0, v3, p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V

    .line 1227
    :cond_2
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_4

    .line 1228
    iget v0, p1, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iget v1, v1, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    if-ne v0, v1, :cond_3

    .line 1230
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iget-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    iget-short v2, p1, Lnet/bytebuddy/jar/asm/Label;->flags:S

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->flags:S

    .line 1232
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iput-object v0, p1, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    .line 1233
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1234
    return-void

    .line 1236
    :cond_3
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iput-object p1, v0, Lnet/bytebuddy/jar/asm/Label;->nextBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1238
    :cond_4
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1240
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1242
    new-instance v0, Lnet/bytebuddy/jar/asm/Frame;

    invoke-direct {v0, p1}, Lnet/bytebuddy/jar/asm/Frame;-><init>(Lnet/bytebuddy/jar/asm/Label;)V

    iput-object v0, p1, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    goto :goto_0

    .line 1243
    :cond_5
    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    .line 1244
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-nez v0, :cond_6

    .line 1247
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_0

    .line 1250
    :cond_6
    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iput-object p1, v0, Lnet/bytebuddy/jar/asm/Frame;->owner:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_0

    .line 1252
    :cond_7
    if-ne v0, v1, :cond_a

    .line 1253
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_8

    .line 1255
    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    int-to-short v1, v1

    iput-short v1, v0, Lnet/bytebuddy/jar/asm/Label;->outputStackMax:S

    .line 1256
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILnet/bytebuddy/jar/asm/Label;)V

    .line 1259
    :cond_8
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1260
    iput v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    .line 1261
    iput v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    .line 1263
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v0, :cond_9

    .line 1264
    iput-object p1, v0, Lnet/bytebuddy/jar/asm/Label;->nextBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1266
    :cond_9
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    goto :goto_0

    .line 1267
    :cond_a
    if-ne v0, v4, :cond_b

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-nez v0, :cond_b

    .line 1271
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    .line 1273
    :cond_b
    :goto_0
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 9
    .param p1, "value"    # Ljava/lang/Object;

    .line 1277
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1279
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstant(Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    .line 1280
    .local v0, "constantSymbol":Lnet/bytebuddy/jar/asm/Symbol;
    iget v1, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    .line 1282
    .local v1, "constantIndex":I
    iget v2, v0, Lnet/bytebuddy/jar/asm/Symbol;->tag:I

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_1

    iget v2, v0, Lnet/bytebuddy/jar/asm/Symbol;->tag:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    iget v2, v0, Lnet/bytebuddy/jar/asm/Symbol;->tag:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    .line 1286
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v3, v2

    .local v3, "firstDescriptorChar":C
    const/16 v6, 0x4a

    if-eq v2, v6, :cond_1

    const/16 v2, 0x44

    if-ne v3, v2, :cond_0

    goto :goto_0

    .end local v3    # "firstDescriptorChar":C
    :cond_0
    move v2, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    .line 1288
    .local v2, "isLongOrDouble":Z
    :goto_1
    const/16 v3, 0x12

    if-eqz v2, :cond_2

    .line 1289
    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v7, 0x14

    invoke-virtual {v6, v7, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_2

    .line 1290
    :cond_2
    const/16 v6, 0x100

    if-lt v1, v6, :cond_3

    .line 1291
    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v7, 0x13

    invoke-virtual {v6, v7, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_2

    .line 1293
    :cond_3
    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v6, v3, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->put11(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1296
    :goto_2
    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v6, :cond_8

    .line 1297
    iget v7, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    goto :goto_3

    .line 1300
    :cond_4
    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    if-eqz v2, :cond_5

    const/4 v4, 0x2

    :cond_5
    add-int/2addr v3, v4

    .line 1301
    .local v3, "size":I
    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v3, v4, :cond_6

    .line 1302
    iput v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    .line 1304
    :cond_6
    iput v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_4

    .line 1298
    .end local v3    # "size":I
    :cond_7
    :goto_3
    iget-object v4, v6, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v6, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v4, v3, v5, v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    .line 1307
    :cond_8
    :goto_4
    return-void
.end method

.method public visitLineNumber(ILnet/bytebuddy/jar/asm/Label;)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "start"    # Lnet/bytebuddy/jar/asm/Label;

    .line 1535
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez v0, :cond_0

    .line 1536
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1538
    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTableLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTableLength:I

    .line 1539
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, p2, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1540
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lineNumberTable:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1541
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lnet/bytebuddy/jar/asm/Label;
    .param p5, "end"    # Lnet/bytebuddy/jar/asm/Label;
    .param p6, "index"    # I

    .line 1462
    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 1463
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez v1, :cond_0

    .line 1464
    new-instance v1, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v1}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1466
    :cond_0
    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTableLength:I

    add-int/2addr v1, v0

    iput v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTableLength:I

    .line 1467
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTypeTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, p4, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    .line 1468
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, p5, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    iget v3, p4, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    sub-int/2addr v2, v3

    .line 1469
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 1470
    invoke-virtual {v2, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 1471
    invoke-virtual {v2, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    .line 1472
    invoke-virtual {v1, p6}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1474
    :cond_1
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez v1, :cond_2

    .line 1475
    new-instance v1, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v1}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1477
    :cond_2
    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTableLength:I

    add-int/2addr v1, v0

    iput v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTableLength:I

    .line 1478
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->localVariableTable:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, p4, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    .line 1479
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget v2, p5, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    iget v3, p4, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    sub-int/2addr v2, v3

    .line 1480
    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 1481
    invoke-virtual {v2, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 1482
    invoke-virtual {v2, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    .line 1483
    invoke-virtual {v1, p6}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1484
    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    if-eqz v1, :cond_5

    .line 1485
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1486
    .local v1, "firstDescChar":C
    const/16 v2, 0x4a

    if-eq v1, v2, :cond_3

    const/16 v2, 0x44

    if-ne v1, v2, :cond_4

    :cond_3
    const/4 v0, 0x2

    :cond_4
    add-int/2addr v0, p6

    .line 1487
    .local v0, "currentMaxLocals":I
    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    if-le v0, v2, :cond_5

    .line 1488
    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    .line 1491
    .end local v0    # "currentMaxLocals":I
    .end local v1    # "firstDescChar":C
    :cond_5
    return-void
.end method

.method public visitLocalVariableAnnotation(ILnet/bytebuddy/jar/asm/TypePath;[Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;[ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 5
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lnet/bytebuddy/jar/asm/TypePath;
    .param p3, "start"    # [Lnet/bytebuddy/jar/asm/Label;
    .param p4, "end"    # [Lnet/bytebuddy/jar/asm/Label;
    .param p5, "index"    # [I
    .param p6, "descriptor"    # Ljava/lang/String;
    .param p7, "visible"    # Z

    .line 1504
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    .line 1506
    .local v0, "typeAnnotation":Lnet/bytebuddy/jar/asm/ByteVector;
    ushr-int/lit8 v1, p1, 0x18

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1507
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 1508
    aget-object v2, p3, v1

    iget v2, v2, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    .line 1509
    invoke-virtual {v0, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    aget-object v3, p4, v1

    iget v3, v3, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    aget-object v4, p3, v1

    iget v4, v4, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    sub-int/2addr v3, v4

    .line 1510
    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    aget v3, p5, v1

    .line 1511
    invoke-virtual {v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1507
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1513
    .end local v1    # "i":I
    :cond_0
    invoke-static {p2, v0}, Lnet/bytebuddy/jar/asm/TypePath;->put(Lnet/bytebuddy/jar/asm/TypePath;Lnet/bytebuddy/jar/asm/ByteVector;)V

    .line 1515
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, p6}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1516
    const/4 v1, 0x1

    if-eqz p7, :cond_1

    .line 1517
    new-instance v2, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-direct {v2, v3, v1, v0, v4}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;ZLnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    iput-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object v2

    .line 1524
    :cond_1
    new-instance v2, Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    invoke-direct {v2, v3, v1, v0, v4}, Lnet/bytebuddy/jar/asm/AnnotationWriter;-><init>(Lnet/bytebuddy/jar/asm/SymbolTable;ZLnet/bytebuddy/jar/asm/ByteVector;Lnet/bytebuddy/jar/asm/AnnotationWriter;)V

    iput-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    return-object v2
.end method

.method public visitLookupSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[I[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 5
    .param p1, "dflt"    # Lnet/bytebuddy/jar/asm/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lnet/bytebuddy/jar/asm/Label;

    .line 1348
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1350
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    rem-int/lit8 v1, v1, 0x4

    rsub-int/lit8 v1, v1, 0x4

    rem-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1351
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lnet/bytebuddy/jar/asm/Label;->put(Lnet/bytebuddy/jar/asm/ByteVector;IZ)V

    .line 1352
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    array-length v1, p3

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1353
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 1354
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    aget v3, p2, v0

    invoke-virtual {v1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1355
    aget-object v1, p3, v0

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    invoke-virtual {v1, v3, v4, v2}, Lnet/bytebuddy/jar/asm/Label;->put(Lnet/bytebuddy/jar/asm/ByteVector;IZ)V

    .line 1353
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1358
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0, p1, p3}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V

    .line 1359
    return-void
.end method

.method public visitMaxs(II)V
    .locals 2
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .line 1545
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1546
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->computeAllFrames()V

    goto :goto_0

    .line 1547
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1548
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->computeMaxStackAndLocal()V

    goto :goto_0

    .line 1549
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1550
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    goto :goto_0

    .line 1552
    :cond_2
    iput p1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxStack:I

    .line 1553
    iput p2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    .line 1555
    :goto_0
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;
    .param p5, "isInterface"    # Z

    .line 1033
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1035
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p2, p3, p4, p5}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    .line 1036
    .local v0, "methodrefSymbol":Lnet/bytebuddy/jar/asm/Symbol;
    const/4 v1, 0x0

    const/16 v2, 0xb9

    if-ne p1, v2, :cond_0

    .line 1037
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v4, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v3, v2, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v2

    .line 1038
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Symbol;->getArgumentsAndReturnSizes()I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->put11(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_0

    .line 1040
    :cond_0
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v3, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v2, p1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1043
    :goto_0
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v2, :cond_5

    .line 1044
    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    goto :goto_2

    .line 1047
    :cond_1
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Symbol;->getArgumentsAndReturnSizes()I

    move-result v1

    .line 1048
    .local v1, "argumentsAndReturnSize":I
    and-int/lit8 v2, v1, 0x3

    shr-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    .line 1050
    .local v2, "stackSizeDelta":I
    const/16 v3, 0xb8

    if-ne p1, v3, :cond_2

    .line 1051
    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    .local v3, "size":I
    goto :goto_1

    .line 1053
    .end local v3    # "size":I
    :cond_2
    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    add-int/2addr v3, v2

    .line 1055
    .restart local v3    # "size":I
    :goto_1
    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v3, v4, :cond_3

    .line 1056
    iput v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    .line 1058
    :cond_3
    iput v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_3

    .line 1045
    .end local v1    # "argumentsAndReturnSize":I
    .end local v2    # "stackSizeDelta":I
    .end local v3    # "size":I
    :cond_4
    :goto_2
    iget-object v2, v2, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v2, p1, v1, v0, v3}, Lnet/bytebuddy/jar/asm/Frame;->execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    .line 1061
    :cond_5
    :goto_3
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 5
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "numDimensions"    # I

    .line 1388
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1390
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    .line 1391
    .local v0, "descSymbol":Lnet/bytebuddy/jar/asm/Symbol;
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    const/16 v3, 0xc5

    invoke-virtual {v1, v3, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1393
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v1, :cond_2

    .line 1394
    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 1399
    :cond_0
    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    rsub-int/lit8 v2, p2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_1

    .line 1395
    :cond_1
    :goto_0
    iget-object v1, v1, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, v3, p2, v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    .line 1402
    :cond_2
    :goto_1
    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "access"    # I

    .line 642
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez v0, :cond_0

    .line 643
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 645
    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->parametersCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->parametersCount:I

    .line 646
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->parameters:Lnet/bytebuddy/jar/asm/ByteVector;

    if-nez p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 647
    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 3
    .param p1, "parameter"    # I
    .param p2, "annotationDescriptor"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .line 692
    if-eqz p3, :cond_1

    .line 693
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-nez v0, :cond_0

    .line 694
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptor:Ljava/lang/String;

    .line 695
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 697
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    aget-object v2, v0, p1

    .line 698
    invoke-static {v1, p2, v2}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->create(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object v1

    aput-object v1, v0, p1

    .line 697
    return-object v1

    .line 701
    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    if-nez v0, :cond_2

    .line 702
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->descriptor:Ljava/lang/String;

    .line 703
    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 705
    :cond_2
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lnet/bytebuddy/jar/asm/AnnotationWriter;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    aget-object v2, v0, p1

    .line 706
    invoke-static {v1, p2, v2}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->create(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object v1

    aput-object v1, v0, p1

    .line 705
    return-object v1
.end method

.method public varargs visitTableSwitchInsn(IILnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V
    .locals 6
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lnet/bytebuddy/jar/asm/Label;
    .param p4, "labels"    # [Lnet/bytebuddy/jar/asm/Label;

    .line 1334
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1336
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v1, 0xaa

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    rem-int/lit8 v1, v1, 0x4

    rsub-int/lit8 v1, v1, 0x4

    rem-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1337
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    const/4 v2, 0x1

    invoke-virtual {p3, v0, v1, v2}, Lnet/bytebuddy/jar/asm/Label;->put(Lnet/bytebuddy/jar/asm/ByteVector;IZ)V

    .line 1338
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1339
    array-length v0, p4

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v1, p4, v3

    .line 1340
    .local v1, "label":Lnet/bytebuddy/jar/asm/Label;
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v5, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    invoke-virtual {v1, v4, v5, v2}, Lnet/bytebuddy/jar/asm/Label;->put(Lnet/bytebuddy/jar/asm/ByteVector;IZ)V

    .line 1339
    .end local v1    # "label":Lnet/bytebuddy/jar/asm/Label;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1343
    :cond_0
    invoke-direct {p0, p3, p4}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitSwitchInsn(Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;)V

    .line 1344
    return-void
.end method

.method public visitTryCatchAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lnet/bytebuddy/jar/asm/TypePath;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 1443
    if-eqz p4, :cond_0

    .line 1444
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 1445
    invoke-static {v0, p1, p2, p3, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->create(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 1444
    return-object v0

    .line 1448
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 1449
    invoke-static {v0, p1, p2, p3, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->create(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 1448
    return-object v0
.end method

.method public visitTryCatchBlock(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Ljava/lang/String;)V
    .locals 7
    .param p1, "start"    # Lnet/bytebuddy/jar/asm/Label;
    .param p2, "end"    # Lnet/bytebuddy/jar/asm/Label;
    .param p3, "handler"    # Lnet/bytebuddy/jar/asm/Label;
    .param p4, "type"    # Ljava/lang/String;

    .line 1429
    new-instance v6, Lnet/bytebuddy/jar/asm/Handler;

    .line 1431
    if-eqz p4, :cond_0

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/Handler;-><init>(Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;ILjava/lang/String;)V

    .line 1432
    .local v0, "newHandler":Lnet/bytebuddy/jar/asm/Handler;
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    if-nez v1, :cond_1

    .line 1433
    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    goto :goto_1

    .line 1435
    :cond_1
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastHandler:Lnet/bytebuddy/jar/asm/Handler;

    iput-object v0, v1, Lnet/bytebuddy/jar/asm/Handler;->nextHandler:Lnet/bytebuddy/jar/asm/Handler;

    .line 1437
    :goto_1
    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastHandler:Lnet/bytebuddy/jar/asm/Handler;

    .line 1438
    return-void
.end method

.method public visitTypeAnnotation(ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 2
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lnet/bytebuddy/jar/asm/TypePath;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 669
    if-eqz p4, :cond_0

    .line 670
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 671
    invoke-static {v0, p1, p2, p3, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->create(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 670
    return-object v0

    .line 674
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 675
    invoke-static {v0, p1, p2, p3, v1}, Lnet/bytebuddy/jar/asm/AnnotationWriter;->create(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/TypePath;Ljava/lang/String;Lnet/bytebuddy/jar/asm/AnnotationWriter;)Lnet/bytebuddy/jar/asm/AnnotationWriter;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lnet/bytebuddy/jar/asm/AnnotationWriter;

    .line 674
    return-object v0
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 4
    .param p1, "opcode"    # I
    .param p2, "type"    # Ljava/lang/String;

    .line 970
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    .line 972
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    .line 973
    .local v0, "typeSymbol":Lnet/bytebuddy/jar/asm/Symbol;
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v1, p1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 975
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v1, :cond_3

    .line 976
    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 978
    :cond_0
    const/16 v1, 0xbb

    if-ne p1, v1, :cond_3

    .line 980
    iget v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    add-int/lit8 v1, v1, 0x1

    .line 981
    .local v1, "size":I
    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v1, v2, :cond_1

    .line 982
    iput v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    .line 984
    :cond_1
    iput v1, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_1

    .line 977
    .end local v1    # "size":I
    :cond_2
    :goto_0
    iget-object v1, v1, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    iget v2, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->symbolTable:Lnet/bytebuddy/jar/asm/SymbolTable;

    invoke-virtual {v1, p1, v2, v0, v3}, Lnet/bytebuddy/jar/asm/Frame;->execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    .line 987
    :cond_3
    :goto_1
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .line 908
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->lastBytecodeOffset:I

    .line 910
    const/16 v0, 0xa9

    const/16 v1, 0x36

    const/4 v2, 0x4

    if-ge p2, v2, :cond_1

    if-eq p1, v0, :cond_1

    .line 912
    if-ge p1, v1, :cond_0

    .line 913
    add-int/lit8 v3, p1, -0x15

    shl-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1a

    add-int/2addr v3, p2

    .local v3, "optimizedOpcode":I
    goto :goto_0

    .line 915
    .end local v3    # "optimizedOpcode":I
    :cond_0
    add-int/lit8 v3, p1, -0x36

    shl-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x3b

    add-int/2addr v3, p2

    .line 917
    .restart local v3    # "optimizedOpcode":I
    :goto_0
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v4, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 918
    .end local v3    # "optimizedOpcode":I
    goto :goto_1

    :cond_1
    const/16 v3, 0x100

    if-lt p2, v3, :cond_2

    .line 919
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    const/16 v4, 0xc4

    invoke-virtual {v3, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    goto :goto_1

    .line 921
    :cond_2
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->code:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v3, p1, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->put11(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 924
    :goto_1
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    if-eqz v3, :cond_7

    .line 925
    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    if-eq v4, v2, :cond_6

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    goto :goto_2

    .line 928
    :cond_3
    if-ne p1, v0, :cond_4

    .line 930
    iget-short v0, v3, Lnet/bytebuddy/jar/asm/Label;->flags:S

    or-int/lit8 v0, v0, 0x40

    int-to-short v0, v0

    iput-short v0, v3, Lnet/bytebuddy/jar/asm/Label;->flags:S

    .line 931
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->currentBasicBlock:Lnet/bytebuddy/jar/asm/Label;

    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    int-to-short v3, v3

    iput-short v3, v0, Lnet/bytebuddy/jar/asm/Label;->outputStackSize:S

    .line 932
    invoke-direct {p0}, Lnet/bytebuddy/jar/asm/MethodWriter;->endCurrentBasicBlockWithNoSuccessor()V

    goto :goto_3

    .line 934
    :cond_4
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    sget-object v3, Lnet/bytebuddy/jar/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    aget v3, v3, p1

    add-int/2addr v0, v3

    .line 935
    .local v0, "size":I
    iget v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v0, v3, :cond_5

    .line 936
    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxRelativeStackSize:I

    .line 938
    :cond_5
    iput v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->relativeStackSize:I

    goto :goto_3

    .line 926
    .end local v0    # "size":I
    :cond_6
    :goto_2
    iget-object v0, v3, Lnet/bytebuddy/jar/asm/Label;->frame:Lnet/bytebuddy/jar/asm/Frame;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, p2, v3, v3}, Lnet/bytebuddy/jar/asm/Frame;->execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V

    .line 942
    :cond_7
    :goto_3
    iget v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->compute:I

    if-eqz v0, :cond_a

    .line 944
    const/16 v3, 0x16

    if-eq p1, v3, :cond_9

    const/16 v3, 0x18

    if-eq p1, v3, :cond_9

    const/16 v3, 0x37

    if-eq p1, v3, :cond_9

    const/16 v3, 0x39

    if-ne p1, v3, :cond_8

    goto :goto_4

    .line 950
    :cond_8
    add-int/lit8 v3, p2, 0x1

    .local v3, "currentMaxLocals":I
    goto :goto_5

    .line 948
    .end local v3    # "currentMaxLocals":I
    :cond_9
    :goto_4
    add-int/lit8 v3, p2, 0x2

    .line 952
    .restart local v3    # "currentMaxLocals":I
    :goto_5
    iget v4, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    if-le v3, v4, :cond_a

    .line 953
    iput v3, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->maxLocals:I

    .line 956
    .end local v3    # "currentMaxLocals":I
    :cond_a
    if-lt p1, v1, :cond_b

    if-ne v0, v2, :cond_b

    iget-object v0, p0, Lnet/bytebuddy/jar/asm/MethodWriter;->firstHandler:Lnet/bytebuddy/jar/asm/Handler;

    if-eqz v0, :cond_b

    .line 964
    new-instance v0, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    .line 966
    :cond_b
    return-void
.end method
