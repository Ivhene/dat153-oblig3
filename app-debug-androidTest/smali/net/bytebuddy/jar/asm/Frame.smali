.class Lnet/bytebuddy/jar/asm/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# static fields
.field static final APPEND_FRAME:I = 0xfc

.field private static final ARRAY_OF:I = 0x4000000

.field private static final BOOLEAN:I = 0x400009

.field private static final BYTE:I = 0x40000a

.field private static final CHAR:I = 0x40000b

.field static final CHOP_FRAME:I = 0xf8

.field private static final CONSTANT_KIND:I = 0x400000

.field private static final DIM_MASK:I = -0x4000000

.field private static final DIM_SHIFT:I = 0x1a

.field private static final DIM_SIZE:I = 0x6

.field private static final DOUBLE:I = 0x400003

.field private static final ELEMENT_OF:I = -0x4000000

.field private static final FLAGS_SHIFT:I = 0x14

.field private static final FLAGS_SIZE:I = 0x2

.field private static final FLOAT:I = 0x400002

.field static final FULL_FRAME:I = 0xff

.field private static final INTEGER:I = 0x400001

.field private static final ITEM_ASM_BOOLEAN:I = 0x9

.field private static final ITEM_ASM_BYTE:I = 0xa

.field private static final ITEM_ASM_CHAR:I = 0xb

.field private static final ITEM_ASM_SHORT:I = 0xc

.field static final ITEM_DOUBLE:I = 0x3

.field static final ITEM_FLOAT:I = 0x2

.field static final ITEM_INTEGER:I = 0x1

.field static final ITEM_LONG:I = 0x4

.field static final ITEM_NULL:I = 0x5

.field static final ITEM_OBJECT:I = 0x7

.field static final ITEM_TOP:I = 0x0

.field static final ITEM_UNINITIALIZED:I = 0x8

.field static final ITEM_UNINITIALIZED_THIS:I = 0x6

.field private static final KIND_MASK:I = 0x3c00000

.field private static final KIND_SHIFT:I = 0x16

.field private static final KIND_SIZE:I = 0x4

.field private static final LOCAL_KIND:I = 0x1000000

.field private static final LONG:I = 0x400004

.field private static final NULL:I = 0x400005

.field private static final REFERENCE_KIND:I = 0x800000

.field static final RESERVED:I = 0x80

.field static final SAME_FRAME:I = 0x0

.field static final SAME_FRAME_EXTENDED:I = 0xfb

.field static final SAME_LOCALS_1_STACK_ITEM_FRAME:I = 0x40

.field static final SAME_LOCALS_1_STACK_ITEM_FRAME_EXTENDED:I = 0xf7

.field private static final SHORT:I = 0x40000c

.field private static final STACK_KIND:I = 0x1400000

.field private static final TOP:I = 0x400000

.field private static final TOP_IF_LONG_OR_DOUBLE_FLAG:I = 0x100000

.field private static final UNINITIALIZED_KIND:I = 0xc00000

.field private static final UNINITIALIZED_THIS:I = 0x400006

.field private static final VALUE_MASK:I = 0xfffff

.field private static final VALUE_SIZE:I = 0x14


# instance fields
.field private initializationCount:I

.field private initializations:[I

.field private inputLocals:[I

.field private inputStack:[I

.field private outputLocals:[I

.field private outputStack:[I

.field private outputStackStart:S

.field private outputStackTop:S

.field owner:Lnet/bytebuddy/jar/asm/Label;


# direct methods
.method constructor <init>(Lnet/bytebuddy/jar/asm/Label;)V
    .locals 0
    .param p1, "owner"    # Lnet/bytebuddy/jar/asm/Label;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/Frame;->owner:Lnet/bytebuddy/jar/asm/Label;

    .line 244
    return-void
.end method

.method private addInitializedType(I)V
    .locals 4
    .param p1, "abstractType"    # I

    .line 619
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    if-nez v0, :cond_0

    .line 620
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    .line 622
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    array-length v0, v0

    .line 623
    .local v0, "initializationsLength":I
    iget v1, p0, Lnet/bytebuddy/jar/asm/Frame;->initializationCount:I

    if-lt v1, v0, :cond_1

    .line 624
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    .line 625
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    .line 626
    .local v1, "newInitializations":[I
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 627
    iput-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    .line 630
    .end local v1    # "newInitializations":[I
    :cond_1
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    iget v2, p0, Lnet/bytebuddy/jar/asm/Frame;->initializationCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnet/bytebuddy/jar/asm/Frame;->initializationCount:I

    aput p1, v1, v2

    .line 631
    return-void
.end method

.method static getAbstractTypeFromApiFormat(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/Object;)I
    .locals 2
    .param p0, "symbolTable"    # Lnet/bytebuddy/jar/asm/SymbolTable;
    .param p1, "type"    # Ljava/lang/Object;

    .line 281
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 282
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    return v0

    .line 283
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 284
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getObjectType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lnet/bytebuddy/jar/asm/Frame;->getAbstractTypeFromDescriptor(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 287
    .end local v0    # "descriptor":Ljava/lang/String;
    :cond_1
    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/jar/asm/Label;

    iget v0, v0, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    .line 288
    const-string v1, ""

    invoke-virtual {p0, v1, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addUninitializedType(Ljava/lang/String;I)I

    move-result v0

    const/high16 v1, 0xc00000

    or-int/2addr v0, v1

    .line 287
    return v0
.end method

.method private static getAbstractTypeFromDescriptor(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;I)I
    .locals 4
    .param p0, "symbolTable"    # Lnet/bytebuddy/jar/asm/SymbolTable;
    .param p1, "buffer"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .line 316
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/high16 v1, 0x800000

    sparse-switch v0, :sswitch_data_0

    .line 374
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 335
    :sswitch_0
    add-int/lit8 v0, p2, 0x1

    .line 336
    .local v0, "elementDescriptorOffset":I
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_1

    .line 370
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 342
    :sswitch_1
    const v1, 0x400009

    .line 343
    .local v1, "typeValue":I
    goto :goto_1

    .line 351
    .end local v1    # "typeValue":I
    :sswitch_2
    const v1, 0x40000c

    .line 352
    .restart local v1    # "typeValue":I
    goto :goto_1

    .line 366
    .end local v1    # "typeValue":I
    :sswitch_3
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, "internalName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v1, v3

    .line 368
    .restart local v1    # "typeValue":I
    goto :goto_1

    .line 360
    .end local v1    # "typeValue":I
    .end local v2    # "internalName":Ljava/lang/String;
    :sswitch_4
    const v1, 0x400004

    .line 361
    .restart local v1    # "typeValue":I
    goto :goto_1

    .line 354
    .end local v1    # "typeValue":I
    :sswitch_5
    const v1, 0x400001

    .line 355
    .restart local v1    # "typeValue":I
    goto :goto_1

    .line 357
    .end local v1    # "typeValue":I
    :sswitch_6
    const v1, 0x400002

    .line 358
    .restart local v1    # "typeValue":I
    goto :goto_1

    .line 363
    .end local v1    # "typeValue":I
    :sswitch_7
    const v1, 0x400003

    .line 364
    .restart local v1    # "typeValue":I
    goto :goto_1

    .line 345
    .end local v1    # "typeValue":I
    :sswitch_8
    const v1, 0x40000b

    .line 346
    .restart local v1    # "typeValue":I
    goto :goto_1

    .line 348
    .end local v1    # "typeValue":I
    :sswitch_9
    const v1, 0x40000a

    .line 349
    .restart local v1    # "typeValue":I
    nop

    .line 372
    :goto_1
    sub-int v2, v0, p2

    shl-int/lit8 v2, v2, 0x1a

    or-int/2addr v2, v1

    return v2

    .line 318
    .end local v0    # "elementDescriptorOffset":I
    .end local v1    # "typeValue":I
    :sswitch_a
    const/4 v0, 0x0

    return v0

    .line 332
    :sswitch_b
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "internalName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v2

    or-int/2addr v1, v2

    return v1

    .line 328
    .end local v0    # "internalName":Ljava/lang/String;
    :sswitch_c
    const v0, 0x400004

    return v0

    .line 326
    :sswitch_d
    const v0, 0x400002

    return v0

    .line 330
    :sswitch_e
    const v0, 0x400003

    return v0

    .line 324
    :sswitch_f
    const v0, 0x400001

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_f
        0x43 -> :sswitch_f
        0x44 -> :sswitch_e
        0x46 -> :sswitch_d
        0x49 -> :sswitch_f
        0x4a -> :sswitch_c
        0x4c -> :sswitch_b
        0x53 -> :sswitch_f
        0x56 -> :sswitch_a
        0x5a -> :sswitch_f
        0x5b -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x42 -> :sswitch_9
        0x43 -> :sswitch_8
        0x44 -> :sswitch_7
        0x46 -> :sswitch_6
        0x49 -> :sswitch_5
        0x4a -> :sswitch_4
        0x4c -> :sswitch_3
        0x53 -> :sswitch_2
        0x5a -> :sswitch_1
    .end sparse-switch
.end method

.method static getAbstractTypeFromInternalName(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)I
    .locals 2
    .param p0, "symbolTable"    # Lnet/bytebuddy/jar/asm/SymbolTable;
    .param p1, "internalName"    # Ljava/lang/String;

    .line 302
    const/high16 v0, 0x800000

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private getConcreteOutputType(II)I
    .locals 7
    .param p1, "abstractOutputType"    # I
    .param p2, "numStack"    # I

    .line 1123
    const/high16 v0, -0x4000000

    and-int/2addr v0, p1

    .line 1124
    .local v0, "dim":I
    const/high16 v1, 0x3c00000

    and-int/2addr v1, p1

    .line 1125
    .local v1, "kind":I
    const/high16 v2, 0x1000000

    const v3, 0x400003

    const v4, 0x400004

    const/high16 v5, 0x100000

    const v6, 0xfffff

    if-ne v1, v2, :cond_2

    .line 1129
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    and-int/2addr v6, p1

    aget v2, v2, v6

    add-int/2addr v2, v0

    .line 1130
    .local v2, "concreteOutputType":I
    and-int/2addr v5, p1

    if-eqz v5, :cond_1

    if-eq v2, v4, :cond_0

    if-ne v2, v3, :cond_1

    .line 1132
    :cond_0
    const/high16 v2, 0x400000

    .line 1134
    :cond_1
    return v2

    .line 1135
    .end local v2    # "concreteOutputType":I
    :cond_2
    const/high16 v2, 0x1400000

    if-ne v1, v2, :cond_5

    .line 1139
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    and-int/2addr v6, p1

    sub-int v6, p2, v6

    aget v2, v2, v6

    add-int/2addr v2, v0

    .line 1140
    .restart local v2    # "concreteOutputType":I
    and-int/2addr v5, p1

    if-eqz v5, :cond_4

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_4

    .line 1142
    :cond_3
    const/high16 v2, 0x400000

    .line 1144
    :cond_4
    return v2

    .line 1146
    .end local v2    # "concreteOutputType":I
    :cond_5
    return p1
.end method

.method private getInitializedType(Lnet/bytebuddy/jar/asm/SymbolTable;I)I
    .locals 9
    .param p1, "symbolTable"    # Lnet/bytebuddy/jar/asm/SymbolTable;
    .param p2, "abstractType"    # I

    .line 643
    const v0, 0x400006

    if-eq p2, v0, :cond_0

    const/high16 v1, -0x400000

    and-int/2addr v1, p2

    const/high16 v2, 0xc00000

    if-ne v1, v2, :cond_5

    .line 645
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lnet/bytebuddy/jar/asm/Frame;->initializationCount:I

    if-ge v1, v2, :cond_5

    .line 646
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    aget v2, v2, v1

    .line 647
    .local v2, "initializedType":I
    const/high16 v3, -0x4000000

    and-int/2addr v3, v2

    .line 648
    .local v3, "dim":I
    const/high16 v4, 0x3c00000

    and-int/2addr v4, v2

    .line 649
    .local v4, "kind":I
    const v5, 0xfffff

    and-int v6, v2, v5

    .line 650
    .local v6, "value":I
    const/high16 v7, 0x1000000

    if-ne v4, v7, :cond_1

    .line 651
    iget-object v7, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    aget v7, v7, v6

    add-int v2, v3, v7

    goto :goto_1

    .line 652
    :cond_1
    const/high16 v7, 0x1400000

    if-ne v4, v7, :cond_2

    .line 653
    iget-object v7, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    array-length v8, v7

    sub-int/2addr v8, v6

    aget v7, v7, v8

    add-int v2, v3, v7

    .line 655
    :cond_2
    :goto_1
    if-ne p2, v2, :cond_4

    .line 656
    const/high16 v7, 0x800000

    if-ne p2, v0, :cond_3

    .line 657
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v7

    return v0

    .line 659
    :cond_3
    and-int v0, p2, v5

    .line 660
    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->getType(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v0

    or-int/2addr v0, v7

    .line 659
    return v0

    .line 645
    .end local v2    # "initializedType":I
    .end local v3    # "dim":I
    .end local v4    # "kind":I
    .end local v6    # "value":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 665
    .end local v1    # "i":I
    :cond_5
    return p2
.end method

.method private getLocal(I)I
    .locals 3
    .param p1, "localIndex"    # I

    .line 481
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    const/high16 v1, 0x1000000

    if-eqz v0, :cond_2

    array-length v2, v0

    if-lt p1, v2, :cond_0

    goto :goto_0

    .line 486
    :cond_0
    aget v2, v0, p1

    .line 487
    .local v2, "abstractType":I
    if-nez v2, :cond_1

    .line 490
    or-int/2addr v1, p1

    aput v1, v0, p1

    move v2, v1

    .line 492
    :cond_1
    return v2

    .line 484
    .end local v2    # "abstractType":I
    :cond_2
    :goto_0
    or-int v0, p1, v1

    return v0
.end method

.method private static merge(Lnet/bytebuddy/jar/asm/SymbolTable;I[II)Z
    .locals 10
    .param p0, "symbolTable"    # Lnet/bytebuddy/jar/asm/SymbolTable;
    .param p1, "sourceType"    # I
    .param p2, "dstTypes"    # [I
    .param p3, "dstIndex"    # I

    .line 1268
    aget v0, p2, p3

    .line 1269
    .local v0, "dstType":I
    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 1271
    return v1

    .line 1273
    :cond_0
    move v2, p1

    .line 1274
    .local v2, "srcType":I
    const v3, 0x3ffffff

    and-int/2addr v3, p1

    const v4, 0x400005

    if-ne v3, v4, :cond_2

    .line 1275
    if-ne v0, v4, :cond_1

    .line 1276
    return v1

    .line 1278
    :cond_1
    const v2, 0x400005

    .line 1280
    :cond_2
    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 1282
    aput v2, p2, p3

    .line 1283
    return v3

    .line 1286
    :cond_3
    const/high16 v5, -0x4000000

    and-int v6, v0, v5

    const/high16 v7, 0x3c00000

    const/high16 v8, 0x800000

    if-nez v6, :cond_8

    and-int v6, v0, v7

    if-ne v6, v8, :cond_4

    goto :goto_2

    .line 1325
    :cond_4
    if-ne v0, v4, :cond_7

    .line 1329
    and-int v4, v2, v5

    if-nez v4, :cond_6

    and-int v4, v2, v7

    if-ne v4, v8, :cond_5

    goto :goto_0

    :cond_5
    const/high16 v4, 0x400000

    goto :goto_1

    :cond_6
    :goto_0
    move v4, v2

    .local v4, "mergedType":I
    :goto_1
    goto :goto_4

    .line 1332
    .end local v4    # "mergedType":I
    :cond_7
    const/high16 v4, 0x400000

    .restart local v4    # "mergedType":I
    goto :goto_4

    .line 1288
    .end local v4    # "mergedType":I
    :cond_8
    :goto_2
    if-ne v2, v4, :cond_9

    .line 1290
    return v1

    .line 1291
    :cond_9
    const/high16 v4, -0x400000

    and-int v6, v2, v4

    and-int/2addr v4, v0

    const-string v9, "java/lang/Object"

    if-ne v6, v4, :cond_b

    .line 1293
    and-int v4, v0, v7

    if-ne v4, v8, :cond_a

    .line 1296
    and-int v4, v2, v5

    or-int/2addr v4, v8

    const v5, 0xfffff

    and-int v6, v2, v5

    and-int/2addr v5, v0

    .line 1299
    invoke-virtual {p0, v6, v5}, Lnet/bytebuddy/jar/asm/SymbolTable;->addMergedType(II)I

    move-result v5

    or-int/2addr v4, v5

    .restart local v4    # "mergedType":I
    goto :goto_4

    .line 1303
    .end local v4    # "mergedType":I
    :cond_a
    and-int v4, v2, v5

    add-int/2addr v4, v5

    .line 1304
    .local v4, "mergedDim":I
    or-int v5, v4, v8

    invoke-virtual {p0, v9}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v6

    or-int v4, v5, v6

    .line 1305
    .local v4, "mergedType":I
    goto :goto_4

    .line 1306
    .end local v4    # "mergedType":I
    :cond_b
    and-int v4, v2, v5

    if-nez v4, :cond_d

    and-int v4, v2, v7

    if-ne v4, v8, :cond_c

    goto :goto_3

    .line 1323
    :cond_c
    const/high16 v4, 0x400000

    .restart local v4    # "mergedType":I
    goto :goto_4

    .line 1311
    .end local v4    # "mergedType":I
    :cond_d
    :goto_3
    and-int v4, v2, v5

    .line 1312
    .local v4, "srcDim":I
    if-eqz v4, :cond_e

    and-int v6, v2, v7

    if-eq v6, v8, :cond_e

    .line 1313
    add-int/2addr v4, v5

    .line 1315
    :cond_e
    and-int v6, v0, v5

    .line 1316
    .local v6, "dstDim":I
    if-eqz v6, :cond_f

    and-int/2addr v7, v0

    if-eq v7, v8, :cond_f

    .line 1317
    add-int/2addr v6, v5

    .line 1319
    :cond_f
    nop

    .line 1320
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    or-int/2addr v5, v8

    invoke-virtual {p0, v9}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v7

    or-int v4, v5, v7

    .line 1321
    .end local v6    # "dstDim":I
    .local v4, "mergedType":I
    nop

    .line 1334
    :goto_4
    if-eq v4, v0, :cond_10

    .line 1335
    aput v4, p2, p3

    .line 1336
    return v3

    .line 1338
    :cond_10
    return v1
.end method

.method private pop()I
    .locals 2

    .line 567
    iget-short v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    if-lez v0, :cond_0

    .line 568
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    aget v0, v1, v0

    return v0

    .line 571
    :cond_0
    iget-short v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackStart:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackStart:S

    neg-int v0, v0

    const/high16 v1, 0x1400000

    or-int/2addr v0, v1

    return v0
.end method

.method private pop(I)V
    .locals 2
    .param p1, "elements"    # I

    .line 581
    iget-short v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    if-lt v0, p1, :cond_0

    .line 582
    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    goto :goto_0

    .line 586
    :cond_0
    iget-short v1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackStart:S

    sub-int v0, p1, v0

    sub-int/2addr v1, v0

    int-to-short v0, v1

    iput-short v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackStart:S

    .line 587
    const/4 v0, 0x0

    iput-short v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    .line 589
    :goto_0
    return-void
.end method

.method private pop(Ljava/lang/String;)V
    .locals 4
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 597
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 598
    .local v0, "firstDescriptorChar":C
    const/16 v1, 0x28

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v1, :cond_0

    .line 599
    invoke-static {p1}, Lnet/bytebuddy/jar/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v1

    shr-int/2addr v1, v3

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    goto :goto_1

    .line 600
    :cond_0
    const/16 v1, 0x4a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x44

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 603
    :cond_1
    invoke-direct {p0, v2}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    goto :goto_1

    .line 601
    :cond_2
    :goto_0
    invoke-direct {p0, v3}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 605
    :goto_1
    return-void
.end method

.method private push(I)V
    .locals 4
    .param p1, "abstractType"    # I

    .line 524
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    if-nez v0, :cond_0

    .line 525
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    .line 527
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    array-length v0, v0

    .line 528
    .local v0, "outputStackLength":I
    iget-short v1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    if-lt v1, v0, :cond_1

    .line 529
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    .line 530
    .local v1, "newOutputStack":[I
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 531
    iput-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    .line 534
    .end local v1    # "newOutputStack":[I
    :cond_1
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    iget-short v2, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    add-int/lit8 v3, v2, 0x1

    int-to-short v3, v3

    iput-short v3, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    aput p1, v1, v2

    .line 537
    iget-short v1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackStart:S

    add-int/2addr v1, v3

    int-to-short v1, v1

    .line 538
    .local v1, "outputStackSize":S
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->owner:Lnet/bytebuddy/jar/asm/Label;

    iget-short v2, v2, Lnet/bytebuddy/jar/asm/Label;->outputStackMax:S

    if-le v1, v2, :cond_2

    .line 539
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->owner:Lnet/bytebuddy/jar/asm/Label;

    iput-short v1, v2, Lnet/bytebuddy/jar/asm/Label;->outputStackMax:S

    .line 541
    :cond_2
    return-void
.end method

.method private push(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)V
    .locals 3
    .param p1, "symbolTable"    # Lnet/bytebuddy/jar/asm/SymbolTable;
    .param p2, "descriptor"    # Ljava/lang/String;

    .line 551
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_0

    invoke-static {p2}, Lnet/bytebuddy/jar/asm/Type;->getReturnTypeOffset(Ljava/lang/String;)I

    move-result v0

    .line 552
    .local v0, "typeDescriptorOffset":I
    :cond_0
    invoke-static {p1, p2, v0}, Lnet/bytebuddy/jar/asm/Frame;->getAbstractTypeFromDescriptor(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;I)I

    move-result v1

    .line 553
    .local v1, "abstractType":I
    if-eqz v1, :cond_2

    .line 554
    invoke-direct {p0, v1}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 555
    const v2, 0x400004

    if-eq v1, v2, :cond_1

    const v2, 0x400003

    if-ne v1, v2, :cond_2

    .line 556
    :cond_1
    const/high16 v2, 0x400000

    invoke-direct {p0, v2}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 559
    :cond_2
    return-void
.end method

.method static putAbstractType(Lnet/bytebuddy/jar/asm/SymbolTable;ILnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 6
    .param p0, "symbolTable"    # Lnet/bytebuddy/jar/asm/SymbolTable;
    .param p1, "abstractType"    # I
    .param p2, "output"    # Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1409
    const/high16 v0, -0x4000000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x1a

    .line 1410
    .local v0, "arrayDimensions":I
    const/4 v1, 0x7

    const/high16 v2, 0x3c00000

    const v3, 0xfffff

    if-nez v0, :cond_0

    .line 1411
    and-int/2addr v3, p1

    .line 1412
    .local v3, "typeValue":I
    and-int/2addr v2, p1

    sparse-switch v2, :sswitch_data_0

    .line 1425
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1422
    :sswitch_0
    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    invoke-virtual {p0, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->getType(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v2

    iget-wide v4, v2, Lnet/bytebuddy/jar/asm/Symbol;->data:J

    long-to-int v2, v4

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1423
    goto :goto_0

    .line 1417
    :sswitch_1
    nop

    .line 1418
    invoke-virtual {p2, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v1

    .line 1419
    invoke-virtual {p0, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->getType(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v2

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v2

    iget v2, v2, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v1, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1420
    goto :goto_0

    .line 1414
    :sswitch_2
    invoke-virtual {p2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1415
    nop

    .line 1427
    .end local v3    # "typeValue":I
    :goto_0
    goto/16 :goto_3

    .line 1429
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1430
    .local v4, "typeDescriptor":Ljava/lang/StringBuilder;
    :goto_1
    add-int/lit8 v5, v0, -0x1

    .end local v0    # "arrayDimensions":I
    .local v5, "arrayDimensions":I
    if-lez v0, :cond_1

    .line 1431
    const/16 v0, 0x5b

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v5

    goto :goto_1

    .line 1433
    :cond_1
    and-int v0, p1, v2

    const/high16 v2, 0x800000

    if-ne v0, v2, :cond_2

    .line 1434
    nop

    .line 1435
    const/16 v0, 0x4c

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int v2, p1, v3

    .line 1436
    invoke-virtual {p0, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->getType(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v2

    iget-object v2, v2, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1437
    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1439
    :cond_2
    and-int v0, p1, v3

    packed-switch v0, :pswitch_data_0

    .line 1465
    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1450
    :pswitch_1
    const/16 v0, 0x53

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1451
    goto :goto_2

    .line 1447
    :pswitch_2
    const/16 v0, 0x43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1448
    goto :goto_2

    .line 1444
    :pswitch_3
    const/16 v0, 0x42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1445
    goto :goto_2

    .line 1441
    :pswitch_4
    const/16 v0, 0x5a

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1442
    goto :goto_2

    .line 1459
    :pswitch_5
    const/16 v0, 0x4a

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1460
    goto :goto_2

    .line 1462
    :pswitch_6
    const/16 v0, 0x44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1463
    goto :goto_2

    .line 1456
    :pswitch_7
    const/16 v0, 0x46

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1457
    goto :goto_2

    .line 1453
    :pswitch_8
    const/16 v0, 0x49

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1454
    nop

    .line 1468
    :goto_2
    nop

    .line 1469
    invoke-virtual {p2, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    .line 1470
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v1

    iget v1, v1, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move v0, v5

    .line 1472
    .end local v4    # "typeDescriptor":Ljava/lang/StringBuilder;
    .end local v5    # "arrayDimensions":I
    .restart local v0    # "arrayDimensions":I
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x400000 -> :sswitch_2
        0x800000 -> :sswitch_1
        0xc00000 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private setLocal(II)V
    .locals 4
    .param p1, "localIndex"    # I
    .param p2, "abstractType"    # I

    .line 504
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    if-nez v0, :cond_0

    .line 505
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    .line 507
    :cond_0
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    array-length v0, v0

    .line 508
    .local v0, "outputLocalsLength":I
    if-lt p1, v0, :cond_1

    .line 509
    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [I

    .line 510
    .local v1, "newOutputLocals":[I
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 511
    iput-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    .line 514
    .end local v1    # "newOutputLocals":[I
    :cond_1
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    aput p2, v1, p1

    .line 515
    return-void
.end method


# virtual methods
.method final accept(Lnet/bytebuddy/jar/asm/MethodWriter;)V
    .locals 13
    .param p1, "methodWriter"    # Lnet/bytebuddy/jar/asm/MethodWriter;

    .line 1356
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    .line 1357
    .local v0, "localTypes":[I
    const/4 v1, 0x0

    .line 1358
    .local v1, "numLocal":I
    const/4 v2, 0x0

    .line 1359
    .local v2, "numTrailingTop":I
    const/4 v3, 0x0

    .line 1360
    .local v3, "i":I
    :goto_0
    array-length v4, v0

    const v5, 0x400003

    const/4 v6, 0x2

    const v7, 0x400004

    const/4 v8, 0x1

    if-ge v3, v4, :cond_3

    .line 1361
    aget v4, v0, v3

    .line 1362
    .local v4, "localType":I
    if-eq v4, v7, :cond_1

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    move v6, v8

    :cond_1
    :goto_1
    add-int/2addr v3, v6

    .line 1363
    const/high16 v5, 0x400000

    if-ne v4, v5, :cond_2

    .line 1364
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1366
    :cond_2
    add-int/lit8 v5, v2, 0x1

    add-int/2addr v1, v5

    .line 1367
    const/4 v2, 0x0

    .line 1369
    .end local v4    # "localType":I
    :goto_2
    goto :goto_0

    .line 1371
    :cond_3
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    .line 1372
    .local v4, "stackTypes":[I
    const/4 v9, 0x0

    .line 1373
    .local v9, "numStack":I
    const/4 v3, 0x0

    .line 1374
    :goto_3
    array-length v10, v4

    if-ge v3, v10, :cond_6

    .line 1375
    aget v10, v4, v3

    .line 1376
    .local v10, "stackType":I
    if-eq v10, v7, :cond_5

    if-ne v10, v5, :cond_4

    goto :goto_4

    :cond_4
    move v11, v8

    goto :goto_5

    :cond_5
    :goto_4
    move v11, v6

    :goto_5
    add-int/2addr v3, v11

    .line 1377
    nop

    .end local v10    # "stackType":I
    add-int/lit8 v9, v9, 0x1

    .line 1378
    goto :goto_3

    .line 1380
    :cond_6
    iget-object v10, p0, Lnet/bytebuddy/jar/asm/Frame;->owner:Lnet/bytebuddy/jar/asm/Label;

    iget v10, v10, Lnet/bytebuddy/jar/asm/Label;->bytecodeOffset:I

    invoke-virtual {p1, v10, v1, v9}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitFrameStart(III)I

    move-result v10

    .line 1381
    .local v10, "frameIndex":I
    const/4 v3, 0x0

    .line 1382
    :goto_6
    add-int/lit8 v11, v1, -0x1

    .end local v1    # "numLocal":I
    .local v11, "numLocal":I
    if-lez v1, :cond_9

    .line 1383
    aget v1, v0, v3

    .line 1384
    .local v1, "localType":I
    if-eq v1, v7, :cond_8

    if-ne v1, v5, :cond_7

    goto :goto_7

    :cond_7
    move v12, v8

    goto :goto_8

    :cond_8
    :goto_7
    move v12, v6

    :goto_8
    add-int/2addr v3, v12

    .line 1385
    add-int/lit8 v12, v10, 0x1

    .end local v10    # "frameIndex":I
    .local v12, "frameIndex":I
    invoke-virtual {p1, v10, v1}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitAbstractType(II)V

    .line 1386
    .end local v1    # "localType":I
    move v1, v11

    move v10, v12

    goto :goto_6

    .line 1387
    .end local v12    # "frameIndex":I
    .restart local v10    # "frameIndex":I
    :cond_9
    const/4 v1, 0x0

    .line 1388
    .end local v3    # "i":I
    .local v1, "i":I
    :goto_9
    add-int/lit8 v3, v9, -0x1

    .end local v9    # "numStack":I
    .local v3, "numStack":I
    if-lez v9, :cond_c

    .line 1389
    aget v9, v4, v1

    .line 1390
    .local v9, "stackType":I
    if-eq v9, v7, :cond_b

    if-ne v9, v5, :cond_a

    goto :goto_a

    :cond_a
    move v12, v8

    goto :goto_b

    :cond_b
    :goto_a
    move v12, v6

    :goto_b
    add-int/2addr v1, v12

    .line 1391
    add-int/lit8 v12, v10, 0x1

    .end local v10    # "frameIndex":I
    .restart local v12    # "frameIndex":I
    invoke-virtual {p1, v10, v9}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitAbstractType(II)V

    .line 1392
    .end local v9    # "stackType":I
    move v9, v3

    move v10, v12

    goto :goto_9

    .line 1393
    .end local v12    # "frameIndex":I
    .restart local v10    # "frameIndex":I
    :cond_c
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/MethodWriter;->visitFrameEnd()V

    .line 1394
    return-void
.end method

.method final copyFrom(Lnet/bytebuddy/jar/asm/Frame;)V
    .locals 1
    .param p1, "frame"    # Lnet/bytebuddy/jar/asm/Frame;

    .line 255
    iget-object v0, p1, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    .line 256
    iget-object v0, p1, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    .line 257
    const/4 v0, 0x0

    iput-short v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackStart:S

    .line 258
    iget-object v0, p1, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    .line 259
    iget-object v0, p1, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    .line 260
    iget-short v0, p1, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    iput-short v0, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    .line 261
    iget v0, p1, Lnet/bytebuddy/jar/asm/Frame;->initializationCount:I

    iput v0, p0, Lnet/bytebuddy/jar/asm/Frame;->initializationCount:I

    .line 262
    iget-object v0, p1, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    .line 263
    return-void
.end method

.method execute(IILnet/bytebuddy/jar/asm/Symbol;Lnet/bytebuddy/jar/asm/SymbolTable;)V
    .locals 16
    .param p1, "opcode"    # I
    .param p2, "arg"    # I
    .param p3, "argSymbol"    # Lnet/bytebuddy/jar/asm/Symbol;
    .param p4, "symbolTable"    # Lnet/bytebuddy/jar/asm/SymbolTable;

    .line 687
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v8, 0x3

    const/16 v10, 0x5b

    const/4 v11, 0x0

    const/4 v13, 0x4

    const v14, 0x400002

    const/high16 v15, 0x800000

    const v6, 0x400001

    const v5, 0x400003

    const v7, 0x400004

    const/high16 v12, 0x400000

    const/4 v9, 0x1

    packed-switch v1, :pswitch_data_0

    .line 1106
    :pswitch_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 1102
    :pswitch_1
    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 1103
    iget-object v5, v3, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)V

    .line 1104
    goto/16 :goto_5

    .line 1093
    :pswitch_2
    iget-object v5, v3, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    .line 1094
    .local v5, "castType":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    .line 1095
    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v10, :cond_0

    .line 1096
    invoke-direct {v0, v4, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1098
    :cond_0
    invoke-virtual {v4, v5}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v6, v15

    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 1100
    goto/16 :goto_5

    .line 1084
    .end local v5    # "castType":Ljava/lang/String;
    :pswitch_3
    iget-object v5, v3, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    .line 1085
    .local v5, "arrayElementType":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    .line 1086
    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v10, :cond_1

    .line 1087
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v4, v6}, Lnet/bytebuddy/jar/asm/Frame;->push(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1089
    :cond_1
    const/high16 v6, 0x4800000

    invoke-virtual {v4, v5}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v7

    or-int/2addr v6, v7

    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 1091
    goto/16 :goto_5

    .line 1053
    .end local v5    # "arrayElementType":Ljava/lang/String;
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    .line 1054
    packed-switch v2, :pswitch_data_1

    .line 1080
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 1077
    :pswitch_5
    const v5, 0x4400004

    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 1078
    goto/16 :goto_5

    .line 1068
    :pswitch_6
    const v5, 0x4400001

    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 1069
    goto/16 :goto_5

    .line 1065
    :pswitch_7
    const v5, 0x440000c

    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 1066
    goto/16 :goto_5

    .line 1062
    :pswitch_8
    const v5, 0x440000a

    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 1063
    goto/16 :goto_5

    .line 1074
    :pswitch_9
    const v5, 0x4400003

    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 1075
    goto/16 :goto_5

    .line 1071
    :pswitch_a
    const v5, 0x4400002

    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 1072
    goto/16 :goto_5

    .line 1059
    :pswitch_b
    const v5, 0x440000b

    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 1060
    goto/16 :goto_5

    .line 1056
    :pswitch_c
    const v5, 0x4400009

    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 1057
    goto/16 :goto_5

    .line 1050
    :pswitch_d
    iget-object v5, v3, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addUninitializedType(Ljava/lang/String;I)I

    move-result v5

    const/high16 v6, 0xc00000

    or-int/2addr v5, v6

    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 1051
    goto/16 :goto_5

    .line 1046
    :pswitch_e
    iget-object v5, v3, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->pop(Ljava/lang/String;)V

    .line 1047
    iget-object v5, v3, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)V

    .line 1048
    goto/16 :goto_5

    .line 1036
    :pswitch_f
    iget-object v5, v3, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->pop(Ljava/lang/String;)V

    .line 1037
    const/16 v5, 0xb8

    if-eq v1, v5, :cond_2

    .line 1038
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v5

    .line 1039
    .local v5, "abstractType1":I
    const/16 v6, 0xb7

    if-ne v1, v6, :cond_2

    iget-object v6, v3, Lnet/bytebuddy/jar/asm/Symbol;->name:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3c

    if-ne v6, v7, :cond_2

    .line 1040
    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->addInitializedType(I)V

    .line 1043
    .end local v5    # "abstractType1":I
    :cond_2
    iget-object v5, v3, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)V

    .line 1044
    goto/16 :goto_5

    .line 1029
    :pswitch_10
    iget-object v5, v3, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->pop(Ljava/lang/String;)V

    .line 1030
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    .line 1031
    goto/16 :goto_5

    .line 1025
    :pswitch_11
    invoke-direct {v0, v9}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 1026
    iget-object v5, v3, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)V

    .line 1027
    goto/16 :goto_5

    .line 1022
    :pswitch_12
    iget-object v5, v3, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->pop(Ljava/lang/String;)V

    .line 1023
    goto/16 :goto_5

    .line 1019
    :pswitch_13
    iget-object v5, v3, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)V

    .line 1020
    goto/16 :goto_5

    .line 1017
    :pswitch_14
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "JSR/RET are not supported with computeFrames option"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1012
    :pswitch_15
    invoke-direct {v0, v13}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 1013
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 1014
    goto/16 :goto_5

    .line 1006
    :pswitch_16
    invoke-direct {v0, v9}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 1007
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 1008
    goto/16 :goto_5

    .line 999
    :pswitch_17
    invoke-direct {v0, v9}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 1000
    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 1001
    invoke-direct {v0, v12}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 1002
    goto/16 :goto_5

    .line 994
    :pswitch_18
    invoke-direct {v0, v9}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 995
    invoke-direct {v0, v14}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 996
    goto/16 :goto_5

    .line 989
    :pswitch_19
    invoke-direct {v0, v9}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 990
    invoke-direct {v0, v7}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 991
    invoke-direct {v0, v12}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 992
    goto/16 :goto_5

    .line 985
    :pswitch_1a
    invoke-direct {v0, v2, v6}, Lnet/bytebuddy/jar/asm/Frame;->setLocal(II)V

    .line 986
    goto/16 :goto_5

    .line 980
    :pswitch_1b
    invoke-direct {v0, v8}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 981
    invoke-direct {v0, v7}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 982
    invoke-direct {v0, v12}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 983
    goto/16 :goto_5

    .line 973
    :pswitch_1c
    invoke-direct {v0, v13}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 974
    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 975
    invoke-direct {v0, v12}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 976
    goto/16 :goto_5

    .line 953
    :pswitch_1d
    invoke-direct {v0, v13}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 954
    invoke-direct {v0, v7}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 955
    invoke-direct {v0, v12}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 956
    goto/16 :goto_5

    .line 918
    :pswitch_1e
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v5

    .line 919
    .restart local v5    # "abstractType1":I
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v6

    .line 920
    .local v6, "abstractType2":I
    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 921
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 922
    goto/16 :goto_5

    .line 906
    .end local v5    # "abstractType1":I
    .end local v6    # "abstractType2":I
    :pswitch_1f
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v5

    .line 907
    .restart local v5    # "abstractType1":I
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v6

    .line 908
    .restart local v6    # "abstractType2":I
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v7

    .line 909
    .local v7, "abstractType3":I
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v8

    .line 910
    .local v8, "abstractType4":I
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 911
    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 912
    invoke-direct {v0, v8}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 913
    invoke-direct {v0, v7}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 914
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 915
    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 916
    goto/16 :goto_5

    .line 896
    .end local v5    # "abstractType1":I
    .end local v6    # "abstractType2":I
    .end local v7    # "abstractType3":I
    .end local v8    # "abstractType4":I
    :pswitch_20
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v5

    .line 897
    .restart local v5    # "abstractType1":I
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v6

    .line 898
    .restart local v6    # "abstractType2":I
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v7

    .line 899
    .restart local v7    # "abstractType3":I
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 900
    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 901
    invoke-direct {v0, v7}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 902
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 903
    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 904
    goto/16 :goto_5

    .line 888
    .end local v5    # "abstractType1":I
    .end local v6    # "abstractType2":I
    .end local v7    # "abstractType3":I
    :pswitch_21
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v5

    .line 889
    .restart local v5    # "abstractType1":I
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v6

    .line 890
    .restart local v6    # "abstractType2":I
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 891
    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 892
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 893
    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 894
    goto/16 :goto_5

    .line 879
    .end local v5    # "abstractType1":I
    .end local v6    # "abstractType2":I
    :pswitch_22
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v5

    .line 880
    .restart local v5    # "abstractType1":I
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v6

    .line 881
    .restart local v6    # "abstractType2":I
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v7

    .line 882
    .restart local v7    # "abstractType3":I
    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 883
    invoke-direct {v0, v7}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 884
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 885
    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 886
    goto/16 :goto_5

    .line 872
    .end local v5    # "abstractType1":I
    .end local v6    # "abstractType2":I
    .end local v7    # "abstractType3":I
    :pswitch_23
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v5

    .line 873
    .restart local v5    # "abstractType1":I
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v6

    .line 874
    .restart local v6    # "abstractType2":I
    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 875
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 876
    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 877
    goto/16 :goto_5

    .line 867
    .end local v5    # "abstractType1":I
    .end local v6    # "abstractType2":I
    :pswitch_24
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v5

    .line 868
    .restart local v5    # "abstractType1":I
    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 869
    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 870
    goto/16 :goto_5

    .line 864
    .end local v5    # "abstractType1":I
    :pswitch_25
    const/4 v5, 0x2

    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 865
    goto/16 :goto_5

    .line 851
    :pswitch_26
    invoke-direct {v0, v9}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 852
    goto/16 :goto_5

    .line 832
    :pswitch_27
    invoke-direct {v0, v13}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 833
    goto/16 :goto_5

    .line 828
    :pswitch_28
    invoke-direct {v0, v8}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 829
    goto/16 :goto_5

    .line 806
    :pswitch_29
    invoke-direct {v0, v9}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 807
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v6

    .line 808
    .local v6, "abstractType1":I
    invoke-direct {v0, v2, v6}, Lnet/bytebuddy/jar/asm/Frame;->setLocal(II)V

    .line 809
    add-int/lit8 v8, v2, 0x1

    invoke-direct {v0, v8, v12}, Lnet/bytebuddy/jar/asm/Frame;->setLocal(II)V

    .line 810
    if-lez v2, :cond_c

    .line 811
    add-int/lit8 v8, v2, -0x1

    invoke-direct {v0, v8}, Lnet/bytebuddy/jar/asm/Frame;->getLocal(I)I

    move-result v8

    .line 812
    .local v8, "previousLocalType":I
    if-eq v8, v7, :cond_5

    if-ne v8, v5, :cond_3

    goto :goto_0

    .line 814
    :cond_3
    const/high16 v5, 0x3c00000

    and-int v7, v8, v5

    const/high16 v9, 0x1000000

    if-eq v7, v9, :cond_4

    and-int/2addr v5, v8

    const/high16 v7, 0x1400000

    if-ne v5, v7, :cond_6

    .line 818
    :cond_4
    add-int/lit8 v5, v2, -0x1

    const/high16 v7, 0x100000

    or-int/2addr v7, v8

    invoke-direct {v0, v5, v7}, Lnet/bytebuddy/jar/asm/Frame;->setLocal(II)V

    goto :goto_1

    .line 813
    :cond_5
    :goto_0
    add-int/lit8 v5, v2, -0x1

    invoke-direct {v0, v5, v12}, Lnet/bytebuddy/jar/asm/Frame;->setLocal(II)V

    .line 820
    .end local v8    # "previousLocalType":I
    :cond_6
    :goto_1
    goto/16 :goto_5

    .line 790
    .end local v6    # "abstractType1":I
    :pswitch_2a
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v6

    .line 791
    .restart local v6    # "abstractType1":I
    invoke-direct {v0, v2, v6}, Lnet/bytebuddy/jar/asm/Frame;->setLocal(II)V

    .line 792
    if-lez v2, :cond_c

    .line 793
    add-int/lit8 v8, v2, -0x1

    invoke-direct {v0, v8}, Lnet/bytebuddy/jar/asm/Frame;->getLocal(I)I

    move-result v8

    .line 794
    .restart local v8    # "previousLocalType":I
    if-eq v8, v7, :cond_9

    if-ne v8, v5, :cond_7

    goto :goto_2

    .line 796
    :cond_7
    const/high16 v5, 0x3c00000

    and-int v7, v8, v5

    const/high16 v9, 0x1000000

    if-eq v7, v9, :cond_8

    and-int/2addr v5, v8

    const/high16 v7, 0x1400000

    if-ne v5, v7, :cond_a

    .line 800
    :cond_8
    add-int/lit8 v5, v2, -0x1

    const/high16 v7, 0x100000

    or-int/2addr v7, v8

    invoke-direct {v0, v5, v7}, Lnet/bytebuddy/jar/asm/Frame;->setLocal(II)V

    goto :goto_3

    .line 795
    :cond_9
    :goto_2
    add-int/lit8 v5, v2, -0x1

    invoke-direct {v0, v5, v12}, Lnet/bytebuddy/jar/asm/Frame;->setLocal(II)V

    .line 802
    .end local v8    # "previousLocalType":I
    :cond_a
    :goto_3
    goto/16 :goto_5

    .line 783
    .end local v6    # "abstractType1":I
    :pswitch_2b
    invoke-direct {v0, v9}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 784
    invoke-direct/range {p0 .. p0}, Lnet/bytebuddy/jar/asm/Frame;->pop()I

    move-result v5

    .line 785
    .restart local v5    # "abstractType1":I
    const v6, 0x400005

    if-ne v5, v6, :cond_b

    move v6, v5

    goto :goto_4

    :cond_b
    const/high16 v6, -0x4000000

    add-int/2addr v6, v5

    :goto_4
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 786
    goto/16 :goto_5

    .line 778
    .end local v5    # "abstractType1":I
    :pswitch_2c
    const/4 v8, 0x2

    invoke-direct {v0, v8}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 779
    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 780
    invoke-direct {v0, v12}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 781
    goto/16 :goto_5

    .line 965
    :pswitch_2d
    const/4 v8, 0x2

    invoke-direct {v0, v8}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 966
    invoke-direct {v0, v14}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 967
    goto/16 :goto_5

    .line 772
    :pswitch_2e
    const/4 v8, 0x2

    invoke-direct {v0, v8}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 773
    invoke-direct {v0, v7}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 774
    invoke-direct {v0, v12}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 775
    goto/16 :goto_5

    .line 942
    :pswitch_2f
    const/4 v8, 0x2

    invoke-direct {v0, v8}, Lnet/bytebuddy/jar/asm/Frame;->pop(I)V

    .line 943
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 944
    goto/16 :goto_5

    .line 768
    :pswitch_30
    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/Frame;->getLocal(I)I

    move-result v5

    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 769
    goto/16 :goto_5

    .line 733
    :pswitch_31
    iget v8, v3, Lnet/bytebuddy/jar/asm/Symbol;->tag:I

    packed-switch v8, :pswitch_data_2

    .line 764
    :pswitch_32
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 761
    :pswitch_33
    iget-object v5, v3, Lnet/bytebuddy/jar/asm/Symbol;->value:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;)V

    .line 762
    goto :goto_5

    .line 755
    :pswitch_34
    const-string v5, "java/lang/invoke/MethodType"

    invoke-virtual {v4, v5}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v5

    or-int/2addr v5, v15

    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 756
    goto :goto_5

    .line 758
    :pswitch_35
    const-string v5, "java/lang/invoke/MethodHandle"

    invoke-virtual {v4, v5}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v5

    or-int/2addr v5, v15

    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 759
    goto :goto_5

    .line 752
    :pswitch_36
    const-string v5, "java/lang/String"

    invoke-virtual {v4, v5}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v5

    or-int/2addr v5, v15

    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 753
    goto :goto_5

    .line 749
    :pswitch_37
    const-string v5, "java/lang/Class"

    invoke-virtual {v4, v5}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v5

    or-int/2addr v5, v15

    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 750
    goto :goto_5

    .line 745
    :pswitch_38
    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 746
    invoke-direct {v0, v12}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 747
    goto :goto_5

    .line 738
    :pswitch_39
    invoke-direct {v0, v7}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 739
    invoke-direct {v0, v12}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 740
    goto :goto_5

    .line 742
    :pswitch_3a
    invoke-direct {v0, v14}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 743
    goto :goto_5

    .line 735
    :pswitch_3b
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 736
    goto :goto_5

    .line 729
    :pswitch_3c
    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 730
    invoke-direct {v0, v12}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 731
    goto :goto_5

    .line 724
    :pswitch_3d
    invoke-direct {v0, v14}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 725
    goto :goto_5

    .line 717
    :pswitch_3e
    invoke-direct {v0, v7}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 718
    invoke-direct {v0, v12}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 719
    goto :goto_5

    .line 712
    :pswitch_3f
    invoke-direct {v0, v6}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 713
    goto :goto_5

    .line 700
    :pswitch_40
    const v5, 0x400005

    invoke-direct {v0, v5}, Lnet/bytebuddy/jar/asm/Frame;->push(I)V

    .line 701
    goto :goto_5

    .line 698
    :pswitch_41
    nop

    .line 1108
    :cond_c
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3e
        :pswitch_3e
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_3c
        :pswitch_3c
        :pswitch_3f
        :pswitch_3f
        :pswitch_31
        :pswitch_0
        :pswitch_0
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
        :pswitch_2a
        :pswitch_29
        :pswitch_2a
        :pswitch_29
        :pswitch_2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_28
        :pswitch_27
        :pswitch_28
        :pswitch_27
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_2f
        :pswitch_1d
        :pswitch_2d
        :pswitch_1c
        :pswitch_2f
        :pswitch_1d
        :pswitch_2d
        :pswitch_1c
        :pswitch_2f
        :pswitch_1d
        :pswitch_2d
        :pswitch_1c
        :pswitch_2f
        :pswitch_1d
        :pswitch_2d
        :pswitch_1c
        :pswitch_2f
        :pswitch_1d
        :pswitch_2d
        :pswitch_1c
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_2f
        :pswitch_1b
        :pswitch_2f
        :pswitch_1b
        :pswitch_2f
        :pswitch_1b
        :pswitch_2f
        :pswitch_1d
        :pswitch_2f
        :pswitch_1d
        :pswitch_2f
        :pswitch_1d
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_2f
        :pswitch_2d
        :pswitch_2c
        :pswitch_16
        :pswitch_19
        :pswitch_17
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_15
        :pswitch_2f
        :pswitch_2f
        :pswitch_15
        :pswitch_15
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_41
        :pswitch_14
        :pswitch_14
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_25
        :pswitch_26
        :pswitch_25
        :pswitch_26
        :pswitch_41
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_4
        :pswitch_3
        :pswitch_16
        :pswitch_26
        :pswitch_2
        :pswitch_16
        :pswitch_26
        :pswitch_26
        :pswitch_0
        :pswitch_1
        :pswitch_26
        :pswitch_26
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_35
        :pswitch_34
        :pswitch_33
    .end packed-switch
.end method

.method final getInputStackSize()I
    .locals 1

    .line 467
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    array-length v0, v0

    return v0
.end method

.method final merge(Lnet/bytebuddy/jar/asm/SymbolTable;Lnet/bytebuddy/jar/asm/Frame;I)Z
    .locals 9
    .param p1, "symbolTable"    # Lnet/bytebuddy/jar/asm/SymbolTable;
    .param p2, "dstFrame"    # Lnet/bytebuddy/jar/asm/Frame;
    .param p3, "catchTypeIndex"    # I

    .line 1164
    const/4 v0, 0x0

    .line 1169
    .local v0, "frameChanged":Z
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    array-length v1, v1

    .line 1170
    .local v1, "numLocal":I
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    array-length v2, v2

    .line 1171
    .local v2, "numStack":I
    iget-object v3, p2, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    if-nez v3, :cond_0

    .line 1172
    new-array v3, v1, [I

    iput-object v3, p2, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    .line 1173
    const/4 v0, 0x1

    .line 1175
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 1177
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/Frame;->outputLocals:[I

    if-eqz v4, :cond_2

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 1178
    aget v4, v4, v3

    .line 1179
    .local v4, "abstractOutputType":I
    if-nez v4, :cond_1

    .line 1182
    iget-object v5, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    aget v5, v5, v3

    .local v5, "concreteOutputType":I
    goto :goto_1

    .line 1184
    .end local v5    # "concreteOutputType":I
    :cond_1
    invoke-direct {p0, v4, v2}, Lnet/bytebuddy/jar/asm/Frame;->getConcreteOutputType(II)I

    move-result v5

    .line 1186
    .end local v4    # "abstractOutputType":I
    .restart local v5    # "concreteOutputType":I
    :goto_1
    goto :goto_2

    .line 1189
    .end local v5    # "concreteOutputType":I
    :cond_2
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    aget v5, v4, v3

    .line 1194
    .restart local v5    # "concreteOutputType":I
    :goto_2
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    if-eqz v4, :cond_3

    .line 1195
    invoke-direct {p0, p1, v5}, Lnet/bytebuddy/jar/asm/Frame;->getInitializedType(Lnet/bytebuddy/jar/asm/SymbolTable;I)I

    move-result v5

    .line 1197
    :cond_3
    iget-object v4, p2, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    invoke-static {p1, v5, v4, v3}, Lnet/bytebuddy/jar/asm/Frame;->merge(Lnet/bytebuddy/jar/asm/SymbolTable;I[II)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1175
    .end local v5    # "concreteOutputType":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1205
    .end local v3    # "i":I
    :cond_4
    if-lez p3, :cond_7

    .line 1206
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v1, :cond_5

    .line 1207
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    aget v4, v4, v3

    iget-object v5, p2, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    invoke-static {p1, v4, v5, v3}, Lnet/bytebuddy/jar/asm/Frame;->merge(Lnet/bytebuddy/jar/asm/SymbolTable;I[II)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1206
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1209
    .end local v3    # "i":I
    :cond_5
    iget-object v3, p2, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    if-nez v3, :cond_6

    .line 1210
    const/4 v3, 0x1

    new-array v3, v3, [I

    iput-object v3, p2, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    .line 1211
    const/4 v0, 0x1

    .line 1213
    :cond_6
    iget-object v3, p2, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    const/4 v4, 0x0

    invoke-static {p1, p3, v3, v4}, Lnet/bytebuddy/jar/asm/Frame;->merge(Lnet/bytebuddy/jar/asm/SymbolTable;I[II)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1214
    return v0

    .line 1220
    :cond_7
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    array-length v3, v3

    iget-short v4, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackStart:S

    add-int/2addr v3, v4

    .line 1221
    .local v3, "numInputStack":I
    iget-object v4, p2, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    if-nez v4, :cond_8

    .line 1222
    iget-short v4, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    add-int/2addr v4, v3

    new-array v4, v4, [I

    iput-object v4, p2, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    .line 1223
    const/4 v0, 0x1

    .line 1228
    :cond_8
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v3, :cond_a

    .line 1229
    iget-object v5, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    aget v5, v5, v4

    .line 1230
    .restart local v5    # "concreteOutputType":I
    iget-object v6, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    if-eqz v6, :cond_9

    .line 1231
    invoke-direct {p0, p1, v5}, Lnet/bytebuddy/jar/asm/Frame;->getInitializedType(Lnet/bytebuddy/jar/asm/SymbolTable;I)I

    move-result v5

    .line 1233
    :cond_9
    iget-object v6, p2, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    invoke-static {p1, v5, v6, v4}, Lnet/bytebuddy/jar/asm/Frame;->merge(Lnet/bytebuddy/jar/asm/SymbolTable;I[II)Z

    move-result v6

    or-int/2addr v0, v6

    .line 1228
    .end local v5    # "concreteOutputType":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1237
    .end local v4    # "i":I
    :cond_a
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5
    iget-short v5, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    if-ge v4, v5, :cond_c

    .line 1238
    iget-object v5, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStack:[I

    aget v5, v5, v4

    .line 1239
    .local v5, "abstractOutputType":I
    invoke-direct {p0, v5, v2}, Lnet/bytebuddy/jar/asm/Frame;->getConcreteOutputType(II)I

    move-result v6

    .line 1240
    .local v6, "concreteOutputType":I
    iget-object v7, p0, Lnet/bytebuddy/jar/asm/Frame;->initializations:[I

    if-eqz v7, :cond_b

    .line 1241
    invoke-direct {p0, p1, v6}, Lnet/bytebuddy/jar/asm/Frame;->getInitializedType(Lnet/bytebuddy/jar/asm/SymbolTable;I)I

    move-result v6

    .line 1243
    :cond_b
    iget-object v7, p2, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    add-int v8, v3, v4

    .line 1244
    invoke-static {p1, v6, v7, v8}, Lnet/bytebuddy/jar/asm/Frame;->merge(Lnet/bytebuddy/jar/asm/SymbolTable;I[II)Z

    move-result v7

    or-int/2addr v0, v7

    .line 1237
    .end local v5    # "abstractOutputType":I
    .end local v6    # "concreteOutputType":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1246
    .end local v4    # "i":I
    :cond_c
    return v0
.end method

.method final setInputFrameFromApiFormat(Lnet/bytebuddy/jar/asm/SymbolTable;I[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 8
    .param p1, "symbolTable"    # Lnet/bytebuddy/jar/asm/SymbolTable;
    .param p2, "numLocal"    # I
    .param p3, "local"    # [Ljava/lang/Object;
    .param p4, "numStack"    # I
    .param p5, "stack"    # [Ljava/lang/Object;

    .line 438
    const/4 v0, 0x0

    .line 439
    .local v0, "inputLocalIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/high16 v2, 0x400000

    if-ge v1, p2, :cond_2

    .line 440
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "inputLocalIndex":I
    .local v4, "inputLocalIndex":I
    aget-object v5, p3, v1

    invoke-static {p1, v5}, Lnet/bytebuddy/jar/asm/Frame;->getAbstractTypeFromApiFormat(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/Object;)I

    move-result v5

    aput v5, v3, v0

    .line 441
    aget-object v0, p3, v1

    sget-object v3, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v0, v3, :cond_1

    aget-object v0, p3, v1

    sget-object v3, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v0, v3, :cond_0

    goto :goto_1

    :cond_0
    move v0, v4

    goto :goto_2

    .line 442
    :cond_1
    :goto_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "inputLocalIndex":I
    .local v3, "inputLocalIndex":I
    aput v2, v0, v4

    move v0, v3

    .line 439
    .end local v3    # "inputLocalIndex":I
    .restart local v0    # "inputLocalIndex":I
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 445
    .end local v1    # "i":I
    :cond_2
    :goto_3
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    array-length v3, v1

    if-ge v0, v3, :cond_3

    .line 446
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "inputLocalIndex":I
    .restart local v3    # "inputLocalIndex":I
    aput v2, v1, v0

    move v0, v3

    goto :goto_3

    .line 448
    .end local v3    # "inputLocalIndex":I
    .restart local v0    # "inputLocalIndex":I
    :cond_3
    const/4 v1, 0x0

    .line 449
    .local v1, "numStackTop":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, p4, :cond_6

    .line 450
    aget-object v4, p5, v3

    sget-object v5, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v4, v5, :cond_4

    aget-object v4, p5, v3

    sget-object v5, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v4, v5, :cond_5

    .line 451
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 449
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 454
    .end local v3    # "i":I
    :cond_6
    add-int v3, p4, v1

    new-array v3, v3, [I

    iput-object v3, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    .line 455
    const/4 v3, 0x0

    .line 456
    .local v3, "inputStackIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    if-ge v4, p4, :cond_9

    .line 457
    iget-object v5, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "inputStackIndex":I
    .local v6, "inputStackIndex":I
    aget-object v7, p5, v4

    invoke-static {p1, v7}, Lnet/bytebuddy/jar/asm/Frame;->getAbstractTypeFromApiFormat(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/Object;)I

    move-result v7

    aput v7, v5, v3

    .line 458
    aget-object v3, p5, v4

    sget-object v5, Lnet/bytebuddy/jar/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v3, v5, :cond_8

    aget-object v3, p5, v4

    sget-object v5, Lnet/bytebuddy/jar/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v3, v5, :cond_7

    goto :goto_6

    :cond_7
    move v3, v6

    goto :goto_7

    .line 459
    :cond_8
    :goto_6
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "inputStackIndex":I
    .local v5, "inputStackIndex":I
    aput v2, v3, v6

    move v3, v5

    .line 456
    .end local v5    # "inputStackIndex":I
    .restart local v3    # "inputStackIndex":I
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 462
    .end local v4    # "i":I
    :cond_9
    const/4 v2, 0x0

    iput-short v2, p0, Lnet/bytebuddy/jar/asm/Frame;->outputStackTop:S

    .line 463
    iput v2, p0, Lnet/bytebuddy/jar/asm/Frame;->initializationCount:I

    .line 464
    return-void
.end method

.method final setInputFrameFromDescriptor(Lnet/bytebuddy/jar/asm/SymbolTable;ILjava/lang/String;I)V
    .locals 10
    .param p1, "symbolTable"    # Lnet/bytebuddy/jar/asm/SymbolTable;
    .param p2, "access"    # I
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "maxLocals"    # I

    .line 397
    new-array v0, p4, [I

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    .line 398
    const/4 v1, 0x0

    new-array v2, v1, [I

    iput-object v2, p0, Lnet/bytebuddy/jar/asm/Frame;->inputStack:[I

    .line 399
    const/4 v2, 0x0

    .line 400
    .local v2, "inputLocalIndex":I
    and-int/lit8 v3, p2, 0x8

    if-nez v3, :cond_1

    .line 401
    const/high16 v3, 0x40000

    and-int/2addr v3, p2

    if-nez v3, :cond_0

    .line 402
    add-int/lit8 v3, v2, 0x1

    .line 403
    .end local v2    # "inputLocalIndex":I
    .local v3, "inputLocalIndex":I
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v4

    const/high16 v5, 0x800000

    or-int/2addr v4, v5

    aput v4, v0, v2

    move v2, v3

    goto :goto_0

    .line 405
    .end local v3    # "inputLocalIndex":I
    .restart local v2    # "inputLocalIndex":I
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "inputLocalIndex":I
    .restart local v3    # "inputLocalIndex":I
    const v4, 0x400006

    aput v4, v0, v2

    move v2, v3

    .line 408
    .end local v3    # "inputLocalIndex":I
    .restart local v2    # "inputLocalIndex":I
    :cond_1
    :goto_0
    invoke-static {p3}, Lnet/bytebuddy/jar/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    array-length v3, v0

    move v4, v1

    :goto_1
    const/high16 v5, 0x400000

    if-ge v4, v3, :cond_4

    aget-object v6, v0, v4

    .line 409
    .local v6, "argumentType":Lnet/bytebuddy/jar/asm/Type;
    nop

    .line 410
    invoke-virtual {v6}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7, v1}, Lnet/bytebuddy/jar/asm/Frame;->getAbstractTypeFromDescriptor(Lnet/bytebuddy/jar/asm/SymbolTable;Ljava/lang/String;I)I

    move-result v7

    .line 411
    .local v7, "abstractType":I
    iget-object v8, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    add-int/lit8 v9, v2, 0x1

    .end local v2    # "inputLocalIndex":I
    .local v9, "inputLocalIndex":I
    aput v7, v8, v2

    .line 412
    const v2, 0x400004

    if-eq v7, v2, :cond_3

    const v2, 0x400003

    if-ne v7, v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v9

    goto :goto_3

    .line 413
    :cond_3
    :goto_2
    add-int/lit8 v2, v9, 0x1

    .end local v9    # "inputLocalIndex":I
    .restart local v2    # "inputLocalIndex":I
    aput v5, v8, v9

    .line 408
    .end local v6    # "argumentType":Lnet/bytebuddy/jar/asm/Type;
    .end local v7    # "abstractType":I
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 416
    :cond_4
    :goto_4
    if-ge v2, p4, :cond_5

    .line 417
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/Frame;->inputLocals:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "inputLocalIndex":I
    .local v1, "inputLocalIndex":I
    aput v5, v0, v2

    move v2, v1

    goto :goto_4

    .line 419
    .end local v1    # "inputLocalIndex":I
    .restart local v2    # "inputLocalIndex":I
    :cond_5
    return-void
.end method
