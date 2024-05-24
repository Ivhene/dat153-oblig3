.class Lorg/checkerframework/org/objectweb/asmx/MethodWriter;
.super Ljava/lang/Object;
.source "MethodWriter.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;


# static fields
.field private static final SIZE:[I


# instance fields
.field private access:I

.field private annd:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

.field private anns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

.field private attrs:Lorg/checkerframework/org/objectweb/asmx/Attribute;

.field private blockStack:Lorg/checkerframework/org/objectweb/asmx/Label;

.field private catchCount:I

.field private catchTable:Lorg/checkerframework/org/objectweb/asmx/Handler;

.field private cattrs:Lorg/checkerframework/org/objectweb/asmx/Attribute;

.field private cixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

.field classReaderLength:I

.field classReaderOffset:I

.field private code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

.field private final computeMaxs:Z

.field private currentBlock:Lorg/checkerframework/org/objectweb/asmx/Label;

.field cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

.field private cxanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

.field private desc:I

.field private descriptor:Ljava/lang/String;

.field exceptionCount:I

.field exceptions:[I

.field private ianns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

.field private ipanns:[Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

.field private ixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

.field private lastCodeOffset:I

.field private lastHandler:Lorg/checkerframework/org/objectweb/asmx/Handler;

.field private lineNumber:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

.field private lineNumberCount:I

.field private localVar:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

.field private localVarCount:I

.field private localVarType:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

.field private localVarTypeCount:I

.field private maxLocals:I

.field private maxStack:I

.field private maxStackSize:I

.field private name:I

.field next:Lorg/checkerframework/org/objectweb/asmx/MethodWriter;

.field private panns:[Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

.field private resize:Z

.field signature:Ljava/lang/String;

.field private stackSize:I

.field private xanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 304
    const/16 v0, 0xca

    new-array v0, v0, [I

    .line 305
    .local v0, "b":[I
    const-string v1, "EFFFFFFFFGGFFFGGFFFEEFGFGFEEEEEEEEEEEEEEEEEEEEDEDEDDDDDCDCDEEEEEEEEEEEEEEEEEEEEBABABBBBDCFFFGGGEDCDCDCDCDCDCDCDCDCDCEEEEDDDDDDDCDCDCEFEFDDEEFFDEDEEEBDDBBDDDDDDCCCCCCCCEFEDDDCDCDEEEEEEEEEEFEEEEEEDDEEDDEE"

    .line 309
    .local v1, "s":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 310
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x45

    aput v3, v0, v2

    .line 309
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    :cond_0
    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->SIZE:[I

    .line 526
    .end local v0    # "b":[I
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "i":I
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 3
    .param p1, "cw"    # Lorg/checkerframework/org/objectweb/asmx/ClassWriter;
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "signature"    # Ljava/lang/String;
    .param p6, "exceptions"    # [Ljava/lang/String;
    .param p7, "computeMaxs"    # Z

    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 554
    iget-object v0, p1, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->firstMethod:Lorg/checkerframework/org/objectweb/asmx/MethodWriter;

    if-nez v0, :cond_0

    .line 555
    iput-object p0, p1, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->firstMethod:Lorg/checkerframework/org/objectweb/asmx/MethodWriter;

    goto :goto_0

    .line 557
    :cond_0
    iget-object v0, p1, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->lastMethod:Lorg/checkerframework/org/objectweb/asmx/MethodWriter;

    iput-object p0, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->next:Lorg/checkerframework/org/objectweb/asmx/MethodWriter;

    .line 559
    :goto_0
    iput-object p0, p1, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->lastMethod:Lorg/checkerframework/org/objectweb/asmx/MethodWriter;

    .line 560
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    .line 561
    iput p2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->access:I

    .line 562
    invoke-virtual {p1, p3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->name:I

    .line 563
    invoke-virtual {p1, p4}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->desc:I

    .line 564
    iput-object p4, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->descriptor:Ljava/lang/String;

    .line 565
    iput-object p5, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->signature:Ljava/lang/String;

    .line 566
    if-eqz p6, :cond_1

    array-length v0, p6

    if-lez v0, :cond_1

    .line 567
    array-length v0, p6

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->exceptionCount:I

    .line 568
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->exceptions:[I

    .line 569
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->exceptionCount:I

    if-ge v0, v1, :cond_1

    .line 570
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->exceptions:[I

    aget-object v2, p6, v0

    invoke-virtual {p1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 569
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 573
    .end local v0    # "i":I
    :cond_1
    iput-boolean p7, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->computeMaxs:Z

    .line 574
    if-eqz p7, :cond_3

    .line 576
    invoke-static {p4}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    .line 577
    .local v0, "size":I
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_2

    .line 578
    add-int/lit8 v0, v0, -0x1

    .line 580
    :cond_2
    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxLocals:I

    .line 582
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-direct {v1}, Lorg/checkerframework/org/objectweb/asmx/Label;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->currentBlock:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 583
    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/checkerframework/org/objectweb/asmx/Label;->pushed:Z

    .line 584
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->currentBlock:Lorg/checkerframework/org/objectweb/asmx/Label;

    iput-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->blockStack:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 586
    .end local v0    # "size":I
    :cond_3
    return-void
.end method

.method private addSuccessor(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 2
    .param p1, "stackSize"    # I
    .param p2, "successor"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 1312
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/Edge;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/Edge;-><init>()V

    .line 1314
    .local v0, "b":Lorg/checkerframework/org/objectweb/asmx/Edge;
    iput p1, v0, Lorg/checkerframework/org/objectweb/asmx/Edge;->stackSize:I

    .line 1315
    iput-object p2, v0, Lorg/checkerframework/org/objectweb/asmx/Edge;->successor:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 1317
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->currentBlock:Lorg/checkerframework/org/objectweb/asmx/Label;

    iget-object v1, v1, Lorg/checkerframework/org/objectweb/asmx/Label;->successors:Lorg/checkerframework/org/objectweb/asmx/Edge;

    iput-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/Edge;->next:Lorg/checkerframework/org/objectweb/asmx/Edge;

    .line 1318
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->currentBlock:Lorg/checkerframework/org/objectweb/asmx/Label;

    iput-object v0, v1, Lorg/checkerframework/org/objectweb/asmx/Label;->successors:Lorg/checkerframework/org/objectweb/asmx/Edge;

    .line 1319
    return-void
.end method

.method private static getArgumentsAndReturnSizes(Ljava/lang/String;)I
    .locals 7
    .param p0, "desc"    # Ljava/lang/String;

    .line 1278
    const/4 v0, 0x1

    .line 1279
    .local v0, "n":I
    const/4 v1, 0x1

    .line 1281
    .local v1, "c":I
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "c":I
    .local v2, "c":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1282
    .local v1, "car":C
    const/16 v3, 0x29

    const/16 v4, 0x4a

    const/16 v5, 0x44

    if-ne v1, v3, :cond_3

    .line 1283
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1284
    shl-int/lit8 v3, v0, 0x2

    const/16 v6, 0x56

    if-ne v1, v6, :cond_0

    const/4 v4, 0x0

    goto :goto_2

    :cond_0
    if-eq v1, v5, :cond_2

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x2

    :goto_2
    or-int/2addr v3, v4

    return v3

    .line 1286
    :cond_3
    const/16 v3, 0x4c

    if-ne v1, v3, :cond_5

    .line 1287
    :goto_3
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "c":I
    .local v3, "c":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x3b

    if-eq v2, v4, :cond_4

    move v2, v3

    goto :goto_3

    .line 1289
    :cond_4
    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_7

    .line 1290
    .end local v3    # "c":I
    .restart local v2    # "c":I
    :cond_5
    const/16 v3, 0x5b

    if-ne v1, v3, :cond_9

    .line 1291
    :goto_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v1, v6

    if-ne v6, v3, :cond_6

    .line 1292
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1294
    :cond_6
    if-eq v1, v5, :cond_8

    if-ne v1, v4, :cond_7

    goto :goto_5

    :cond_7
    move v1, v2

    goto :goto_7

    .line 1295
    :cond_8
    :goto_5
    add-int/lit8 v0, v0, -0x1

    move v1, v2

    goto :goto_7

    .line 1297
    :cond_9
    if-eq v1, v5, :cond_b

    if-ne v1, v4, :cond_a

    goto :goto_6

    .line 1300
    :cond_a
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_7

    .line 1298
    :cond_b
    :goto_6
    add-int/lit8 v0, v0, 0x2

    move v1, v2

    .line 1302
    .end local v2    # "c":I
    .local v1, "c":I
    :goto_7
    goto :goto_0
.end method

.method static getNewOffset([I[III)I
    .locals 3
    .param p0, "indexes"    # [I
    .param p1, "sizes"    # [I
    .param p2, "begin"    # I
    .param p3, "end"    # I

    .line 2163
    sub-int v0, p3, p2

    .line 2164
    .local v0, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 2165
    aget v2, p0, v1

    if-ge p2, v2, :cond_0

    aget v2, p0, v1

    if-gt v2, p3, :cond_0

    .line 2167
    aget v2, p1, v1

    add-int/2addr v0, v2

    goto :goto_1

    .line 2168
    :cond_0
    aget v2, p0, v1

    if-ge p3, v2, :cond_1

    aget v2, p0, v1

    if-gt v2, p2, :cond_1

    .line 2170
    aget v2, p1, v1

    sub-int/2addr v0, v2

    .line 2164
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2173
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method static getNewOffset([I[ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 2
    .param p0, "indexes"    # [I
    .param p1, "sizes"    # [I
    .param p2, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 2197
    iget-boolean v0, p2, Lorg/checkerframework/org/objectweb/asmx/Label;->resized:Z

    if-nez v0, :cond_0

    .line 2198
    const/4 v0, 0x0

    iget v1, p2, Lorg/checkerframework/org/objectweb/asmx/Label;->position:I

    invoke-static {p0, p1, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->getNewOffset([I[III)I

    move-result v0

    iput v0, p2, Lorg/checkerframework/org/objectweb/asmx/Label;->position:I

    .line 2199
    const/4 v0, 0x1

    iput-boolean v0, p2, Lorg/checkerframework/org/objectweb/asmx/Label;->resized:Z

    .line 2201
    :cond_0
    return-void
.end method

.method static readInt([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "index"    # I

    .line 2120
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static readShort([BI)S
    .locals 2
    .param p0, "b"    # [B
    .param p1, "index"    # I

    .line 2109
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method static readUnsignedShort([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "index"    # I

    .line 2098
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private resizeInstructions([I[II)[I
    .locals 23
    .param p1, "indexes"    # [I
    .param p2, "sizes"    # [I
    .param p3, "len"    # I

    .line 1691
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v4, v4, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    .line 1720
    .local v4, "b":[B
    new-array v5, v3, [I

    .line 1721
    .local v5, "allIndexes":[I
    new-array v6, v3, [I

    .line 1725
    .local v6, "allSizes":[I
    const/4 v7, 0x0

    invoke-static {v1, v7, v5, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1726
    invoke-static {v2, v7, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1727
    iget-object v8, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v8, v8, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    new-array v8, v8, [Z

    .line 1730
    .local v8, "resize":[Z
    const/4 v9, 0x3

    .line 1732
    .local v9, "state":I
    :goto_0
    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 1733
    const/4 v9, 0x2

    .line 1735
    :cond_0
    const/4 v11, 0x0

    .line 1736
    .local v11, "u":I
    :goto_1
    array-length v12, v4

    const/16 v10, 0x84

    const/16 v14, 0x8

    const/4 v15, 0x4

    const/4 v13, 0x1

    if-ge v11, v12, :cond_d

    .line 1737
    aget-byte v12, v4, v11

    and-int/lit16 v12, v12, 0xff

    .line 1738
    .local v12, "opcode":I
    const/16 v18, 0x0

    .line 1740
    .local v18, "insert":I
    sget-object v19, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->TYPE:[B

    aget-byte v19, v19, v12

    packed-switch v19, :pswitch_data_0

    .line 1845
    :pswitch_0
    add-int/lit8 v11, v11, 0x4

    goto/16 :goto_8

    .line 1821
    :pswitch_1
    add-int/lit8 v14, v11, 0x1

    aget-byte v14, v4, v14

    and-int/lit16 v12, v14, 0xff

    .line 1822
    if-ne v12, v10, :cond_1

    .line 1823
    add-int/lit8 v11, v11, 0x6

    goto/16 :goto_8

    .line 1825
    :cond_1
    add-int/lit8 v11, v11, 0x4

    .line 1827
    goto/16 :goto_8

    .line 1807
    :pswitch_2
    if-ne v9, v13, :cond_2

    .line 1809
    invoke-static {v5, v6, v7, v11}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->getNewOffset([I[III)I

    move-result v10

    .line 1810
    .local v10, "newOffset":I
    and-int/lit8 v15, v10, 0x3

    neg-int v15, v15

    move/from16 v18, v15

    .end local v18    # "insert":I
    .local v15, "insert":I
    goto :goto_2

    .line 1811
    .end local v10    # "newOffset":I
    .end local v15    # "insert":I
    .restart local v18    # "insert":I
    :cond_2
    aget-boolean v10, v8, v11

    if-nez v10, :cond_3

    .line 1813
    and-int/lit8 v18, v11, 0x3

    .line 1814
    aput-boolean v13, v8, v11

    .line 1817
    :cond_3
    :goto_2
    add-int/lit8 v10, v11, 0x4

    and-int/lit8 v15, v11, 0x3

    sub-int/2addr v10, v15

    .line 1818
    .end local v11    # "u":I
    .local v10, "u":I
    add-int/lit8 v11, v10, 0x4

    invoke-static {v4, v11}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->readInt([BI)I

    move-result v11

    mul-int/2addr v11, v14

    add-int/2addr v11, v14

    add-int/2addr v10, v11

    .line 1819
    move v11, v10

    goto/16 :goto_8

    .line 1785
    .end local v10    # "u":I
    .restart local v11    # "u":I
    :pswitch_3
    if-ne v9, v13, :cond_4

    .line 1793
    invoke-static {v5, v6, v7, v11}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->getNewOffset([I[III)I

    move-result v10

    .line 1794
    .local v10, "newOffset":I
    and-int/lit8 v14, v10, 0x3

    neg-int v14, v14

    move/from16 v18, v14

    .end local v18    # "insert":I
    .local v14, "insert":I
    goto :goto_3

    .line 1795
    .end local v10    # "newOffset":I
    .end local v14    # "insert":I
    .restart local v18    # "insert":I
    :cond_4
    aget-boolean v10, v8, v11

    if-nez v10, :cond_5

    .line 1799
    and-int/lit8 v18, v11, 0x3

    .line 1800
    aput-boolean v13, v8, v11

    .line 1803
    :cond_5
    :goto_3
    add-int/lit8 v10, v11, 0x4

    and-int/lit8 v14, v11, 0x3

    sub-int/2addr v10, v14

    .line 1804
    .end local v11    # "u":I
    .local v10, "u":I
    add-int/lit8 v11, v10, 0x8

    invoke-static {v4, v11}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->readInt([BI)I

    move-result v11

    add-int/lit8 v14, v10, 0x4

    invoke-static {v4, v14}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->readInt([BI)I

    move-result v14

    sub-int/2addr v11, v14

    add-int/2addr v11, v13

    mul-int/2addr v11, v15

    add-int/lit8 v11, v11, 0xc

    add-int/2addr v10, v11

    .line 1805
    move v11, v10

    goto :goto_8

    .line 1782
    .end local v10    # "u":I
    .restart local v11    # "u":I
    :pswitch_4
    add-int/lit8 v11, v11, 0x5

    .line 1783
    goto :goto_8

    .line 1746
    :pswitch_5
    const/16 v10, 0xc9

    if-le v12, v10, :cond_7

    .line 1750
    const/16 v10, 0xda

    if-ge v12, v10, :cond_6

    add-int/lit8 v10, v12, -0x31

    goto :goto_4

    :cond_6
    add-int/lit8 v10, v12, -0x14

    .line 1751
    .end local v12    # "opcode":I
    .local v10, "opcode":I
    :goto_4
    add-int/lit8 v12, v11, 0x1

    invoke-static {v4, v12}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->readUnsignedShort([BI)I

    move-result v12

    add-int/2addr v12, v11

    .local v12, "label":I
    goto :goto_5

    .line 1753
    .end local v10    # "opcode":I
    .local v12, "opcode":I
    :cond_7
    add-int/lit8 v10, v11, 0x1

    invoke-static {v4, v10}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->readShort([BI)S

    move-result v10

    add-int/2addr v10, v11

    move/from16 v22, v12

    move v12, v10

    move/from16 v10, v22

    .line 1755
    .restart local v10    # "opcode":I
    .local v12, "label":I
    :goto_5
    invoke-static {v5, v6, v11, v12}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->getNewOffset([I[III)I

    move-result v14

    .line 1756
    .local v14, "newOffset":I
    const/16 v15, -0x8000

    if-lt v14, v15, :cond_8

    const/16 v15, 0x7fff

    if-le v14, v15, :cond_b

    .line 1759
    :cond_8
    aget-boolean v15, v8, v11

    if-nez v15, :cond_b

    .line 1760
    const/16 v15, 0xa7

    if-eq v10, v15, :cond_a

    const/16 v15, 0xa8

    if-ne v10, v15, :cond_9

    goto :goto_6

    .line 1774
    :cond_9
    const/4 v15, 0x5

    .end local v18    # "insert":I
    .restart local v15    # "insert":I
    goto :goto_7

    .line 1766
    .end local v15    # "insert":I
    .restart local v18    # "insert":I
    :cond_a
    :goto_6
    const/4 v15, 0x2

    .line 1776
    .end local v18    # "insert":I
    .restart local v15    # "insert":I
    :goto_7
    aput-boolean v13, v8, v11

    move/from16 v18, v15

    .line 1779
    .end local v15    # "insert":I
    .restart local v18    # "insert":I
    :cond_b
    add-int/lit8 v11, v11, 0x3

    .line 1780
    move v12, v10

    goto :goto_8

    .line 1841
    .end local v10    # "opcode":I
    .end local v14    # "newOffset":I
    .local v12, "opcode":I
    :pswitch_6
    add-int/lit8 v11, v11, 0x5

    .line 1842
    goto :goto_8

    .line 1838
    :pswitch_7
    add-int/lit8 v11, v11, 0x3

    .line 1839
    goto :goto_8

    .line 1831
    :pswitch_8
    add-int/lit8 v11, v11, 0x2

    .line 1832
    goto :goto_8

    .line 1743
    :pswitch_9
    add-int/lit8 v11, v11, 0x1

    .line 1744
    nop

    .line 1848
    :goto_8
    if-eqz v18, :cond_c

    .line 1851
    array-length v10, v5

    add-int/2addr v10, v13

    new-array v10, v10, [I

    .line 1852
    .local v10, "newIndexes":[I
    array-length v14, v6

    add-int/2addr v14, v13

    new-array v13, v14, [I

    .line 1853
    .local v13, "newSizes":[I
    array-length v14, v5

    invoke-static {v5, v7, v10, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1858
    array-length v14, v6

    invoke-static {v6, v7, v13, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1859
    array-length v14, v5

    aput v11, v10, v14

    .line 1860
    array-length v14, v6

    aput v18, v13, v14

    .line 1861
    move-object v5, v10

    .line 1862
    move-object v6, v13

    .line 1863
    if-lez v18, :cond_c

    .line 1864
    const/4 v9, 0x3

    .line 1867
    .end local v10    # "newIndexes":[I
    .end local v12    # "opcode":I
    .end local v13    # "newSizes":[I
    .end local v18    # "insert":I
    :cond_c
    const/4 v10, 0x3

    goto/16 :goto_1

    .line 1868
    :cond_d
    const/4 v12, 0x3

    if-ge v9, v12, :cond_e

    .line 1869
    add-int/lit8 v9, v9, -0x1

    .line 1871
    :cond_e
    if-nez v9, :cond_27

    .line 1877
    new-instance v12, Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v14, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v14, v14, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    invoke-direct {v12, v14}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;-><init>(I)V

    .line 1879
    .local v12, "newCode":Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    const/4 v11, 0x0

    .line 1880
    :goto_9
    iget-object v14, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v14, v14, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    if-ge v11, v14, :cond_1d

    .line 1881
    array-length v14, v5

    sub-int/2addr v14, v13

    .local v14, "i":I
    :goto_a
    if-ltz v14, :cond_11

    .line 1882
    aget v15, v5, v14

    if-ne v15, v11, :cond_10

    .line 1883
    if-ge v14, v3, :cond_10

    .line 1884
    aget v15, v2, v14

    if-lez v15, :cond_f

    .line 1885
    const/4 v15, 0x0

    aget v13, v2, v14

    invoke-virtual {v12, v15, v7, v13}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByteArray([BII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto :goto_b

    .line 1887
    :cond_f
    iget v13, v12, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    aget v15, v2, v14

    add-int/2addr v13, v15

    iput v13, v12, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    .line 1889
    :goto_b
    iget v13, v12, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    aput v13, v1, v14

    .line 1881
    :cond_10
    add-int/lit8 v14, v14, -0x1

    const/4 v13, 0x1

    goto :goto_a

    .line 1893
    :cond_11
    aget-byte v13, v4, v11

    and-int/lit16 v13, v13, 0xff

    .line 1894
    .local v13, "opcode":I
    sget-object v15, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->TYPE:[B

    aget-byte v15, v15, v13

    packed-switch v15, :pswitch_data_1

    .line 2025
    :pswitch_a
    const/16 v2, 0x8

    const/4 v3, 0x3

    const/16 v15, 0xa7

    const/16 v16, 0xc9

    const/4 v7, 0x4

    invoke-virtual {v12, v4, v11, v7}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByteArray([BII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 2026
    add-int/lit8 v11, v11, 0x4

    goto/16 :goto_16

    .line 1996
    :pswitch_b
    add-int/lit8 v15, v11, 0x1

    aget-byte v15, v4, v15

    and-int/lit16 v13, v15, 0xff

    .line 1997
    if-ne v13, v10, :cond_12

    .line 1998
    const/4 v15, 0x6

    invoke-virtual {v12, v4, v11, v15}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByteArray([BII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1999
    add-int/lit8 v11, v11, 0x6

    const/16 v2, 0x8

    const/4 v3, 0x3

    const/4 v7, 0x4

    const/16 v15, 0xa7

    const/16 v16, 0xc9

    goto/16 :goto_16

    .line 2001
    :cond_12
    const/4 v15, 0x4

    invoke-virtual {v12, v4, v11, v15}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByteArray([BII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 2002
    add-int/lit8 v11, v11, 0x4

    .line 2004
    const/16 v2, 0x8

    const/4 v3, 0x3

    const/4 v7, 0x4

    const/16 v15, 0xa7

    const/16 v16, 0xc9

    goto/16 :goto_16

    .line 1972
    :pswitch_c
    move v15, v11

    .line 1973
    .local v15, "v":I
    add-int/lit8 v20, v11, 0x4

    and-int/lit8 v21, v15, 0x3

    sub-int v11, v20, v21

    .line 1975
    const/16 v10, 0xab

    invoke-virtual {v12, v10}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1976
    :goto_c
    iget v10, v12, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    const/16 v19, 0x4

    rem-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_13

    .line 1977
    invoke-virtual {v12, v7}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto :goto_c

    .line 1979
    :cond_13
    invoke-static {v4, v11}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->readInt([BI)I

    move-result v10

    add-int/2addr v10, v15

    .line 1980
    .local v10, "label":I
    add-int/lit8 v11, v11, 0x4

    .line 1981
    invoke-static {v5, v6, v15, v10}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->getNewOffset([I[III)I

    move-result v7

    .line 1982
    .local v7, "newOffset":I
    invoke-virtual {v12, v7}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1983
    invoke-static {v4, v11}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->readInt([BI)I

    move-result v2

    .line 1984
    .local v2, "j":I
    add-int/lit8 v11, v11, 0x4

    .line 1985
    invoke-virtual {v12, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1986
    :goto_d
    if-lez v2, :cond_14

    .line 1987
    invoke-static {v4, v11}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->readInt([BI)I

    move-result v3

    invoke-virtual {v12, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1988
    add-int/lit8 v11, v11, 0x4

    .line 1989
    invoke-static {v4, v11}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->readInt([BI)I

    move-result v3

    add-int v10, v15, v3

    .line 1990
    const/4 v3, 0x4

    add-int/2addr v11, v3

    .line 1991
    invoke-static {v5, v6, v15, v10}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->getNewOffset([I[III)I

    move-result v7

    .line 1992
    invoke-virtual {v12, v7}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1986
    add-int/lit8 v2, v2, -0x1

    move/from16 v3, p3

    goto :goto_d

    :cond_14
    const/16 v2, 0x8

    const/4 v3, 0x3

    const/4 v7, 0x4

    const/16 v15, 0xa7

    const/16 v16, 0xc9

    goto/16 :goto_16

    .line 1946
    .end local v2    # "j":I
    .end local v7    # "newOffset":I
    .end local v10    # "label":I
    .end local v15    # "v":I
    :pswitch_d
    move v2, v11

    .line 1947
    .local v2, "v":I
    add-int/lit8 v3, v11, 0x4

    and-int/lit8 v7, v2, 0x3

    sub-int/2addr v3, v7

    .line 1949
    .end local v11    # "u":I
    .local v3, "u":I
    const/16 v7, 0xaa

    invoke-virtual {v12, v7}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1950
    :goto_e
    iget v7, v12, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    const/4 v10, 0x4

    rem-int/2addr v7, v10

    if-eqz v7, :cond_15

    .line 1951
    const/4 v7, 0x0

    invoke-virtual {v12, v7}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto :goto_e

    .line 1953
    :cond_15
    invoke-static {v4, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->readInt([BI)I

    move-result v7

    add-int/2addr v7, v2

    .line 1954
    .local v7, "label":I
    add-int/2addr v3, v10

    .line 1955
    invoke-static {v5, v6, v2, v7}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->getNewOffset([I[III)I

    move-result v11

    .line 1956
    .local v11, "newOffset":I
    invoke-virtual {v12, v11}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1957
    invoke-static {v4, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->readInt([BI)I

    move-result v15

    .line 1958
    .local v15, "j":I
    add-int/2addr v3, v10

    .line 1959
    invoke-virtual {v12, v15}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1960
    invoke-static {v4, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->readInt([BI)I

    move-result v19

    sub-int v19, v19, v15

    const/16 v20, 0x1

    add-int/lit8 v15, v19, 0x1

    .line 1961
    add-int/2addr v3, v10

    .line 1962
    add-int/lit8 v10, v3, -0x4

    invoke-static {v4, v10}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->readInt([BI)I

    move-result v10

    invoke-virtual {v12, v10}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1963
    :goto_f
    if-lez v15, :cond_16

    .line 1964
    invoke-static {v4, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->readInt([BI)I

    move-result v10

    add-int v7, v2, v10

    .line 1965
    add-int/lit8 v3, v3, 0x4

    .line 1966
    invoke-static {v5, v6, v2, v7}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->getNewOffset([I[III)I

    move-result v11

    .line 1967
    invoke-virtual {v12, v11}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1963
    add-int/lit8 v15, v15, -0x1

    goto :goto_f

    :cond_16
    move v11, v3

    const/16 v2, 0x8

    const/4 v3, 0x3

    const/4 v7, 0x4

    const/16 v15, 0xa7

    const/16 v16, 0xc9

    goto/16 :goto_16

    .line 1938
    .end local v2    # "v":I
    .end local v3    # "u":I
    .end local v7    # "label":I
    .end local v15    # "j":I
    .local v11, "u":I
    :pswitch_e
    add-int/lit8 v2, v11, 0x1

    invoke-static {v4, v2}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->readInt([BI)I

    move-result v2

    add-int/2addr v2, v11

    .line 1939
    .local v2, "label":I
    invoke-static {v5, v6, v11, v2}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->getNewOffset([I[III)I

    move-result v3

    .line 1940
    .local v3, "newOffset":I
    invoke-virtual {v12, v13}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1941
    invoke-virtual {v12, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1942
    add-int/lit8 v11, v11, 0x5

    .line 1943
    const/16 v2, 0x8

    const/4 v3, 0x3

    const/4 v7, 0x4

    const/16 v15, 0xa7

    const/16 v16, 0xc9

    goto/16 :goto_16

    .line 1901
    .end local v2    # "label":I
    .end local v3    # "newOffset":I
    :pswitch_f
    const/16 v2, 0xc9

    if-le v13, v2, :cond_18

    .line 1905
    const/16 v2, 0xda

    if-ge v13, v2, :cond_17

    add-int/lit8 v3, v13, -0x31

    goto :goto_10

    :cond_17
    add-int/lit8 v3, v13, -0x14

    :goto_10
    move v13, v3

    .line 1906
    add-int/lit8 v3, v11, 0x1

    invoke-static {v4, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->readUnsignedShort([BI)I

    move-result v3

    add-int/2addr v3, v11

    .local v3, "label":I
    goto :goto_11

    .line 1908
    .end local v3    # "label":I
    :cond_18
    const/16 v2, 0xda

    add-int/lit8 v3, v11, 0x1

    invoke-static {v4, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->readShort([BI)S

    move-result v3

    add-int/2addr v3, v11

    .line 1910
    .restart local v3    # "label":I
    :goto_11
    invoke-static {v5, v6, v11, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->getNewOffset([I[III)I

    move-result v7

    .line 1911
    .local v7, "newOffset":I
    aget-boolean v10, v8, v11

    if-eqz v10, :cond_1c

    .line 1917
    const/16 v10, 0xc8

    const/16 v15, 0xa7

    if-ne v13, v15, :cond_19

    .line 1918
    invoke-virtual {v12, v10}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    const/16 v2, 0xa8

    const/16 v10, 0xc9

    goto :goto_12

    .line 1919
    :cond_19
    const/16 v2, 0xa8

    if-ne v13, v2, :cond_1a

    .line 1920
    const/16 v10, 0xc9

    invoke-virtual {v12, v10}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1930
    :goto_12
    move/from16 v16, v10

    const/16 v2, 0x8

    goto :goto_14

    .line 1922
    :cond_1a
    const/16 v16, 0xc9

    const/16 v2, 0xa6

    if-gt v13, v2, :cond_1b

    add-int/lit8 v2, v13, 0x1

    const/16 v17, 0x1

    xor-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    :cond_1b
    xor-int/lit8 v2, v13, 0x1

    :goto_13
    invoke-virtual {v12, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1925
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1926
    invoke-virtual {v12, v10}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1928
    add-int/lit8 v7, v7, -0x3

    .line 1930
    :goto_14
    invoke-virtual {v12, v7}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto :goto_15

    .line 1932
    :cond_1c
    const/16 v2, 0x8

    const/16 v15, 0xa7

    const/16 v16, 0xc9

    invoke-virtual {v12, v13}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1933
    invoke-virtual {v12, v7}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1935
    :goto_15
    add-int/lit8 v11, v11, 0x3

    .line 1936
    const/4 v3, 0x3

    const/4 v7, 0x4

    goto :goto_16

    .line 2020
    .end local v3    # "label":I
    .end local v7    # "newOffset":I
    :pswitch_10
    const/16 v2, 0x8

    const/16 v15, 0xa7

    const/16 v16, 0xc9

    const/4 v3, 0x5

    invoke-virtual {v12, v4, v11, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByteArray([BII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 2021
    add-int/lit8 v11, v11, 0x5

    .line 2022
    const/4 v3, 0x3

    const/4 v7, 0x4

    goto :goto_16

    .line 2016
    :pswitch_11
    const/16 v2, 0x8

    const/16 v15, 0xa7

    const/16 v16, 0xc9

    const/4 v3, 0x3

    invoke-virtual {v12, v4, v11, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByteArray([BII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 2017
    add-int/lit8 v11, v11, 0x3

    .line 2018
    const/4 v7, 0x4

    goto :goto_16

    .line 2008
    :pswitch_12
    const/16 v2, 0x8

    const/4 v3, 0x3

    const/16 v15, 0xa7

    const/16 v16, 0xc9

    const/4 v7, 0x2

    invoke-virtual {v12, v4, v11, v7}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByteArray([BII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 2009
    add-int/lit8 v11, v11, 0x2

    .line 2010
    const/4 v7, 0x4

    goto :goto_16

    .line 1897
    :pswitch_13
    const/16 v2, 0x8

    const/4 v3, 0x3

    const/16 v15, 0xa7

    const/16 v16, 0xc9

    invoke-virtual {v12, v13}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1898
    add-int/lit8 v11, v11, 0x1

    .line 1899
    const/4 v7, 0x4

    .line 2029
    .end local v13    # "opcode":I
    :goto_16
    move-object/from16 v2, p2

    move/from16 v3, p3

    move v15, v7

    const/4 v7, 0x0

    const/16 v10, 0x84

    const/4 v13, 0x1

    goto/16 :goto_9

    .line 2032
    .end local v14    # "i":I
    :cond_1d
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->catchTable:Lorg/checkerframework/org/objectweb/asmx/Handler;

    .line 2033
    .local v2, "h":Lorg/checkerframework/org/objectweb/asmx/Handler;
    :goto_17
    if-eqz v2, :cond_1e

    .line 2034
    iget-object v3, v2, Lorg/checkerframework/org/objectweb/asmx/Handler;->start:Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-static {v5, v6, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->getNewOffset([I[ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 2035
    iget-object v3, v2, Lorg/checkerframework/org/objectweb/asmx/Handler;->end:Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-static {v5, v6, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->getNewOffset([I[ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 2036
    iget-object v3, v2, Lorg/checkerframework/org/objectweb/asmx/Handler;->handler:Lorg/checkerframework/org/objectweb/asmx/Label;

    invoke-static {v5, v6, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->getNewOffset([I[ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 2037
    iget-object v2, v2, Lorg/checkerframework/org/objectweb/asmx/Handler;->next:Lorg/checkerframework/org/objectweb/asmx/Handler;

    goto :goto_17

    .line 2039
    :cond_1e
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    const/4 v7, 0x2

    if-ge v3, v7, :cond_21

    .line 2040
    if-nez v3, :cond_1f

    iget-object v10, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVar:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto :goto_19

    :cond_1f
    iget-object v10, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVarType:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 2041
    .local v10, "bv":Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    :goto_19
    if-eqz v10, :cond_20

    .line 2042
    iget-object v4, v10, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    .line 2043
    const/4 v11, 0x0

    .line 2044
    :goto_1a
    iget v13, v10, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    if-ge v11, v13, :cond_20

    .line 2045
    invoke-static {v4, v11}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->readUnsignedShort([BI)I

    move-result v13

    .line 2046
    .local v13, "label":I
    const/4 v14, 0x0

    invoke-static {v5, v6, v14, v13}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->getNewOffset([I[III)I

    move-result v15

    .line 2047
    .local v15, "newOffset":I
    invoke-static {v4, v11, v15}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->writeShort([BII)V

    .line 2048
    add-int/lit8 v7, v11, 0x2

    invoke-static {v4, v7}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->readUnsignedShort([BI)I

    move-result v7

    add-int/2addr v13, v7

    .line 2049
    invoke-static {v5, v6, v14, v13}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->getNewOffset([I[III)I

    move-result v7

    sub-int/2addr v7, v15

    .line 2051
    .end local v15    # "newOffset":I
    .restart local v7    # "newOffset":I
    add-int/lit8 v14, v11, 0x2

    invoke-static {v4, v14, v7}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->writeShort([BII)V

    .line 2052
    add-int/lit8 v11, v11, 0xa

    const/4 v7, 0x2

    goto :goto_1a

    .line 2039
    .end local v7    # "newOffset":I
    .end local v10    # "bv":Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    .end local v13    # "label":I
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 2056
    :cond_21
    iget-object v7, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->lineNumber:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    if-eqz v7, :cond_22

    .line 2057
    iget-object v4, v7, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    .line 2058
    const/4 v7, 0x0

    move v11, v7

    .line 2059
    :goto_1b
    iget-object v7, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->lineNumber:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v7, v7, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    if-ge v11, v7, :cond_22

    .line 2060
    nop

    .line 2063
    invoke-static {v4, v11}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->readUnsignedShort([BI)I

    move-result v7

    .line 2060
    const/4 v10, 0x0

    invoke-static {v5, v6, v10, v7}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->getNewOffset([I[III)I

    move-result v7

    invoke-static {v4, v11, v7}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->writeShort([BII)V

    .line 2064
    add-int/lit8 v11, v11, 0x4

    goto :goto_1b

    .line 2068
    :cond_22
    :goto_1c
    iget-object v7, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cattrs:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    if-eqz v7, :cond_26

    .line 2069
    invoke-virtual {v7}, Lorg/checkerframework/org/objectweb/asmx/Attribute;->getLabels()[Lorg/checkerframework/org/objectweb/asmx/Label;

    move-result-object v7

    .line 2070
    .local v7, "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    if-eqz v7, :cond_25

    .line 2071
    array-length v10, v7

    const/4 v13, 0x1

    sub-int/2addr v10, v13

    .end local v3    # "i":I
    .local v10, "i":I
    :goto_1d
    if-ltz v10, :cond_24

    .line 2072
    aget-object v3, v7, v10

    iget-boolean v3, v3, Lorg/checkerframework/org/objectweb/asmx/Label;->resized:Z

    if-nez v3, :cond_23

    .line 2073
    aget-object v3, v7, v10

    aget-object v13, v7, v10

    iget v13, v13, Lorg/checkerframework/org/objectweb/asmx/Label;->position:I

    const/4 v14, 0x0

    invoke-static {v5, v6, v14, v13}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->getNewOffset([I[III)I

    move-result v13

    iput v13, v3, Lorg/checkerframework/org/objectweb/asmx/Label;->position:I

    .line 2077
    aget-object v3, v7, v10

    const/4 v13, 0x1

    iput-boolean v13, v3, Lorg/checkerframework/org/objectweb/asmx/Label;->resized:Z

    goto :goto_1e

    .line 2072
    :cond_23
    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 2071
    :goto_1e
    add-int/lit8 v10, v10, -0x1

    goto :goto_1d

    :cond_24
    const/4 v13, 0x1

    const/4 v14, 0x0

    move v3, v10

    goto :goto_1f

    .line 2070
    .end local v10    # "i":I
    .restart local v3    # "i":I
    :cond_25
    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 2081
    .end local v7    # "labels":[Lorg/checkerframework/org/objectweb/asmx/Label;
    :goto_1f
    goto :goto_1c

    .line 2084
    :cond_26
    iput-object v12, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 2087
    return-object v1

    .line 1871
    .end local v2    # "h":Lorg/checkerframework/org/objectweb/asmx/Handler;
    .end local v3    # "i":I
    .end local v12    # "newCode":Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    :cond_27
    move v14, v7

    move-object/from16 v2, p2

    move/from16 v3, p3

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_d
        :pswitch_c
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method static writeShort([BII)V
    .locals 2
    .param p0, "b"    # [B
    .param p1, "index"    # I
    .param p2, "s"    # I

    .line 2132
    ushr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 2133
    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 2134
    return-void
.end method


# virtual methods
.method final getSize()I
    .locals 11

    .line 1331
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->classReaderOffset:I

    if-eqz v0, :cond_0

    .line 1332
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->classReaderLength:I

    add-int/lit8 v0, v0, 0x6

    return v0

    .line 1334
    :cond_0
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->resize:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1336
    new-array v0, v1, [I

    new-array v2, v1, [I

    invoke-direct {p0, v0, v2, v1}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->resizeInstructions([I[II)[I

    .line 1338
    :cond_1
    const/16 v0, 0x8

    .line 1339
    .local v0, "size":I
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    const-string v3, "RuntimeInvisibleTypeAnnotations"

    const-string v4, "RuntimeVisibleTypeAnnotations"

    if-lez v2, :cond_7

    .line 1340
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v5, "Code"

    invoke-virtual {v2, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 1341
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int/lit8 v2, v2, 0x12

    iget v5, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->catchCount:I

    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v2, v5

    add-int/2addr v0, v2

    .line 1342
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVar:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    if-eqz v2, :cond_2

    .line 1343
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v5, "LocalVariableTable"

    invoke-virtual {v2, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 1344
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVar:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 1346
    :cond_2
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVarType:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    if-eqz v2, :cond_3

    .line 1347
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v5, "LocalVariableTypeTable"

    invoke-virtual {v2, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 1348
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVarType:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 1350
    :cond_3
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->lineNumber:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    if-eqz v2, :cond_4

    .line 1351
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v5, "LineNumberTable"

    invoke-virtual {v2, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 1352
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->lineNumber:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 1354
    :cond_4
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cxanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    if-eqz v2, :cond_5

    .line 1355
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v2, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 1356
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cxanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 1358
    :cond_5
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    if-eqz v2, :cond_6

    .line 1359
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 1360
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 1362
    :cond_6
    iget-object v5, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cattrs:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    if-eqz v5, :cond_7

    .line 1363
    iget-object v6, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v7, v2, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v8, v2, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    iget v9, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStack:I

    iget v10, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxLocals:I

    invoke-virtual/range {v5 .. v10}, Lorg/checkerframework/org/objectweb/asmx/Attribute;->getSize(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;[BIII)I

    move-result v2

    add-int/2addr v0, v2

    .line 1370
    :cond_7
    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->exceptionCount:I

    if-lez v2, :cond_8

    .line 1371
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v5, "Exceptions"

    invoke-virtual {v2, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 1372
    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->exceptionCount:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 1374
    :cond_8
    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->access:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->version:I

    const v5, 0xffff

    and-int/2addr v2, v5

    const/16 v5, 0x31

    if-ge v2, v5, :cond_9

    .line 1377
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v5, "Synthetic"

    invoke-virtual {v2, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 1378
    add-int/lit8 v0, v0, 0x6

    .line 1380
    :cond_9
    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->access:I

    const/high16 v5, 0x20000

    and-int/2addr v2, v5

    if-eqz v2, :cond_a

    .line 1381
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v5, "Deprecated"

    invoke-virtual {v2, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 1382
    add-int/lit8 v0, v0, 0x6

    .line 1384
    :cond_a
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->version:I

    const/16 v5, 0x30

    if-ne v2, v5, :cond_c

    .line 1385
    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->access:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_b

    .line 1386
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v5, "Varargs"

    invoke-virtual {v2, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 1387
    add-int/lit8 v0, v0, 0x6

    .line 1389
    :cond_b
    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->access:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_c

    .line 1390
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v5, "Bridge"

    invoke-virtual {v2, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 1391
    add-int/lit8 v0, v0, 0x6

    .line 1394
    :cond_c
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->signature:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 1395
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v5, "Signature"

    invoke-virtual {v2, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 1396
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    iget-object v5, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->signature:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 1397
    add-int/lit8 v0, v0, 0x8

    .line 1399
    :cond_d
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->annd:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    if-eqz v2, :cond_e

    .line 1400
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v5, "AnnotationDefault"

    invoke-virtual {v2, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 1401
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->annd:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int/lit8 v2, v2, 0x6

    add-int/2addr v0, v2

    .line 1403
    :cond_e
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->anns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    if-eqz v2, :cond_f

    .line 1404
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v5, "RuntimeVisibleAnnotations"

    invoke-virtual {v2, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 1405
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->anns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 1407
    :cond_f
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->ianns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    if-eqz v2, :cond_10

    .line 1408
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v5, "RuntimeInvisibleAnnotations"

    invoke-virtual {v2, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 1409
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->ianns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 1411
    :cond_10
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->xanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    if-eqz v2, :cond_11

    .line 1412
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v2, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 1413
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->xanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 1415
    :cond_11
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->ixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    if-eqz v2, :cond_12

    .line 1416
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 1417
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->ixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 1419
    :cond_12
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->panns:[Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    if-eqz v2, :cond_14

    .line 1420
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v3, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 1421
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->panns:[Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x7

    add-int/2addr v0, v3

    .line 1422
    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_14

    .line 1423
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->panns:[Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    aget-object v3, v3, v2

    if-nez v3, :cond_13

    move v3, v1

    goto :goto_1

    :cond_13
    invoke-virtual {v3}, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->getSize()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    .line 1422
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1426
    .end local v2    # "i":I
    :cond_14
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->ipanns:[Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    if-eqz v2, :cond_16

    .line 1427
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v3, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 1428
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->ipanns:[Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x7

    add-int/2addr v0, v3

    .line 1429
    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_16

    .line 1430
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->ipanns:[Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    aget-object v3, v3, v2

    if-nez v3, :cond_15

    move v3, v1

    goto :goto_3

    :cond_15
    invoke-virtual {v3}, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->getSize()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    .line 1429
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1433
    .end local v2    # "i":I
    :cond_16
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->attrs:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    if-eqz v1, :cond_17

    .line 1434
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual/range {v1 .. v6}, Lorg/checkerframework/org/objectweb/asmx/Attribute;->getSize(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;[BIII)I

    move-result v1

    add-int/2addr v0, v1

    .line 1436
    :cond_17
    return v0
.end method

.method final put(Lorg/checkerframework/org/objectweb/asmx/ByteVector;)V
    .locals 22
    .param p1, "out"    # Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1446
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iget v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->access:I

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    iget v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->name:I

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    iget v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->desc:I

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1447
    iget v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->classReaderOffset:I

    if-eqz v1, :cond_0

    .line 1448
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    iget-object v1, v1, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->cr:Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    iget-object v1, v1, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->b:[B

    iget v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->classReaderOffset:I

    iget v3, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->classReaderLength:I

    invoke-virtual {v8, v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByteArray([BII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1449
    return-void

    .line 1451
    :cond_0
    const/4 v1, 0x0

    .line 1452
    .local v1, "attributeCount":I
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    if-lez v2, :cond_1

    .line 1453
    add-int/lit8 v1, v1, 0x1

    .line 1455
    :cond_1
    iget v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->exceptionCount:I

    if-lez v2, :cond_2

    .line 1456
    add-int/lit8 v1, v1, 0x1

    .line 1458
    :cond_2
    iget v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->access:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v9, 0x31

    const v10, 0xffff

    if-eqz v2, :cond_3

    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->version:I

    and-int/2addr v2, v10

    if-ge v2, v9, :cond_3

    .line 1461
    add-int/lit8 v1, v1, 0x1

    .line 1463
    :cond_3
    iget v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->access:I

    const/high16 v11, 0x20000

    and-int/2addr v2, v11

    if-eqz v2, :cond_4

    .line 1464
    add-int/lit8 v1, v1, 0x1

    .line 1466
    :cond_4
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->version:I

    const/16 v12, 0x30

    if-ne v2, v12, :cond_6

    .line 1467
    iget v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->access:I

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_5

    .line 1468
    add-int/lit8 v1, v1, 0x1

    .line 1470
    :cond_5
    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_6

    .line 1471
    add-int/lit8 v1, v1, 0x1

    .line 1474
    :cond_6
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->signature:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 1475
    add-int/lit8 v1, v1, 0x1

    .line 1477
    :cond_7
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->annd:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    if-eqz v2, :cond_8

    .line 1478
    add-int/lit8 v1, v1, 0x1

    .line 1480
    :cond_8
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->anns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    if-eqz v2, :cond_9

    .line 1481
    add-int/lit8 v1, v1, 0x1

    .line 1483
    :cond_9
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->ianns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    if-eqz v2, :cond_a

    .line 1484
    add-int/lit8 v1, v1, 0x1

    .line 1486
    :cond_a
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->xanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    if-eqz v2, :cond_b

    .line 1487
    add-int/lit8 v1, v1, 0x1

    .line 1489
    :cond_b
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->ixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    if-eqz v2, :cond_c

    .line 1490
    add-int/lit8 v1, v1, 0x1

    .line 1492
    :cond_c
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->panns:[Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    if-eqz v2, :cond_d

    .line 1493
    add-int/lit8 v1, v1, 0x1

    .line 1495
    :cond_d
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->ipanns:[Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    if-eqz v2, :cond_e

    .line 1496
    add-int/lit8 v1, v1, 0x1

    .line 1498
    :cond_e
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->attrs:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    if-eqz v2, :cond_f

    .line 1499
    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/Attribute;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 1501
    :cond_f
    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1502
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    const-string v13, "RuntimeInvisibleTypeAnnotations"

    const-string v14, "RuntimeVisibleTypeAnnotations"

    const/4 v15, 0x2

    const/4 v7, 0x0

    if-lez v2, :cond_22

    .line 1503
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int/lit8 v2, v2, 0xc

    iget v3, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->catchCount:I

    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 1504
    .local v2, "size":I
    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVar:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    if-eqz v3, :cond_10

    .line 1505
    iget v3, v3, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 1507
    :cond_10
    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVarType:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    if-eqz v3, :cond_11

    .line 1508
    iget v3, v3, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 1510
    :cond_11
    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->lineNumber:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    if-eqz v3, :cond_12

    .line 1511
    iget v3, v3, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 1513
    :cond_12
    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cxanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    if-eqz v3, :cond_13

    .line 1514
    invoke-virtual {v3}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 1516
    :cond_13
    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    if-eqz v3, :cond_14

    .line 1517
    invoke-virtual {v3}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    .line 1519
    :cond_14
    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cattrs:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    if-eqz v3, :cond_15

    .line 1520
    iget-object v4, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    iget-object v5, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v5, v5, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    iget-object v6, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v6, v6, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    iget v12, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStack:I

    iget v11, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxLocals:I

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v12

    move/from16 v21, v11

    invoke-virtual/range {v16 .. v21}, Lorg/checkerframework/org/objectweb/asmx/Attribute;->getSize(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;[BIII)I

    move-result v3

    add-int/2addr v2, v3

    move v11, v2

    goto :goto_0

    .line 1519
    :cond_15
    move v11, v2

    .line 1526
    .end local v2    # "size":I
    .local v11, "size":I
    :goto_0
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v3, "Code"

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v11}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1527
    iget v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStack:I

    invoke-virtual {v8, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v2

    iget v3, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxLocals:I

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1528
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    invoke-virtual {v8, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v2

    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v3, v3, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    iget-object v4, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v4, v4, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    invoke-virtual {v2, v3, v7, v4}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByteArray([BII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1529
    iget v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->catchCount:I

    invoke-virtual {v8, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1530
    iget v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->catchCount:I

    if-lez v2, :cond_16

    .line 1531
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->catchTable:Lorg/checkerframework/org/objectweb/asmx/Handler;

    .line 1532
    .local v2, "h":Lorg/checkerframework/org/objectweb/asmx/Handler;
    :goto_1
    if-eqz v2, :cond_16

    .line 1533
    iget-object v3, v2, Lorg/checkerframework/org/objectweb/asmx/Handler;->start:Lorg/checkerframework/org/objectweb/asmx/Label;

    iget v3, v3, Lorg/checkerframework/org/objectweb/asmx/Label;->position:I

    invoke-virtual {v8, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v3

    iget-object v4, v2, Lorg/checkerframework/org/objectweb/asmx/Handler;->end:Lorg/checkerframework/org/objectweb/asmx/Label;

    iget v4, v4, Lorg/checkerframework/org/objectweb/asmx/Label;->position:I

    .line 1534
    invoke-virtual {v3, v4}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v3

    iget-object v4, v2, Lorg/checkerframework/org/objectweb/asmx/Handler;->handler:Lorg/checkerframework/org/objectweb/asmx/Label;

    iget v4, v4, Lorg/checkerframework/org/objectweb/asmx/Label;->position:I

    .line 1535
    invoke-virtual {v3, v4}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v3

    iget v4, v2, Lorg/checkerframework/org/objectweb/asmx/Handler;->type:I

    .line 1536
    invoke-virtual {v3, v4}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1537
    iget-object v2, v2, Lorg/checkerframework/org/objectweb/asmx/Handler;->next:Lorg/checkerframework/org/objectweb/asmx/Handler;

    goto :goto_1

    .line 1540
    .end local v2    # "h":Lorg/checkerframework/org/objectweb/asmx/Handler;
    :cond_16
    const/4 v1, 0x0

    .line 1541
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVar:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    if-eqz v2, :cond_17

    .line 1542
    add-int/lit8 v1, v1, 0x1

    .line 1544
    :cond_17
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVarType:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    if-eqz v2, :cond_18

    .line 1545
    add-int/lit8 v1, v1, 0x1

    .line 1547
    :cond_18
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->lineNumber:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    if-eqz v2, :cond_19

    .line 1548
    add-int/lit8 v1, v1, 0x1

    .line 1550
    :cond_19
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cxanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    if-eqz v2, :cond_1a

    .line 1551
    add-int/lit8 v1, v1, 0x1

    .line 1553
    :cond_1a
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    if-eqz v2, :cond_1b

    .line 1554
    add-int/lit8 v1, v1, 0x1

    .line 1556
    :cond_1b
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cattrs:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    if-eqz v2, :cond_1c

    .line 1557
    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/Attribute;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    move v12, v1

    goto :goto_2

    .line 1556
    :cond_1c
    move v12, v1

    .line 1559
    .end local v1    # "attributeCount":I
    .local v12, "attributeCount":I
    :goto_2
    invoke-virtual {v8, v12}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1560
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVar:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    if-eqz v1, :cond_1d

    .line 1561
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v2, "LocalVariableTable"

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1562
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVar:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v1, v1, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int/2addr v1, v15

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    iget v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVarCount:I

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1563
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVar:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, v1, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVar:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    invoke-virtual {v8, v1, v7, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByteArray([BII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1565
    :cond_1d
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVarType:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    if-eqz v1, :cond_1e

    .line 1566
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v2, "LocalVariableTypeTable"

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1567
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVarType:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v1, v1, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int/2addr v1, v15

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    iget v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVarTypeCount:I

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1568
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVarType:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, v1, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVarType:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    invoke-virtual {v8, v1, v7, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByteArray([BII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1570
    :cond_1e
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->lineNumber:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    if-eqz v1, :cond_1f

    .line 1571
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v2, "LineNumberTable"

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1572
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->lineNumber:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v1, v1, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int/2addr v1, v15

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    iget v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->lineNumberCount:I

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1573
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->lineNumber:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, v1, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->lineNumber:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    invoke-virtual {v8, v1, v7, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByteArray([BII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1575
    :cond_1f
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cxanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    if-eqz v1, :cond_20

    .line 1576
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v1, v14}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1577
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cxanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    invoke-virtual {v1, v8}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->put(Lorg/checkerframework/org/objectweb/asmx/ByteVector;)V

    .line 1579
    :cond_20
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    if-eqz v1, :cond_21

    .line 1580
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v1, v13}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1581
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    invoke-virtual {v1, v8}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->put(Lorg/checkerframework/org/objectweb/asmx/ByteVector;)V

    .line 1583
    :cond_21
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cattrs:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    if-eqz v1, :cond_23

    .line 1584
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v3, v3, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    iget-object v4, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v4, v4, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    iget v5, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxLocals:I

    iget v6, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStack:I

    move-object/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lorg/checkerframework/org/objectweb/asmx/Attribute;->put(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;[BIIILorg/checkerframework/org/objectweb/asmx/ByteVector;)V

    goto :goto_3

    .line 1502
    .end local v11    # "size":I
    .end local v12    # "attributeCount":I
    .restart local v1    # "attributeCount":I
    :cond_22
    move v12, v1

    .line 1587
    .end local v1    # "attributeCount":I
    .restart local v12    # "attributeCount":I
    :cond_23
    :goto_3
    iget v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->exceptionCount:I

    if-lez v1, :cond_24

    .line 1588
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v2, "Exceptions"

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    iget v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->exceptionCount:I

    mul-int/2addr v2, v15

    add-int/2addr v2, v15

    .line 1589
    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1590
    iget v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->exceptionCount:I

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1591
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->exceptionCount:I

    if-ge v1, v2, :cond_24

    .line 1592
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->exceptions:[I

    aget v2, v2, v1

    invoke-virtual {v8, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1591
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1595
    .end local v1    # "i":I
    :cond_24
    iget v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->access:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_25

    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    iget v1, v1, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->version:I

    and-int/2addr v1, v10

    if-ge v1, v9, :cond_25

    .line 1598
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v2, "Synthetic"

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto :goto_5

    .line 1595
    :cond_25
    const/4 v2, 0x0

    .line 1600
    :goto_5
    iget v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->access:I

    const/high16 v3, 0x20000

    and-int/2addr v1, v3

    if-eqz v1, :cond_26

    .line 1601
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v3, "Deprecated"

    invoke-virtual {v1, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1603
    :cond_26
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    iget v1, v1, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->version:I

    const/16 v3, 0x30

    if-ne v1, v3, :cond_28

    .line 1604
    iget v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->access:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_27

    .line 1605
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v3, "Varargs"

    invoke-virtual {v1, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1607
    :cond_27
    iget v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->access:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_28

    .line 1608
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v3, "Bridge"

    invoke-virtual {v1, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1611
    :cond_28
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->signature:Ljava/lang/String;

    if-eqz v1, :cond_29

    .line 1612
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v3, "Signature"

    invoke-virtual {v1, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    .line 1613
    invoke-virtual {v1, v15}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    iget-object v4, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->signature:Ljava/lang/String;

    .line 1614
    invoke-virtual {v3, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1616
    :cond_29
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->annd:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    if-eqz v1, :cond_2a

    .line 1617
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v3, "AnnotationDefault"

    invoke-virtual {v1, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1618
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->annd:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v1, v1, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1619
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->annd:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, v1, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->annd:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v3, v3, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    invoke-virtual {v8, v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByteArray([BII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1621
    :cond_2a
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->anns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    if-eqz v1, :cond_2b

    .line 1622
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1623
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->anns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    invoke-virtual {v1, v8}, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->put(Lorg/checkerframework/org/objectweb/asmx/ByteVector;)V

    .line 1625
    :cond_2b
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->ianns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    if-eqz v1, :cond_2c

    .line 1626
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1627
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->ianns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    invoke-virtual {v1, v8}, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->put(Lorg/checkerframework/org/objectweb/asmx/ByteVector;)V

    .line 1629
    :cond_2c
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->xanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    if-eqz v1, :cond_2d

    .line 1630
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v1, v14}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1631
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->xanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    invoke-virtual {v1, v8}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->put(Lorg/checkerframework/org/objectweb/asmx/ByteVector;)V

    .line 1633
    :cond_2d
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->ixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    if-eqz v1, :cond_2e

    .line 1634
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v1, v13}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1635
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->ixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    invoke-virtual {v1, v8}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->put(Lorg/checkerframework/org/objectweb/asmx/ByteVector;)V

    .line 1637
    :cond_2e
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->panns:[Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    if-eqz v1, :cond_2f

    .line 1638
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v2, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1639
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->panns:[Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    invoke-static {v1, v8}, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->put([Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;Lorg/checkerframework/org/objectweb/asmx/ByteVector;)V

    .line 1641
    :cond_2f
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->ipanns:[Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    if-eqz v1, :cond_30

    .line 1642
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const-string v2, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1643
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->ipanns:[Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    invoke-static {v1, v8}, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->put([Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;Lorg/checkerframework/org/objectweb/asmx/ByteVector;)V

    .line 1645
    :cond_30
    iget-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->attrs:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    if-eqz v1, :cond_31

    .line 1646
    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lorg/checkerframework/org/objectweb/asmx/Attribute;->put(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;[BIIILorg/checkerframework/org/objectweb/asmx/ByteVector;)V

    .line 1648
    :cond_31
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 8
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 601
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;-><init>()V

    .line 603
    .local v0, "bv":Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v1, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 604
    new-instance v7, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const/4 v3, 0x1

    const/4 v6, 0x2

    move-object v1, v7

    move-object v4, v0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;ZLorg/checkerframework/org/objectweb/asmx/ByteVector;Lorg/checkerframework/org/objectweb/asmx/ByteVector;I)V

    .line 605
    .local v1, "aw":Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;
    if-eqz p2, :cond_0

    .line 606
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->anns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    iput-object v2, v1, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->next:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    .line 607
    iput-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->anns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    goto :goto_0

    .line 609
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->ianns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    iput-object v2, v1, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->next:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    .line 610
    iput-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->ianns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    .line 612
    :goto_0
    return-object v1
.end method

.method public visitAnnotationDefault()Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 7

    .line 593
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->annd:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 594
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->annd:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;ZLorg/checkerframework/org/objectweb/asmx/ByteVector;Lorg/checkerframework/org/objectweb/asmx/ByteVector;I)V

    return-object v0
.end method

.method public visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 672
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/Attribute;->isCodeAttribute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cattrs:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    iput-object v0, p1, Lorg/checkerframework/org/objectweb/asmx/Attribute;->next:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 674
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cattrs:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    goto :goto_0

    .line 676
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->attrs:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    iput-object v0, p1, Lorg/checkerframework/org/objectweb/asmx/Attribute;->next:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 677
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->attrs:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 679
    :goto_0
    return-void
.end method

.method public visitCode()V
    .locals 0

    .line 682
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 1261
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 791
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->computeMaxs:Z

    if-eqz v0, :cond_9

    .line 794
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 795
    .local v1, "c":C
    const/4 v2, 0x1

    const/4 v3, -0x2

    const/16 v4, 0x4a

    const/16 v5, 0x44

    packed-switch p1, :pswitch_data_0

    .line 807
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    if-eq v1, v5, :cond_6

    if-ne v1, v4, :cond_7

    goto :goto_1

    .line 803
    :pswitch_0
    iget v3, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    if-eq v1, v5, :cond_0

    if-ne v1, v4, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    add-int/2addr v3, v0

    .line 804
    .local v3, "size":I
    goto :goto_2

    .line 800
    .end local v3    # "size":I
    :pswitch_1
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    if-eq v1, v5, :cond_3

    if-ne v1, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    :cond_3
    :goto_0
    add-int/2addr v3, v0

    .line 801
    .restart local v3    # "size":I
    goto :goto_2

    .line 797
    .end local v3    # "size":I
    :pswitch_2
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    if-eq v1, v5, :cond_4

    if-ne v1, v4, :cond_5

    :cond_4
    const/4 v2, 0x2

    :cond_5
    add-int v3, v0, v2

    .line 798
    .restart local v3    # "size":I
    goto :goto_2

    .line 807
    .end local v3    # "size":I
    :cond_6
    :goto_1
    const/4 v3, -0x3

    :cond_7
    add-int/2addr v3, v0

    .line 811
    .restart local v3    # "size":I
    :goto_2
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStackSize:I

    if-le v3, v0, :cond_8

    .line 812
    iput v3, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStackSize:I

    .line 814
    :cond_8
    iput v3, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    .line 817
    .end local v1    # "c":C
    .end local v3    # "size":I
    :cond_9
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 818
    return-void

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitIincInsn(II)V
    .locals 3
    .param p1, "var"    # I
    .param p2, "increment"    # I

    .line 1018
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->computeMaxs:Z

    if-eqz v0, :cond_0

    .line 1020
    add-int/lit8 v0, p1, 0x1

    .line 1021
    .local v0, "n":I
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxLocals:I

    if-le v0, v1, :cond_0

    .line 1022
    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxLocals:I

    .line 1026
    .end local v0    # "n":I
    :cond_0
    const/16 v0, 0xff

    const/16 v1, 0x84

    if-gt p1, v0, :cond_2

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_2

    const/16 v0, -0x80

    if-ge p2, v0, :cond_1

    goto :goto_0

    .line 1031
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put11(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto :goto_1

    .line 1027
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    const/16 v2, 0xc4

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    .line 1028
    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    .line 1029
    invoke-virtual {v0, p2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1033
    :goto_1
    return-void
.end method

.method public visitInsn(I)V
    .locals 3
    .param p1, "opcode"    # I

    .line 685
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->computeMaxs:Z

    if-eqz v0, :cond_3

    .line 687
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->SIZE:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    .line 688
    .local v0, "size":I
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStackSize:I

    if-le v0, v1, :cond_0

    .line 689
    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStackSize:I

    .line 691
    :cond_0
    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    .line 693
    const/16 v1, 0xac

    if-lt p1, v1, :cond_1

    const/16 v1, 0xb1

    if-le p1, v1, :cond_2

    :cond_1
    const/16 v1, 0xbf

    if-ne p1, v1, :cond_3

    .line 696
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->currentBlock:Lorg/checkerframework/org/objectweb/asmx/Label;

    if-eqz v1, :cond_3

    .line 697
    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStackSize:I

    iput v2, v1, Lorg/checkerframework/org/objectweb/asmx/Label;->maxStackSize:I

    .line 698
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->currentBlock:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 703
    .end local v0    # "size":I
    :cond_3
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 704
    return-void
.end method

.method public visitInsnAnnotation(ILorg/checkerframework/org/objectweb/asmx/TypePath;Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 8
    .param p1, "typeRef"    # I
    .param p2, "typePath"    # Lorg/checkerframework/org/objectweb/asmx/TypePath;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "visible"    # Z

    .line 1112
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;-><init>()V

    .line 1114
    .local v0, "bv":Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    const v1, -0xffff01

    and-int/2addr v1, p1

    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->lastCodeOffset:I

    shl-int/lit8 v2, v2, 0x8

    or-int p1, v1, v2

    .line 1117
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v1, p3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1118
    new-instance v7, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const/4 v3, 0x1

    iget v1, v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int/lit8 v6, v1, -0x2

    move-object v1, v7

    move-object v4, v0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;ZLorg/checkerframework/org/objectweb/asmx/ByteVector;Lorg/checkerframework/org/objectweb/asmx/ByteVector;I)V

    .line 1128
    .local v1, "aw":Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;
    return-object v1
.end method

.method public visitIntInsn(II)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .line 707
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->computeMaxs:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xbc

    if-eq p1, v0, :cond_1

    .line 710
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    .line 711
    .local v0, "size":I
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStackSize:I

    if-le v0, v1, :cond_0

    .line 712
    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStackSize:I

    .line 714
    :cond_0
    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    .line 717
    .end local v0    # "size":I
    :cond_1
    const/16 v0, 0x11

    if-ne p1, v0, :cond_2

    .line 718
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto :goto_0

    .line 720
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put11(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 722
    :goto_0
    return-void
.end method

.method public visitInvokeDynamicInsn(II)V
    .locals 1
    .param p1, "ix1"    # I
    .param p2, "ix2"    # I

    .line 872
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 873
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v0, p2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 874
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Handle;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/checkerframework/org/objectweb/asmx/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .line 879
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v0, v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->lastCodeOffset:I

    .line 880
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newInvokeDynamicItem(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Handle;[Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v0

    .line 881
    .local v0, "i":Lorg/checkerframework/org/objectweb/asmx/Item;
    iget v1, v0, Lorg/checkerframework/org/objectweb/asmx/Item;->intVal:I

    .line 883
    .local v1, "argSize":I
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->currentBlock:Lorg/checkerframework/org/objectweb/asmx/Label;

    if-eqz v2, :cond_2

    .line 895
    if-nez v1, :cond_0

    .line 898
    invoke-static {p2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v1

    .line 901
    iput v1, v0, Lorg/checkerframework/org/objectweb/asmx/Item;->intVal:I

    .line 903
    :cond_0
    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    shr-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    and-int/lit8 v3, v1, 0x3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .line 906
    .local v2, "size":I
    iget v3, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStackSize:I

    if-le v2, v3, :cond_1

    .line 907
    iput v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStackSize:I

    .line 909
    :cond_1
    iput v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    .line 913
    .end local v2    # "size":I
    :cond_2
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    const/16 v3, 0xba

    iget v4, v0, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    invoke-virtual {v2, v3, v4}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 914
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 915
    return-void
.end method

.method public visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 918
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->computeMaxs:Z

    const/16 v1, 0xa8

    const/16 v2, 0xa7

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 919
    if-ne p1, v2, :cond_0

    .line 922
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->currentBlock:Lorg/checkerframework/org/objectweb/asmx/Label;

    if-eqz v0, :cond_2

    .line 923
    iget v4, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStackSize:I

    iput v4, v0, Lorg/checkerframework/org/objectweb/asmx/Label;->maxStackSize:I

    .line 924
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->addSuccessor(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 925
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->currentBlock:Lorg/checkerframework/org/objectweb/asmx/Label;

    goto :goto_0

    .line 927
    :cond_0
    if-ne p1, v1, :cond_1

    .line 928
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->currentBlock:Lorg/checkerframework/org/objectweb/asmx/Label;

    if-eqz v0, :cond_2

    .line 929
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    add-int/2addr v0, v3

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->addSuccessor(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    goto :goto_0

    .line 934
    :cond_1
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    sget-object v4, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->SIZE:[I

    aget v4, v4, p1

    add-int/2addr v0, v4

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    .line 935
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->currentBlock:Lorg/checkerframework/org/objectweb/asmx/Label;

    if-eqz v4, :cond_2

    .line 936
    invoke-direct {p0, v0, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->addSuccessor(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 941
    :cond_2
    :goto_0
    iget-boolean v0, p2, Lorg/checkerframework/org/objectweb/asmx/Label;->resolved:Z

    if-eqz v0, :cond_6

    iget v0, p2, Lorg/checkerframework/org/objectweb/asmx/Label;->position:I

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v4, v4, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    sub-int/2addr v0, v4

    const/16 v4, -0x8000

    if-ge v0, v4, :cond_6

    .line 949
    const/16 v0, 0xc8

    if-ne p1, v2, :cond_3

    .line 950
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto :goto_2

    .line 951
    :cond_3
    if-ne p1, v1, :cond_4

    .line 952
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto :goto_2

    .line 954
    :cond_4
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    const/16 v2, 0xa6

    if-gt p1, v2, :cond_5

    add-int/lit8 v2, p1, 0x1

    xor-int/2addr v2, v3

    sub-int/2addr v2, v3

    goto :goto_1

    :cond_5
    xor-int/lit8 v2, p1, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 957
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 958
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 960
    :goto_2
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v1, v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    sub-int/2addr v1, v3

    invoke-virtual {p2, p0, v0, v1, v3}, Lorg/checkerframework/org/objectweb/asmx/Label;->put(Lorg/checkerframework/org/objectweb/asmx/MethodWriter;Lorg/checkerframework/org/objectweb/asmx/ByteVector;IZ)V

    goto :goto_3

    .line 968
    :cond_6
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 969
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v1, v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    sub-int/2addr v1, v3

    const/4 v2, 0x0

    invoke-virtual {p2, p0, v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/Label;->put(Lorg/checkerframework/org/objectweb/asmx/MethodWriter;Lorg/checkerframework/org/objectweb/asmx/ByteVector;IZ)V

    .line 971
    :goto_3
    return-void
.end method

.method public visitLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 3
    .param p1, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 974
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->computeMaxs:Z

    if-eqz v0, :cond_1

    .line 975
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->currentBlock:Lorg/checkerframework/org/objectweb/asmx/Label;

    if-eqz v0, :cond_0

    .line 977
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStackSize:I

    iput v1, v0, Lorg/checkerframework/org/objectweb/asmx/Label;->maxStackSize:I

    .line 978
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->addSuccessor(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 982
    :cond_0
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->currentBlock:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 983
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    .line 984
    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStackSize:I

    .line 987
    :cond_1
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->resize:Z

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v1, v1, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v2, v2, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    invoke-virtual {p1, p0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/Label;->resolve(Lorg/checkerframework/org/objectweb/asmx/MethodWriter;I[B)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->resize:Z

    .line 988
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 5
    .param p1, "cst"    # Ljava/lang/Object;

    .line 991
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newConstItem(Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v0

    .line 992
    .local v0, "i":Lorg/checkerframework/org/objectweb/asmx/Item;
    iget-boolean v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->computeMaxs:Z

    const/4 v2, 0x6

    const/4 v3, 0x5

    if-eqz v1, :cond_3

    .line 995
    iget v1, v0, Lorg/checkerframework/org/objectweb/asmx/Item;->type:I

    if-eq v1, v3, :cond_1

    iget v1, v0, Lorg/checkerframework/org/objectweb/asmx/Item;->type:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 998
    :cond_0
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    add-int/lit8 v1, v1, 0x1

    .local v1, "size":I
    goto :goto_1

    .line 996
    .end local v1    # "size":I
    :cond_1
    :goto_0
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    add-int/lit8 v1, v1, 0x2

    .line 1001
    .restart local v1    # "size":I
    :goto_1
    iget v4, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStackSize:I

    if-le v1, v4, :cond_2

    .line 1002
    iput v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStackSize:I

    .line 1004
    :cond_2
    iput v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    .line 1007
    .end local v1    # "size":I
    :cond_3
    iget v1, v0, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    .line 1008
    .local v1, "index":I
    iget v4, v0, Lorg/checkerframework/org/objectweb/asmx/Item;->type:I

    if-eq v4, v3, :cond_6

    iget v3, v0, Lorg/checkerframework/org/objectweb/asmx/Item;->type:I

    if-ne v3, v2, :cond_4

    goto :goto_2

    .line 1010
    :cond_4
    const/16 v2, 0x100

    if-lt v1, v2, :cond_5

    .line 1011
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    const/16 v3, 0x13

    invoke-virtual {v2, v3, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto :goto_3

    .line 1013
    :cond_5
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    const/16 v3, 0x12

    invoke-virtual {v2, v3, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put11(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto :goto_3

    .line 1009
    :cond_6
    :goto_2
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    const/16 v3, 0x14

    invoke-virtual {v2, v3, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1015
    :goto_3
    return-void
.end method

.method public visitLineNumber(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 2
    .param p1, "line"    # I
    .param p2, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 1201
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->lineNumber:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    if-nez v0, :cond_0

    .line 1202
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->lineNumber:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1204
    :cond_0
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->lineNumberCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->lineNumberCount:I

    .line 1205
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->lineNumber:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v1, p2, Lorg/checkerframework/org/objectweb/asmx/Label;->position:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1206
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->lineNumber:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1207
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p5, "end"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p6, "index"    # I

    .line 1169
    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 1170
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVarType:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    if-nez v1, :cond_0

    .line 1171
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-direct {v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVarType:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1173
    :cond_0
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVarTypeCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVarTypeCount:I

    .line 1174
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVarType:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v2, p4, Lorg/checkerframework/org/objectweb/asmx/Label;->position:I

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    iget v2, p5, Lorg/checkerframework/org/objectweb/asmx/Label;->position:I

    iget v3, p4, Lorg/checkerframework/org/objectweb/asmx/Label;->position:I

    sub-int/2addr v2, v3

    .line 1175
    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    .line 1176
    invoke-virtual {v2, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    .line 1177
    invoke-virtual {v2, p3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    .line 1178
    invoke-virtual {v1, p6}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1180
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVar:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    if-nez v1, :cond_2

    .line 1181
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-direct {v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVar:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1183
    :cond_2
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVarCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVarCount:I

    .line 1184
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->localVar:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v2, p4, Lorg/checkerframework/org/objectweb/asmx/Label;->position:I

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    iget v2, p5, Lorg/checkerframework/org/objectweb/asmx/Label;->position:I

    iget v3, p4, Lorg/checkerframework/org/objectweb/asmx/Label;->position:I

    sub-int/2addr v2, v3

    .line 1185
    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    .line 1186
    invoke-virtual {v2, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    .line 1187
    invoke-virtual {v2, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    .line 1188
    invoke-virtual {v1, p6}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1190
    iget-boolean v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->computeMaxs:Z

    if-eqz v1, :cond_5

    .line 1192
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1193
    .local v1, "c":C
    const/16 v2, 0x4c

    if-eq v1, v2, :cond_3

    const/16 v2, 0x44

    if-ne v1, v2, :cond_4

    :cond_3
    const/4 v0, 0x2

    :cond_4
    add-int/2addr v0, p6

    .line 1194
    .local v0, "n":I
    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxLocals:I

    if-le v0, v2, :cond_5

    .line 1195
    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxLocals:I

    .line 1198
    .end local v0    # "n":I
    .end local v1    # "c":C
    :cond_5
    return-void
.end method

.method public visitLookupSwitchInsn(Lorg/checkerframework/org/objectweb/asmx/Label;[I[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 5
    .param p1, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 1072
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->computeMaxs:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1074
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    .line 1076
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->currentBlock:Lorg/checkerframework/org/objectweb/asmx/Label;

    if-eqz v0, :cond_1

    .line 1077
    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStackSize:I

    iput v2, v0, Lorg/checkerframework/org/objectweb/asmx/Label;->maxStackSize:I

    .line 1078
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->addSuccessor(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 1079
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 1080
    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    aget-object v3, p3, v0

    invoke-direct {p0, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->addSuccessor(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 1079
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1082
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->currentBlock:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 1086
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v0, v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    .line 1087
    .local v0, "source":I
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    const/16 v3, 0xab

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1088
    :goto_1
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    rem-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 1089
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto :goto_1

    .line 1091
    :cond_2
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {p1, p0, v2, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/Label;->put(Lorg/checkerframework/org/objectweb/asmx/MethodWriter;Lorg/checkerframework/org/objectweb/asmx/ByteVector;IZ)V

    .line 1092
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    array-length v3, p3

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1093
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, p3

    if-ge v2, v3, :cond_3

    .line 1094
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    aget v4, p2, v2

    invoke-virtual {v3, v4}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1095
    aget-object v3, p3, v2

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v3, p0, v4, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/Label;->put(Lorg/checkerframework/org/objectweb/asmx/MethodWriter;Lorg/checkerframework/org/objectweb/asmx/ByteVector;IZ)V

    .line 1093
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1097
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method public visitMaxs(II)V
    .locals 7
    .param p1, "maxStack"    # I
    .param p2, "maxLocals"    # I

    .line 1210
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->computeMaxs:Z

    if-eqz v0, :cond_4

    .line 1212
    const/4 v0, 0x0

    .line 1223
    .local v0, "max":I
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->blockStack:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 1224
    .local v1, "stack":Lorg/checkerframework/org/objectweb/asmx/Label;
    :goto_0
    if-eqz v1, :cond_3

    .line 1226
    move-object v2, v1

    .line 1227
    .local v2, "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    iget-object v1, v1, Lorg/checkerframework/org/objectweb/asmx/Label;->next:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 1229
    iget v3, v2, Lorg/checkerframework/org/objectweb/asmx/Label;->beginStackSize:I

    .line 1230
    .local v3, "start":I
    iget v4, v2, Lorg/checkerframework/org/objectweb/asmx/Label;->maxStackSize:I

    add-int/2addr v4, v3

    .line 1232
    .local v4, "blockMax":I
    if-le v4, v0, :cond_0

    .line 1233
    move v0, v4

    .line 1236
    :cond_0
    iget-object v5, v2, Lorg/checkerframework/org/objectweb/asmx/Label;->successors:Lorg/checkerframework/org/objectweb/asmx/Edge;

    .line 1237
    .local v5, "b":Lorg/checkerframework/org/objectweb/asmx/Edge;
    :goto_1
    if-eqz v5, :cond_2

    .line 1238
    iget-object v2, v5, Lorg/checkerframework/org/objectweb/asmx/Edge;->successor:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 1241
    iget-boolean v6, v2, Lorg/checkerframework/org/objectweb/asmx/Label;->pushed:Z

    if-nez v6, :cond_1

    .line 1244
    iget v6, v5, Lorg/checkerframework/org/objectweb/asmx/Edge;->stackSize:I

    add-int/2addr v6, v3

    iput v6, v2, Lorg/checkerframework/org/objectweb/asmx/Label;->beginStackSize:I

    .line 1246
    const/4 v6, 0x1

    iput-boolean v6, v2, Lorg/checkerframework/org/objectweb/asmx/Label;->pushed:Z

    .line 1247
    iput-object v1, v2, Lorg/checkerframework/org/objectweb/asmx/Label;->next:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 1248
    move-object v1, v2

    .line 1250
    :cond_1
    iget-object v5, v5, Lorg/checkerframework/org/objectweb/asmx/Edge;->next:Lorg/checkerframework/org/objectweb/asmx/Edge;

    goto :goto_1

    .line 1252
    .end local v2    # "l":Lorg/checkerframework/org/objectweb/asmx/Label;
    .end local v3    # "start":I
    .end local v4    # "blockMax":I
    .end local v5    # "b":Lorg/checkerframework/org/objectweb/asmx/Edge;
    :cond_2
    goto :goto_0

    .line 1253
    :cond_3
    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStack:I

    .line 1254
    .end local v0    # "max":I
    .end local v1    # "stack":Lorg/checkerframework/org/objectweb/asmx/Label;
    goto :goto_2

    .line 1255
    :cond_4
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStack:I

    .line 1256
    iput p2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxLocals:I

    .line 1258
    :goto_2
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 826
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xb9

    if-ne p1, v2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    .line 827
    .local v3, "itf":Z
    :goto_0
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v4, p2, p3, p4, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newMethodItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v4

    .line 828
    .local v4, "i":Lorg/checkerframework/org/objectweb/asmx/Item;
    iget v5, v4, Lorg/checkerframework/org/objectweb/asmx/Item;->intVal:I

    .line 829
    .local v5, "argSize":I
    iget-boolean v6, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->computeMaxs:Z

    if-eqz v6, :cond_4

    .line 837
    if-nez v5, :cond_1

    .line 840
    invoke-static {p4}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v5

    .line 843
    iput v5, v4, Lorg/checkerframework/org/objectweb/asmx/Item;->intVal:I

    .line 846
    :cond_1
    const/16 v6, 0xb8

    if-ne p1, v6, :cond_2

    .line 847
    iget v6, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    shr-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    and-int/lit8 v7, v5, 0x3

    add-int/2addr v6, v7

    add-int/2addr v6, v0

    .local v6, "size":I
    goto :goto_1

    .line 849
    .end local v6    # "size":I
    :cond_2
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    shr-int/lit8 v6, v5, 0x2

    sub-int/2addr v0, v6

    and-int/lit8 v6, v5, 0x3

    add-int/2addr v6, v0

    .line 852
    .restart local v6    # "size":I
    :goto_1
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStackSize:I

    if-le v6, v0, :cond_3

    .line 853
    iput v6, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStackSize:I

    .line 855
    :cond_3
    iput v6, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    .line 858
    .end local v6    # "size":I
    :cond_4
    if-eqz v3, :cond_6

    .line 859
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->computeMaxs:Z

    if-nez v0, :cond_5

    .line 860
    if-nez v5, :cond_5

    .line 861
    invoke-static {p4}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    .line 862
    .end local v5    # "argSize":I
    .local v0, "argSize":I
    iput v0, v4, Lorg/checkerframework/org/objectweb/asmx/Item;->intVal:I

    move v5, v0

    .line 865
    .end local v0    # "argSize":I
    .restart local v5    # "argSize":I
    :cond_5
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v6, v4, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    invoke-virtual {v0, v2, v6}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    shr-int/lit8 v2, v5, 0x2

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put11(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto :goto_2

    .line 867
    :cond_6
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v1, v4, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 869
    :goto_2
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .line 1100
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->computeMaxs:Z

    if-eqz v0, :cond_0

    .line 1103
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    rsub-int/lit8 v1, p2, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    .line 1106
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v1, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xc5

    invoke-virtual {v0, v2, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1107
    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 8
    .param p1, "parameter"    # I
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .line 651
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;-><init>()V

    .line 653
    .local v0, "bv":Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v1, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 654
    new-instance v7, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const/4 v3, 0x1

    const/4 v6, 0x2

    move-object v1, v7

    move-object v4, v0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;ZLorg/checkerframework/org/objectweb/asmx/ByteVector;Lorg/checkerframework/org/objectweb/asmx/ByteVector;I)V

    .line 655
    .local v1, "aw":Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;
    if-eqz p3, :cond_1

    .line 656
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->panns:[Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    if-nez v2, :cond_0

    .line 657
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-static {v2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    iput-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->panns:[Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    .line 659
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->panns:[Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    aget-object v2, v2, p1

    iput-object v2, v1, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->next:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    .line 660
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->panns:[Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    aput-object v1, v2, p1

    goto :goto_0

    .line 662
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->ipanns:[Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    if-nez v2, :cond_2

    .line 663
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-static {v2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    iput-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->ipanns:[Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    .line 665
    :cond_2
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->ipanns:[Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    aget-object v2, v2, p1

    iput-object v2, v1, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->next:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    .line 666
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->ipanns:[Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    aput-object v1, v2, p1

    .line 668
    :goto_0
    return-object v1
.end method

.method public visitTableSwitchInsn(IILorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 5
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p4, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 1041
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->computeMaxs:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1043
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    .line 1045
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->currentBlock:Lorg/checkerframework/org/objectweb/asmx/Label;

    if-eqz v0, :cond_1

    .line 1046
    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStackSize:I

    iput v2, v0, Lorg/checkerframework/org/objectweb/asmx/Label;->maxStackSize:I

    .line 1047
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    invoke-direct {p0, v0, p3}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->addSuccessor(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 1048
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_0

    .line 1049
    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    aget-object v3, p4, v0

    invoke-direct {p0, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->addSuccessor(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 1048
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1051
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->currentBlock:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 1055
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v0, v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    .line 1056
    .local v0, "source":I
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    const/16 v3, 0xaa

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1057
    :goto_1
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    rem-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 1058
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto :goto_1

    .line 1060
    :cond_2
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {p3, p0, v2, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/Label;->put(Lorg/checkerframework/org/objectweb/asmx/MethodWriter;Lorg/checkerframework/org/objectweb/asmx/ByteVector;IZ)V

    .line 1061
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v2, p1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1062
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, p4

    if-ge v2, v3, :cond_3

    .line 1063
    aget-object v3, p4, v2

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v3, p0, v4, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/Label;->put(Lorg/checkerframework/org/objectweb/asmx/MethodWriter;Lorg/checkerframework/org/objectweb/asmx/ByteVector;IZ)V

    .line 1062
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1065
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method public visitTryCatchBlock(Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Lorg/checkerframework/org/objectweb/asmx/Label;Ljava/lang/String;)V
    .locals 2
    .param p1, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "end"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p3, "handler"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p4, "type"    # Ljava/lang/String;

    .line 1137
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->computeMaxs:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1139
    iget-boolean v0, p3, Lorg/checkerframework/org/objectweb/asmx/Label;->pushed:Z

    if-nez v0, :cond_0

    .line 1140
    iput v1, p3, Lorg/checkerframework/org/objectweb/asmx/Label;->beginStackSize:I

    .line 1141
    iput-boolean v1, p3, Lorg/checkerframework/org/objectweb/asmx/Label;->pushed:Z

    .line 1142
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->blockStack:Lorg/checkerframework/org/objectweb/asmx/Label;

    iput-object v0, p3, Lorg/checkerframework/org/objectweb/asmx/Label;->next:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 1143
    iput-object p3, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->blockStack:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 1146
    :cond_0
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->catchCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->catchCount:I

    .line 1147
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/Handler;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/Handler;-><init>()V

    .line 1148
    .local v0, "h":Lorg/checkerframework/org/objectweb/asmx/Handler;
    iput-object p1, v0, Lorg/checkerframework/org/objectweb/asmx/Handler;->start:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 1149
    iput-object p2, v0, Lorg/checkerframework/org/objectweb/asmx/Handler;->end:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 1150
    iput-object p3, v0, Lorg/checkerframework/org/objectweb/asmx/Handler;->handler:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 1151
    iput-object p4, v0, Lorg/checkerframework/org/objectweb/asmx/Handler;->desc:Ljava/lang/String;

    .line 1152
    if-eqz p4, :cond_1

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v1, p4}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Lorg/checkerframework/org/objectweb/asmx/Handler;->type:I

    .line 1153
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->lastHandler:Lorg/checkerframework/org/objectweb/asmx/Handler;

    if-nez v1, :cond_2

    .line 1154
    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->catchTable:Lorg/checkerframework/org/objectweb/asmx/Handler;

    goto :goto_1

    .line 1156
    :cond_2
    iput-object v0, v1, Lorg/checkerframework/org/objectweb/asmx/Handler;->next:Lorg/checkerframework/org/objectweb/asmx/Handler;

    .line 1158
    :goto_1
    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->lastHandler:Lorg/checkerframework/org/objectweb/asmx/Handler;

    .line 1159
    return-void
.end method

.method public visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 7
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "inCode"    # Z

    .line 621
    new-instance v3, Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-direct {v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;-><init>()V

    .line 622
    .local v3, "bv":Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    new-instance v6, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    const/4 v2, 0x1

    move-object v0, v6

    move-object v4, v3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;ZLorg/checkerframework/org/objectweb/asmx/ByteVector;Lorg/checkerframework/org/objectweb/asmx/ByteVector;Ljava/lang/String;)V

    .line 625
    .local v0, "xaw":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;
    if-eqz p3, :cond_1

    .line 626
    if-eqz p2, :cond_0

    .line 627
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cxanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    iput-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->next:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    .line 628
    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cxanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    goto :goto_0

    .line 630
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    iput-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->next:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    .line 631
    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    goto :goto_0

    .line 634
    :cond_1
    if-eqz p2, :cond_2

    .line 635
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->xanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    iput-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->next:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    .line 636
    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->xanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    goto :goto_0

    .line 638
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->ixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    iput-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->next:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    .line 639
    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->ixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    .line 642
    :goto_0
    return-object v0
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "desc"    # Ljava/lang/String;

    .line 772
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->computeMaxs:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xbb

    if-ne p1, v0, :cond_1

    .line 775
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    .line 776
    .local v0, "size":I
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStackSize:I

    if-le v0, v1, :cond_0

    .line 777
    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStackSize:I

    .line 779
    :cond_0
    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    .line 782
    .end local v0    # "size":I
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->cw:Lorg/checkerframework/org/objectweb/asmx/ClassWriter;

    invoke-virtual {v1, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 783
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .line 725
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->computeMaxs:Z

    const/16 v1, 0xa9

    if-eqz v0, :cond_5

    .line 727
    if-ne p1, v1, :cond_0

    .line 729
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->currentBlock:Lorg/checkerframework/org/objectweb/asmx/Label;

    if-eqz v0, :cond_2

    .line 730
    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStackSize:I

    iput v2, v0, Lorg/checkerframework/org/objectweb/asmx/Label;->maxStackSize:I

    .line 731
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->currentBlock:Lorg/checkerframework/org/objectweb/asmx/Label;

    goto :goto_0

    .line 734
    :cond_0
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->SIZE:[I

    aget v2, v2, p1

    add-int/2addr v0, v2

    .line 735
    .local v0, "size":I
    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStackSize:I

    if-le v0, v2, :cond_1

    .line 736
    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxStackSize:I

    .line 738
    :cond_1
    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->stackSize:I

    .line 742
    .end local v0    # "size":I
    :cond_2
    :goto_0
    const/16 v0, 0x16

    if-eq p1, v0, :cond_4

    const/16 v0, 0x18

    if-eq p1, v0, :cond_4

    const/16 v0, 0x37

    if-eq p1, v0, :cond_4

    const/16 v0, 0x39

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 747
    :cond_3
    add-int/lit8 v0, p2, 0x1

    .local v0, "n":I
    goto :goto_2

    .line 745
    .end local v0    # "n":I
    :cond_4
    :goto_1
    add-int/lit8 v0, p2, 0x2

    .line 749
    .restart local v0    # "n":I
    :goto_2
    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxLocals:I

    if-le v0, v2, :cond_5

    .line 750
    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->maxLocals:I

    .line 754
    .end local v0    # "n":I
    :cond_5
    const/4 v0, 0x4

    if-ge p2, v0, :cond_7

    if-eq p1, v1, :cond_7

    .line 756
    const/16 v0, 0x36

    if-ge p1, v0, :cond_6

    .line 758
    add-int/lit8 v0, p1, -0x15

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1a

    add-int/2addr v0, p2

    .local v0, "opt":I
    goto :goto_3

    .line 761
    .end local v0    # "opt":I
    :cond_6
    add-int/lit8 v0, p1, -0x36

    shl-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3b

    add-int/2addr v0, p2

    .line 763
    .restart local v0    # "opt":I
    :goto_3
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 764
    .end local v0    # "opt":I
    goto :goto_4

    :cond_7
    const/16 v0, 0x100

    if-lt p2, v0, :cond_8

    .line 765
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto :goto_4

    .line 767
    :cond_8
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->code:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put11(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 769
    :goto_4
    return-void
.end method
