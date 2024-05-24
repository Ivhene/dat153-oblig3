.class public Lorg/checkerframework/org/objectweb/asmx/ClassWriter;
.super Ljava/lang/Object;
.source "ClassWriter.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/ClassVisitor;


# static fields
.field static final BSM:I = 0x21

.field static final CLASS:I = 0x7

.field static final DOUBLE:I = 0x6

.field static final FIELD:I = 0x9

.field static final FIELDORMETH_INSN:I = 0x6

.field static final FLOAT:I = 0x4

.field static final HANDLE:I = 0xf

.field static final HANDLE_BASE:I = 0x14

.field static final IINC_INSN:I = 0xc

.field static final IMETH:I = 0xb

.field static final IMPLVAR_INSN:I = 0x4

.field static final INDY:I = 0x12

.field static final INT:I = 0x3

.field static final ITFMETH_INSN:I = 0x7

.field static final LABELW_INSN:I = 0x9

.field static final LABEL_INSN:I = 0x8

.field static final LDCW_INSN:I = 0xb

.field static final LDC_INSN:I = 0xa

.field static final LONG:I = 0x5

.field static final LOOK_INSN:I = 0xe

.field static final MANA_INSN:I = 0xf

.field static final METH:I = 0xa

.field static final MTYPE:I = 0x10

.field static final NAME_TYPE:I = 0xc

.field static final NOARG_INSN:I = 0x0

.field static final SBYTE_INSN:I = 0x1

.field static final SHORT_INSN:I = 0x2

.field static final STR:I = 0x8

.field static final TABL_INSN:I = 0xd

.field static final TYPE:[B

.field static final TYPE_INSN:I = 0x5

.field static final TYPE_MERGED:I = 0x20

.field static final TYPE_NORMAL:I = 0x1e

.field static final TYPE_UNINIT:I = 0x1f

.field static final UTF8:I = 0x1

.field static final VAR_INSN:I = 0x3

.field static final WIDE_INSN:I = 0x10


# instance fields
.field private access:I

.field private anns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

.field private attrs:Lorg/checkerframework/org/objectweb/asmx/Attribute;

.field bootstrapMethods:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

.field bootstrapMethodsCount:I

.field private final computeMaxs:Z

.field cr:Lorg/checkerframework/org/objectweb/asmx/ClassReader;

.field private enclosingMethod:I

.field private enclosingMethodOwner:I

.field firstField:Lorg/checkerframework/org/objectweb/asmx/FieldWriter;

.field firstMethod:Lorg/checkerframework/org/objectweb/asmx/MethodWriter;

.field private ianns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

.field index:I

.field private innerClasses:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

.field private innerClassesCount:I

.field private interfaceCount:I

.field private interfaces:[I

.field items:[Lorg/checkerframework/org/objectweb/asmx/Item;

.field private ixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

.field key:Lorg/checkerframework/org/objectweb/asmx/Item;

.field key2:Lorg/checkerframework/org/objectweb/asmx/Item;

.field key3:Lorg/checkerframework/org/objectweb/asmx/Item;

.field key4:Lorg/checkerframework/org/objectweb/asmx/Item;

.field lastField:Lorg/checkerframework/org/objectweb/asmx/FieldWriter;

.field lastMethod:Lorg/checkerframework/org/objectweb/asmx/MethodWriter;

.field private name:I

.field pool:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

.field private signature:I

.field private sourceDebug:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

.field private sourceFile:I

.field private superName:I

.field threshold:I

.field version:I

.field private xanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 431
    const/16 v0, 0xdc

    new-array v0, v0, [B

    .line 432
    .local v0, "b":[B
    const-string v1, "AAAAAAAAAAAAAAAABCKLLDDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAADDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAIIIIIIIIIIIIIIIIDNOAAAAAAGGGGGGGHSFBFAAFFAAQPIIJJIIIIIIIIIIIIIIIIII"

    .line 436
    .local v1, "s":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 437
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x41

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 436
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 439
    :cond_0
    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->TYPE:[B

    .line 509
    .end local v0    # "b":[B
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "i":I
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/ClassReader;Z)V
    .locals 1
    .param p1, "classReader"    # Lorg/checkerframework/org/objectweb/asmx/ClassReader;
    .param p2, "computeMaxs"    # Z

    .line 594
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;-><init>(ZZ)V

    .line 595
    invoke-virtual {p1, p0}, Lorg/checkerframework/org/objectweb/asmx/ClassReader;->copyPool(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;)V

    .line 596
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->cr:Lorg/checkerframework/org/objectweb/asmx/ClassReader;

    .line 597
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "computeMaxs"    # Z

    .line 528
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;-><init>(ZZ)V

    .line 529
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 4
    .param p1, "computeMaxs"    # Z
    .param p2, "skipUnknownAttributes"    # Z

    .line 548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    const/4 v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    .line 550
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->pool:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 551
    const/16 v0, 0x100

    new-array v0, v0, [Lorg/checkerframework/org/objectweb/asmx/Item;

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->items:[Lorg/checkerframework/org/objectweb/asmx/Item;

    .line 552
    array-length v0, v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->threshold:I

    .line 553
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/Item;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key:Lorg/checkerframework/org/objectweb/asmx/Item;

    .line 554
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/Item;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key2:Lorg/checkerframework/org/objectweb/asmx/Item;

    .line 555
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/Item;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key3:Lorg/checkerframework/org/objectweb/asmx/Item;

    .line 556
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/Item;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key4:Lorg/checkerframework/org/objectweb/asmx/Item;

    .line 557
    iput-boolean p1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->computeMaxs:Z

    .line 558
    return-void
.end method

.method private get(Lorg/checkerframework/org/objectweb/asmx/Item;)Lorg/checkerframework/org/objectweb/asmx/Item;
    .locals 3
    .param p1, "key"    # Lorg/checkerframework/org/objectweb/asmx/Item;

    .line 1449
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->items:[Lorg/checkerframework/org/objectweb/asmx/Item;

    iget v1, p1, Lorg/checkerframework/org/objectweb/asmx/Item;->hashCode:I

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->items:[Lorg/checkerframework/org/objectweb/asmx/Item;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 1450
    .local v0, "i":Lorg/checkerframework/org/objectweb/asmx/Item;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/objectweb/asmx/Item;->isEqualTo(Lorg/checkerframework/org/objectweb/asmx/Item;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1451
    iget-object v0, v0, Lorg/checkerframework/org/objectweb/asmx/Item;->next:Lorg/checkerframework/org/objectweb/asmx/Item;

    goto :goto_0

    .line 1453
    :cond_0
    return-object v0
.end method

.method private newClassItem(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Item;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1057
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key2:Lorg/checkerframework/org/objectweb/asmx/Item;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-virtual {v0, v2, p1, v1, v1}, Lorg/checkerframework/org/objectweb/asmx/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key2:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->get(Lorg/checkerframework/org/objectweb/asmx/Item;)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v0

    .line 1059
    .local v0, "result":Lorg/checkerframework/org/objectweb/asmx/Item;
    if-nez v0, :cond_0

    .line 1060
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->pool:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1061
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/Item;

    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key2:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/Item;-><init>(ILorg/checkerframework/org/objectweb/asmx/Item;)V

    move-object v0, v1

    .line 1062
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->put(Lorg/checkerframework/org/objectweb/asmx/Item;)V

    .line 1064
    :cond_0
    return-object v0
.end method

.method private newString(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Item;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1409
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key2:Lorg/checkerframework/org/objectweb/asmx/Item;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v2, p1, v1, v1}, Lorg/checkerframework/org/objectweb/asmx/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key2:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->get(Lorg/checkerframework/org/objectweb/asmx/Item;)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v0

    .line 1411
    .local v0, "result":Lorg/checkerframework/org/objectweb/asmx/Item;
    if-nez v0, :cond_0

    .line 1412
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->pool:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1413
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/Item;

    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key2:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/Item;-><init>(ILorg/checkerframework/org/objectweb/asmx/Item;)V

    move-object v0, v1

    .line 1414
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->put(Lorg/checkerframework/org/objectweb/asmx/Item;)V

    .line 1416
    :cond_0
    return-object v0
.end method

.method private put(Lorg/checkerframework/org/objectweb/asmx/Item;)V
    .locals 8
    .param p1, "i"    # Lorg/checkerframework/org/objectweb/asmx/Item;

    .line 1463
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->threshold:I

    if-le v0, v1, :cond_2

    .line 1464
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->items:[Lorg/checkerframework/org/objectweb/asmx/Item;

    array-length v0, v0

    .line 1465
    .local v0, "ll":I
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 1466
    .local v1, "nl":I
    new-array v2, v1, [Lorg/checkerframework/org/objectweb/asmx/Item;

    .line 1467
    .local v2, "newItems":[Lorg/checkerframework/org/objectweb/asmx/Item;
    add-int/lit8 v3, v0, -0x1

    .local v3, "l":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1468
    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->items:[Lorg/checkerframework/org/objectweb/asmx/Item;

    aget-object v4, v4, v3

    .line 1469
    .local v4, "j":Lorg/checkerframework/org/objectweb/asmx/Item;
    :goto_1
    if-eqz v4, :cond_0

    .line 1470
    iget v5, v4, Lorg/checkerframework/org/objectweb/asmx/Item;->hashCode:I

    array-length v6, v2

    rem-int/2addr v5, v6

    .line 1471
    .local v5, "index":I
    iget-object v6, v4, Lorg/checkerframework/org/objectweb/asmx/Item;->next:Lorg/checkerframework/org/objectweb/asmx/Item;

    .line 1472
    .local v6, "k":Lorg/checkerframework/org/objectweb/asmx/Item;
    aget-object v7, v2, v5

    iput-object v7, v4, Lorg/checkerframework/org/objectweb/asmx/Item;->next:Lorg/checkerframework/org/objectweb/asmx/Item;

    .line 1473
    aput-object v4, v2, v5

    .line 1474
    move-object v4, v6

    .line 1475
    .end local v5    # "index":I
    .end local v6    # "k":Lorg/checkerframework/org/objectweb/asmx/Item;
    goto :goto_1

    .line 1467
    .end local v4    # "j":Lorg/checkerframework/org/objectweb/asmx/Item;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1477
    .end local v3    # "l":I
    :cond_1
    iput-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->items:[Lorg/checkerframework/org/objectweb/asmx/Item;

    .line 1478
    int-to-double v3, v1

    const-wide/high16 v5, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->threshold:I

    .line 1480
    .end local v0    # "ll":I
    .end local v1    # "nl":I
    .end local v2    # "newItems":[Lorg/checkerframework/org/objectweb/asmx/Item;
    :cond_2
    iget v0, p1, Lorg/checkerframework/org/objectweb/asmx/Item;->hashCode:I

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->items:[Lorg/checkerframework/org/objectweb/asmx/Item;

    array-length v2, v1

    rem-int/2addr v0, v2

    .line 1481
    .local v0, "index":I
    aget-object v1, v1, v0

    iput-object v1, p1, Lorg/checkerframework/org/objectweb/asmx/Item;->next:Lorg/checkerframework/org/objectweb/asmx/Item;

    .line 1482
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->items:[Lorg/checkerframework/org/objectweb/asmx/Item;

    aput-object p1, v1, v0

    .line 1483
    return-void
.end method

.method private put112(III)V
    .locals 1
    .param p1, "b1"    # I
    .param p2, "b2"    # I
    .param p3, "s"    # I

    .line 1493
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->pool:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put11(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1494
    return-void
.end method

.method private put122(III)V
    .locals 1
    .param p1, "b"    # I
    .param p2, "s1"    # I
    .param p3, "s2"    # I

    .line 1504
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->pool:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1505
    return-void
.end method


# virtual methods
.method public newClass(Ljava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1044
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newClassItem(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v0

    iget v0, v0, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    return v0
.end method

.method public newConst(Ljava/lang/Object;)I
    .locals 1
    .param p1, "cst"    # Ljava/lang/Object;

    .line 1011
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newConstItem(Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v0

    iget v0, v0, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    return v0
.end method

.method newConstItem(Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/Item;
    .locals 5
    .param p1, "cst"    # Ljava/lang/Object;

    .line 954
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 955
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 956
    .local v0, "val":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v1

    return-object v1

    .line 957
    .end local v0    # "val":I
    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 958
    move-object v0, p1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->intValue()I

    move-result v0

    .line 959
    .restart local v0    # "val":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v1

    return-object v1

    .line 960
    .end local v0    # "val":I
    :cond_1
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2

    .line 961
    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 962
    .restart local v0    # "val":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v1

    return-object v1

    .line 963
    .end local v0    # "val":I
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 964
    move-object v0, p1

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->intValue()I

    move-result v0

    .line 965
    .restart local v0    # "val":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v1

    return-object v1

    .line 966
    .end local v0    # "val":I
    :cond_3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 967
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 968
    .restart local v0    # "val":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newInteger(I)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v1

    return-object v1

    .line 969
    .end local v0    # "val":I
    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 970
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 971
    .local v0, "val":F
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newFloat(F)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v1

    return-object v1

    .line 972
    .end local v0    # "val":F
    :cond_5
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 973
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 974
    .local v0, "val":J
    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newLong(J)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v2

    return-object v2

    .line 975
    .end local v0    # "val":J
    :cond_6
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 976
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 977
    .local v0, "val":D
    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newDouble(D)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v2

    return-object v2

    .line 978
    .end local v0    # "val":D
    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 979
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newString(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v0

    return-object v0

    .line 980
    :cond_8
    instance-of v0, p1, Lorg/checkerframework/org/objectweb/asmx/Type;

    if-eqz v0, :cond_b

    .line 981
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 982
    .local v0, "t":Lorg/checkerframework/org/objectweb/asmx/Type;
    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v1

    .line 983
    .local v1, "s":I
    const/16 v2, 0xa

    if-ne v1, v2, :cond_9

    .line 984
    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getInternalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newClassItem(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v2

    return-object v2

    .line 985
    :cond_9
    const/16 v2, 0xb

    if-ne v1, v2, :cond_a

    .line 986
    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newMethodTypeItem(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v2

    return-object v2

    .line 988
    :cond_a
    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newClassItem(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v2

    return-object v2

    .line 990
    .end local v0    # "t":Lorg/checkerframework/org/objectweb/asmx/Type;
    .end local v1    # "s":I
    :cond_b
    instance-of v0, p1, Lorg/checkerframework/org/objectweb/asmx/Handle;

    if-eqz v0, :cond_c

    .line 991
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/Handle;

    .line 992
    .local v0, "h":Lorg/checkerframework/org/objectweb/asmx/Handle;
    iget v1, v0, Lorg/checkerframework/org/objectweb/asmx/Handle;->tag:I

    iget-object v2, v0, Lorg/checkerframework/org/objectweb/asmx/Handle;->owner:Ljava/lang/String;

    iget-object v3, v0, Lorg/checkerframework/org/objectweb/asmx/Handle;->name:Ljava/lang/String;

    iget-object v4, v0, Lorg/checkerframework/org/objectweb/asmx/Handle;->desc:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newHandleItem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v1

    return-object v1

    .line 994
    .end local v0    # "h":Lorg/checkerframework/org/objectweb/asmx/Handle;
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method newDouble(D)Lorg/checkerframework/org/objectweb/asmx/Item;
    .locals 4
    .param p1, "value"    # D

    .line 1390
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/Item;->set(D)V

    .line 1391
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->get(Lorg/checkerframework/org/objectweb/asmx/Item;)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v0

    .line 1392
    .local v0, "result":Lorg/checkerframework/org/objectweb/asmx/Item;
    if-nez v0, :cond_0

    .line 1393
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->pool:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putLong(J)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1394
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/Item;

    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/Item;-><init>(ILorg/checkerframework/org/objectweb/asmx/Item;)V

    move-object v0, v1

    .line 1395
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->put(Lorg/checkerframework/org/objectweb/asmx/Item;)V

    .line 1396
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    .line 1398
    :cond_0
    return-object v0
.end method

.method public newField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 1269
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key3:Lorg/checkerframework/org/objectweb/asmx/Item;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key3:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->get(Lorg/checkerframework/org/objectweb/asmx/Item;)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v0

    .line 1271
    .local v0, "result":Lorg/checkerframework/org/objectweb/asmx/Item;
    if-nez v0, :cond_0

    .line 1272
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->put122(III)V

    .line 1273
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/Item;

    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key3:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/Item;-><init>(ILorg/checkerframework/org/objectweb/asmx/Item;)V

    move-object v0, v1

    .line 1274
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->put(Lorg/checkerframework/org/objectweb/asmx/Item;)V

    .line 1276
    :cond_0
    iget v1, v0, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    return v1
.end method

.method newFloat(F)Lorg/checkerframework/org/objectweb/asmx/Item;
    .locals 4
    .param p1, "value"    # F

    .line 1353
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/Item;->set(F)V

    .line 1354
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->get(Lorg/checkerframework/org/objectweb/asmx/Item;)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v0

    .line 1355
    .local v0, "result":Lorg/checkerframework/org/objectweb/asmx/Item;
    if-nez v0, :cond_0

    .line 1356
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->pool:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1357
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/Item;

    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/Item;-><init>(ILorg/checkerframework/org/objectweb/asmx/Item;)V

    move-object v0, v1

    .line 1358
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->put(Lorg/checkerframework/org/objectweb/asmx/Item;)V

    .line 1360
    :cond_0
    return-object v0
.end method

.method public newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "tag"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 1169
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newHandleItem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v0

    iget v0, v0, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    return v0
.end method

.method newHandleItem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Item;
    .locals 4
    .param p1, "tag"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 1127
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key4:Lorg/checkerframework/org/objectweb/asmx/Item;

    add-int/lit8 v1, p1, 0x14

    invoke-virtual {v0, v1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key4:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->get(Lorg/checkerframework/org/objectweb/asmx/Item;)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v0

    .line 1129
    .local v0, "result":Lorg/checkerframework/org/objectweb/asmx/Item;
    if-nez v0, :cond_2

    .line 1130
    const/4 v1, 0x4

    const/16 v2, 0xf

    if-gt p1, v1, :cond_0

    .line 1131
    invoke-virtual {p0, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v2, p1, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->put112(III)V

    goto :goto_1

    .line 1133
    :cond_0
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1135
    :goto_0
    invoke-virtual {p0, p2, p3, p4, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    .line 1133
    invoke-direct {p0, v2, p1, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->put112(III)V

    .line 1138
    :goto_1
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/Item;

    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key4:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/Item;-><init>(ILorg/checkerframework/org/objectweb/asmx/Item;)V

    move-object v0, v1

    .line 1139
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->put(Lorg/checkerframework/org/objectweb/asmx/Item;)V

    .line 1141
    :cond_2
    return-object v0
.end method

.method newInteger(I)Lorg/checkerframework/org/objectweb/asmx/Item;
    .locals 4
    .param p1, "value"    # I

    .line 1335
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/Item;->set(I)V

    .line 1336
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->get(Lorg/checkerframework/org/objectweb/asmx/Item;)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v0

    .line 1337
    .local v0, "result":Lorg/checkerframework/org/objectweb/asmx/Item;
    if-nez v0, :cond_0

    .line 1338
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->pool:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1339
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/Item;

    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/Item;-><init>(ILorg/checkerframework/org/objectweb/asmx/Item;)V

    move-object v0, v1

    .line 1340
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->put(Lorg/checkerframework/org/objectweb/asmx/Item;)V

    .line 1342
    :cond_0
    return-object v0
.end method

.method varargs newInvokeDynamicItem(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/objectweb/asmx/Handle;[Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/Item;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "bsm"    # Lorg/checkerframework/org/objectweb/asmx/Handle;
    .param p4, "bsmArgs"    # [Ljava/lang/Object;

    .line 1192
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->bootstrapMethods:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1193
    .local v0, "bootstrapMethods":Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    if-nez v0, :cond_0

    .line 1194
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-direct {v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->bootstrapMethods:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-object v0, v1

    .line 1197
    :cond_0
    iget v1, v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    .line 1199
    .local v1, "position":I
    invoke-virtual {p3}, Lorg/checkerframework/org/objectweb/asmx/Handle;->hashCode()I

    move-result v2

    .line 1200
    .local v2, "hashCode":I
    iget v3, p3, Lorg/checkerframework/org/objectweb/asmx/Handle;->tag:I

    iget-object v4, p3, Lorg/checkerframework/org/objectweb/asmx/Handle;->owner:Ljava/lang/String;

    iget-object v5, p3, Lorg/checkerframework/org/objectweb/asmx/Handle;->name:Ljava/lang/String;

    iget-object v6, p3, Lorg/checkerframework/org/objectweb/asmx/Handle;->desc:Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v5, v6}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1203
    array-length v3, p4

    .line 1204
    .local v3, "argsLength":I
    invoke-virtual {v0, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1206
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1207
    aget-object v5, p4, v4

    .line 1208
    .local v5, "bsmArg":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    xor-int/2addr v2, v6

    .line 1209
    invoke-virtual {p0, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newConst(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1206
    .end local v5    # "bsmArg":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1212
    .end local v4    # "i":I
    :cond_1
    iget-object v4, v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    .line 1213
    .local v4, "data":[B
    add-int/lit8 v5, v3, 0x2

    shl-int/lit8 v5, v5, 0x1

    .line 1214
    .local v5, "length":I
    const v6, 0x7fffffff

    and-int/2addr v2, v6

    .line 1215
    iget-object v6, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->items:[Lorg/checkerframework/org/objectweb/asmx/Item;

    array-length v7, v6

    rem-int v7, v2, v7

    aget-object v6, v6, v7

    .line 1216
    .local v6, "result":Lorg/checkerframework/org/objectweb/asmx/Item;
    :goto_1
    if-eqz v6, :cond_6

    .line 1217
    iget v7, v6, Lorg/checkerframework/org/objectweb/asmx/Item;->type:I

    const/16 v8, 0x21

    if-ne v7, v8, :cond_5

    iget v7, v6, Lorg/checkerframework/org/objectweb/asmx/Item;->hashCode:I

    if-eq v7, v2, :cond_2

    goto :goto_3

    .line 1224
    :cond_2
    iget v7, v6, Lorg/checkerframework/org/objectweb/asmx/Item;->intVal:I

    .line 1225
    .local v7, "resultPosition":I
    const/4 v8, 0x0

    .local v8, "p":I
    :goto_2
    if-ge v8, v5, :cond_4

    .line 1226
    add-int v9, v1, v8

    aget-byte v9, v4, v9

    add-int v10, v7, v8

    aget-byte v10, v4, v10

    if-eq v9, v10, :cond_3

    .line 1227
    iget-object v6, v6, Lorg/checkerframework/org/objectweb/asmx/Item;->next:Lorg/checkerframework/org/objectweb/asmx/Item;

    .line 1228
    goto :goto_1

    .line 1225
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1231
    .end local v8    # "p":I
    :cond_4
    goto :goto_4

    .line 1218
    .end local v7    # "resultPosition":I
    :cond_5
    :goto_3
    iget-object v6, v6, Lorg/checkerframework/org/objectweb/asmx/Item;->next:Lorg/checkerframework/org/objectweb/asmx/Item;

    .line 1219
    goto :goto_1

    .line 1235
    :cond_6
    :goto_4
    if-eqz v6, :cond_7

    .line 1236
    iget v7, v6, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    .line 1237
    .local v7, "bootstrapMethodIndex":I
    iput v1, v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    goto :goto_5

    .line 1239
    .end local v7    # "bootstrapMethodIndex":I
    :cond_7
    iget v7, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->bootstrapMethodsCount:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->bootstrapMethodsCount:I

    .line 1240
    .restart local v7    # "bootstrapMethodIndex":I
    new-instance v8, Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {v8, v7}, Lorg/checkerframework/org/objectweb/asmx/Item;-><init>(I)V

    move-object v6, v8

    .line 1241
    invoke-virtual {v6, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/Item;->set(II)V

    .line 1242
    invoke-direct {p0, v6}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->put(Lorg/checkerframework/org/objectweb/asmx/Item;)V

    .line 1246
    :goto_5
    iget-object v8, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key3:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-virtual {v8, p1, p2, v7}, Lorg/checkerframework/org/objectweb/asmx/Item;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1247
    iget-object v8, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key3:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {p0, v8}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->get(Lorg/checkerframework/org/objectweb/asmx/Item;)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v6

    .line 1248
    if-nez v6, :cond_8

    .line 1249
    const/16 v8, 0x12

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-direct {p0, v8, v7, v9}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->put122(III)V

    .line 1250
    new-instance v8, Lorg/checkerframework/org/objectweb/asmx/Item;

    iget v9, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    iget-object v10, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key3:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {v8, v9, v10}, Lorg/checkerframework/org/objectweb/asmx/Item;-><init>(ILorg/checkerframework/org/objectweb/asmx/Item;)V

    move-object v6, v8

    .line 1251
    invoke-direct {p0, v6}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->put(Lorg/checkerframework/org/objectweb/asmx/Item;)V

    .line 1253
    :cond_8
    return-object v6
.end method

.method newLong(J)Lorg/checkerframework/org/objectweb/asmx/Item;
    .locals 4
    .param p1, "value"    # J

    .line 1371
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-virtual {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/Item;->set(J)V

    .line 1372
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->get(Lorg/checkerframework/org/objectweb/asmx/Item;)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v0

    .line 1373
    .local v0, "result":Lorg/checkerframework/org/objectweb/asmx/Item;
    if-nez v0, :cond_0

    .line 1374
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->pool:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putLong(J)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1375
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/Item;

    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/Item;-><init>(ILorg/checkerframework/org/objectweb/asmx/Item;)V

    move-object v0, v1

    .line 1376
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->put(Lorg/checkerframework/org/objectweb/asmx/Item;)V

    .line 1377
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    .line 1379
    :cond_0
    return-object v0
.end method

.method public newMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "itf"    # Z

    .line 1324
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newMethodItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v0

    iget v0, v0, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    return v0
.end method

.method newMethodItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/Item;
    .locals 5
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "itf"    # Z

    .line 1295
    if-eqz p4, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 1296
    .local v0, "type":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key3:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-virtual {v1, v0, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key3:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->get(Lorg/checkerframework/org/objectweb/asmx/Item;)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v1

    .line 1298
    .local v1, "result":Lorg/checkerframework/org/objectweb/asmx/Item;
    if-nez v1, :cond_1

    .line 1299
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->put122(III)V

    .line 1300
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/Item;

    iget v3, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    iget-object v4, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key3:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/org/objectweb/asmx/Item;-><init>(ILorg/checkerframework/org/objectweb/asmx/Item;)V

    move-object v1, v2

    .line 1301
    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->put(Lorg/checkerframework/org/objectweb/asmx/Item;)V

    .line 1303
    :cond_1
    return-object v1
.end method

.method public newMethodType(Ljava/lang/String;)I
    .locals 1
    .param p1, "methodDesc"    # Ljava/lang/String;

    .line 1100
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newMethodTypeItem(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v0

    iget v0, v0, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    return v0
.end method

.method newMethodTypeItem(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Item;
    .locals 4
    .param p1, "methodDesc"    # Ljava/lang/String;

    .line 1078
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key2:Lorg/checkerframework/org/objectweb/asmx/Item;

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v2, p1, v1, v1}, Lorg/checkerframework/org/objectweb/asmx/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key2:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->get(Lorg/checkerframework/org/objectweb/asmx/Item;)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v0

    .line 1080
    .local v0, "result":Lorg/checkerframework/org/objectweb/asmx/Item;
    if-nez v0, :cond_0

    .line 1081
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->pool:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->put12(II)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1082
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/Item;

    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key2:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/Item;-><init>(ILorg/checkerframework/org/objectweb/asmx/Item;)V

    move-object v0, v1

    .line 1083
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->put(Lorg/checkerframework/org/objectweb/asmx/Item;)V

    .line 1085
    :cond_0
    return-object v0
.end method

.method public newNameType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;

    .line 1430
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key2:Lorg/checkerframework/org/objectweb/asmx/Item;

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-virtual {v0, v2, p1, p2, v1}, Lorg/checkerframework/org/objectweb/asmx/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key2:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->get(Lorg/checkerframework/org/objectweb/asmx/Item;)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v0

    .line 1432
    .local v0, "result":Lorg/checkerframework/org/objectweb/asmx/Item;
    if-nez v0, :cond_0

    .line 1433
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v2, v1, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->put122(III)V

    .line 1434
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/Item;

    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key2:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/Item;-><init>(ILorg/checkerframework/org/objectweb/asmx/Item;)V

    move-object v0, v1

    .line 1435
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->put(Lorg/checkerframework/org/objectweb/asmx/Item;)V

    .line 1437
    :cond_0
    iget v1, v0, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    return v1
.end method

.method public newUTF8(Ljava/lang/String;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1024
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key:Lorg/checkerframework/org/objectweb/asmx/Item;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1, v1}, Lorg/checkerframework/org/objectweb/asmx/Item;->set(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->get(Lorg/checkerframework/org/objectweb/asmx/Item;)Lorg/checkerframework/org/objectweb/asmx/Item;

    move-result-object v0

    .line 1026
    .local v0, "result":Lorg/checkerframework/org/objectweb/asmx/Item;
    if-nez v0, :cond_0

    .line 1027
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->pool:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByte(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 1028
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/Item;

    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->key:Lorg/checkerframework/org/objectweb/asmx/Item;

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/Item;-><init>(ILorg/checkerframework/org/objectweb/asmx/Item;)V

    move-object v0, v1

    .line 1029
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->put(Lorg/checkerframework/org/objectweb/asmx/Item;)V

    .line 1031
    :cond_0
    iget v1, v0, Lorg/checkerframework/org/objectweb/asmx/Item;->index:I

    return v1
.end method

.method public toByteArray()[B
    .locals 29

    .line 752
    move-object/from16 v7, p0

    iget v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->interfaceCount:I

    const/4 v6, 0x2

    mul-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x18

    .line 753
    .local v0, "size":I
    const/4 v1, 0x0

    .line 754
    .local v1, "nbFields":I
    iget-object v2, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->firstField:Lorg/checkerframework/org/objectweb/asmx/FieldWriter;

    move v8, v1

    move-object v9, v2

    .line 755
    .end local v1    # "nbFields":I
    .local v8, "nbFields":I
    .local v9, "fb":Lorg/checkerframework/org/objectweb/asmx/FieldWriter;
    :goto_0
    if-eqz v9, :cond_0

    .line 756
    add-int/lit8 v8, v8, 0x1

    .line 757
    invoke-virtual {v9}, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 758
    iget-object v9, v9, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->next:Lorg/checkerframework/org/objectweb/asmx/FieldWriter;

    goto :goto_0

    .line 760
    :cond_0
    const/4 v1, 0x0

    .line 761
    .local v1, "nbMethods":I
    iget-object v2, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->firstMethod:Lorg/checkerframework/org/objectweb/asmx/MethodWriter;

    move v10, v1

    move-object v11, v2

    .line 762
    .end local v1    # "nbMethods":I
    .local v10, "nbMethods":I
    .local v11, "mb":Lorg/checkerframework/org/objectweb/asmx/MethodWriter;
    :goto_1
    if-eqz v11, :cond_1

    .line 763
    add-int/lit8 v10, v10, 0x1

    .line 764
    invoke-virtual {v11}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 765
    iget-object v11, v11, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->next:Lorg/checkerframework/org/objectweb/asmx/MethodWriter;

    goto :goto_1

    .line 767
    :cond_1
    const/4 v1, 0x0

    .line 768
    .local v1, "attributeCount":I
    iget-object v2, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->bootstrapMethods:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    const-string v12, "BootstrapMethods"

    if-eqz v2, :cond_2

    .line 771
    add-int/lit8 v1, v1, 0x1

    .line 772
    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 773
    invoke-virtual {v7, v12}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 775
    :cond_2
    iget v2, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->signature:I

    const-string v13, "Signature"

    if-eqz v2, :cond_3

    .line 776
    add-int/lit8 v1, v1, 0x1

    .line 777
    add-int/lit8 v0, v0, 0x8

    .line 778
    invoke-virtual {v7, v13}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 780
    :cond_3
    iget v2, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->sourceFile:I

    const-string v14, "SourceFile"

    if-eqz v2, :cond_4

    .line 781
    add-int/lit8 v1, v1, 0x1

    .line 782
    add-int/lit8 v0, v0, 0x8

    .line 783
    invoke-virtual {v7, v14}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 785
    :cond_4
    iget-object v2, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->sourceDebug:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    const-string v15, "SourceDebugExtension"

    const/4 v5, 0x4

    if-eqz v2, :cond_5

    .line 786
    add-int/lit8 v1, v1, 0x1

    .line 787
    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int/2addr v2, v5

    add-int/2addr v0, v2

    .line 788
    invoke-virtual {v7, v15}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 790
    :cond_5
    iget v2, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->enclosingMethodOwner:I

    const-string v4, "EnclosingMethod"

    if-eqz v2, :cond_6

    .line 791
    add-int/lit8 v1, v1, 0x1

    .line 792
    add-int/lit8 v0, v0, 0xa

    .line 793
    invoke-virtual {v7, v4}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 795
    :cond_6
    iget v2, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->access:I

    const/high16 v16, 0x20000

    and-int v2, v2, v16

    const-string v3, "Deprecated"

    if-eqz v2, :cond_7

    .line 796
    add-int/lit8 v1, v1, 0x1

    .line 797
    add-int/lit8 v0, v0, 0x6

    .line 798
    invoke-virtual {v7, v3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 800
    :cond_7
    iget v2, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->access:I

    and-int/lit16 v2, v2, 0x1000

    const-string v6, "Synthetic"

    const/16 v5, 0x31

    const v18, 0xffff

    if-eqz v2, :cond_8

    iget v2, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->version:I

    and-int v2, v2, v18

    if-ge v2, v5, :cond_8

    .line 803
    add-int/lit8 v1, v1, 0x1

    .line 804
    add-int/lit8 v0, v0, 0x6

    .line 805
    invoke-virtual {v7, v6}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 807
    :cond_8
    iget v2, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->version:I

    const-string v5, "Annotation"

    move-object/from16 v20, v4

    const/16 v4, 0x30

    if-ne v2, v4, :cond_a

    .line 808
    iget v2, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->access:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_9

    .line 809
    add-int/lit8 v1, v1, 0x1

    .line 810
    add-int/lit8 v0, v0, 0x6

    .line 811
    invoke-virtual {v7, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 813
    :cond_9
    iget v2, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->access:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_a

    .line 814
    add-int/lit8 v1, v1, 0x1

    .line 815
    add-int/lit8 v0, v0, 0x6

    .line 816
    const-string v2, "Enum"

    invoke-virtual {v7, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 819
    :cond_a
    iget-object v2, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->innerClasses:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-object/from16 v21, v5

    const-string v5, "InnerClasses"

    if-eqz v2, :cond_b

    .line 820
    add-int/lit8 v1, v1, 0x1

    .line 821
    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 822
    invoke-virtual {v7, v5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 824
    :cond_b
    iget-object v2, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->anns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    if-eqz v2, :cond_c

    .line 825
    add-int/lit8 v1, v1, 0x1

    .line 826
    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 827
    const-string v2, "RuntimeVisibleAnnotations"

    invoke-virtual {v7, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 829
    :cond_c
    iget-object v2, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->ianns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    if-eqz v2, :cond_d

    .line 830
    add-int/lit8 v1, v1, 0x1

    .line 831
    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 832
    const-string v2, "RuntimeInvisibleAnnotations"

    invoke-virtual {v7, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 835
    :cond_d
    iget-object v2, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->xanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    if-eqz v2, :cond_e

    .line 836
    add-int/lit8 v1, v1, 0x1

    .line 837
    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 838
    const-string v2, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v7, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    .line 840
    :cond_e
    iget-object v2, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->ixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    if-eqz v2, :cond_f

    .line 841
    add-int/lit8 v1, v1, 0x1

    .line 842
    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 843
    const-string v2, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v7, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move/from16 v22, v0

    goto :goto_2

    .line 840
    :cond_f
    move/from16 v22, v0

    .line 846
    .end local v0    # "size":I
    .local v22, "size":I
    :goto_2
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->attrs:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    if-eqz v0, :cond_10

    .line 847
    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Attribute;->getCount()I

    move-result v0

    add-int v23, v1, v0

    .line 848
    .end local v1    # "attributeCount":I
    .local v23, "attributeCount":I
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->attrs:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    const/4 v2, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    const/16 v26, -0x1

    move-object/from16 v1, p0

    move-object/from16 v27, v3

    move/from16 v3, v24

    move-object/from16 v28, v20

    move/from16 v4, v25

    move-object/from16 v19, v5

    move-object/from16 v20, v9

    move-object/from16 v17, v11

    move-object/from16 v9, v21

    const/4 v11, 0x4

    .end local v9    # "fb":Lorg/checkerframework/org/objectweb/asmx/FieldWriter;
    .end local v11    # "mb":Lorg/checkerframework/org/objectweb/asmx/MethodWriter;
    .local v17, "mb":Lorg/checkerframework/org/objectweb/asmx/MethodWriter;
    .local v20, "fb":Lorg/checkerframework/org/objectweb/asmx/FieldWriter;
    move/from16 v5, v26

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/org/objectweb/asmx/Attribute;->getSize(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;[BIII)I

    move-result v0

    add-int v22, v22, v0

    move/from16 v5, v23

    goto :goto_3

    .line 846
    .end local v17    # "mb":Lorg/checkerframework/org/objectweb/asmx/MethodWriter;
    .end local v20    # "fb":Lorg/checkerframework/org/objectweb/asmx/FieldWriter;
    .end local v23    # "attributeCount":I
    .restart local v1    # "attributeCount":I
    .restart local v9    # "fb":Lorg/checkerframework/org/objectweb/asmx/FieldWriter;
    .restart local v11    # "mb":Lorg/checkerframework/org/objectweb/asmx/MethodWriter;
    :cond_10
    move-object/from16 v27, v3

    move-object/from16 v19, v5

    move-object/from16 v17, v11

    move-object/from16 v28, v20

    const/4 v11, 0x4

    move-object/from16 v20, v9

    move-object/from16 v9, v21

    .end local v9    # "fb":Lorg/checkerframework/org/objectweb/asmx/FieldWriter;
    .end local v11    # "mb":Lorg/checkerframework/org/objectweb/asmx/MethodWriter;
    .restart local v17    # "mb":Lorg/checkerframework/org/objectweb/asmx/MethodWriter;
    .restart local v20    # "fb":Lorg/checkerframework/org/objectweb/asmx/FieldWriter;
    move v5, v1

    .line 850
    .end local v1    # "attributeCount":I
    .local v5, "attributeCount":I
    :goto_3
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->pool:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v0, v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    add-int v4, v22, v0

    .line 853
    .end local v22    # "size":I
    .local v4, "size":I
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-direct {v0, v4}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;-><init>(I)V

    move-object v3, v0

    .line 854
    .local v3, "out":Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    const v0, -0x35014542    # -8346975.0f

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    iget v1, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->version:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 855
    iget v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->index:I

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    iget-object v1, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->pool:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v1, v1, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    iget-object v2, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->pool:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    const/4 v11, 0x0

    invoke-virtual {v0, v1, v11, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByteArray([BII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 856
    iget v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->access:I

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    iget v1, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->name:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    iget v1, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->superName:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 857
    iget v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->interfaceCount:I

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 858
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v1, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->interfaceCount:I

    if-ge v0, v1, :cond_11

    .line 859
    iget-object v1, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->interfaces:[I

    aget v1, v1, v0

    invoke-virtual {v3, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 858
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 861
    .end local v0    # "i":I
    :cond_11
    invoke-virtual {v3, v8}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 862
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->firstField:Lorg/checkerframework/org/objectweb/asmx/FieldWriter;

    move-object v2, v0

    .line 863
    .end local v20    # "fb":Lorg/checkerframework/org/objectweb/asmx/FieldWriter;
    .local v2, "fb":Lorg/checkerframework/org/objectweb/asmx/FieldWriter;
    :goto_5
    if-eqz v2, :cond_12

    .line 864
    invoke-virtual {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->put(Lorg/checkerframework/org/objectweb/asmx/ByteVector;)V

    .line 865
    iget-object v2, v2, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;->next:Lorg/checkerframework/org/objectweb/asmx/FieldWriter;

    goto :goto_5

    .line 867
    :cond_12
    invoke-virtual {v3, v10}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 868
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->firstMethod:Lorg/checkerframework/org/objectweb/asmx/MethodWriter;

    move-object v1, v0

    .line 869
    .end local v17    # "mb":Lorg/checkerframework/org/objectweb/asmx/MethodWriter;
    .local v1, "mb":Lorg/checkerframework/org/objectweb/asmx/MethodWriter;
    :goto_6
    if-eqz v1, :cond_13

    .line 870
    invoke-virtual {v1, v3}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->put(Lorg/checkerframework/org/objectweb/asmx/ByteVector;)V

    .line 871
    iget-object v1, v1, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;->next:Lorg/checkerframework/org/objectweb/asmx/MethodWriter;

    goto :goto_6

    .line 873
    :cond_13
    invoke-virtual {v3, v5}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 874
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->bootstrapMethods:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    if-eqz v0, :cond_14

    .line 875
    invoke-virtual {v7, v12}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 876
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->bootstrapMethods:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v0, v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    const/4 v12, 0x2

    add-int/2addr v0, v12

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    iget v12, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->bootstrapMethodsCount:I

    invoke-virtual {v0, v12}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 878
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->bootstrapMethods:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v0, v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    iget-object v12, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->bootstrapMethods:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v12, v12, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    invoke-virtual {v3, v0, v11, v12}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByteArray([BII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 880
    :cond_14
    iget v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->signature:I

    if-eqz v0, :cond_15

    .line 881
    invoke-virtual {v7, v13}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    iget v12, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->signature:I

    invoke-virtual {v0, v12}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 883
    :cond_15
    iget v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->sourceFile:I

    if-eqz v0, :cond_16

    .line 884
    invoke-virtual {v7, v14}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    iget v13, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->sourceFile:I

    invoke-virtual {v0, v13}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    goto :goto_7

    .line 883
    :cond_16
    const/4 v12, 0x2

    .line 886
    :goto_7
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->sourceDebug:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    if-eqz v0, :cond_17

    .line 887
    iget v0, v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    sub-int/2addr v0, v12

    .line 888
    .local v0, "len":I
    invoke-virtual {v7, v15}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v3, v13}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v13

    invoke-virtual {v13, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 889
    iget-object v13, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->sourceDebug:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v13, v13, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    invoke-virtual {v3, v13, v12, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByteArray([BII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 891
    .end local v0    # "len":I
    :cond_17
    iget v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->enclosingMethodOwner:I

    if-eqz v0, :cond_18

    .line 892
    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    const/4 v12, 0x4

    invoke-virtual {v0, v12}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 893
    iget v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->enclosingMethodOwner:I

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    iget v12, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->enclosingMethod:I

    invoke-virtual {v0, v12}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 895
    :cond_18
    iget v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->access:I

    and-int v0, v0, v16

    if-eqz v0, :cond_19

    .line 896
    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 898
    :cond_19
    iget v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->access:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1a

    iget v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->version:I

    and-int v0, v0, v18

    const/16 v12, 0x31

    if-ge v0, v12, :cond_1a

    .line 901
    invoke-virtual {v7, v6}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 903
    :cond_1a
    iget v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->version:I

    const/16 v6, 0x30

    if-ne v0, v6, :cond_1c

    .line 904
    iget v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->access:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_1b

    .line 905
    invoke-virtual {v7, v9}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 907
    :cond_1b
    iget v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->access:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_1c

    .line 908
    const-string v0, "Enum"

    invoke-virtual {v7, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 911
    :cond_1c
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->innerClasses:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    if-eqz v0, :cond_1d

    .line 912
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 913
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->innerClasses:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v0, v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    const/4 v6, 0x2

    add-int/2addr v0, v6

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putInt(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    iget v6, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->innerClassesCount:I

    invoke-virtual {v0, v6}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 914
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->innerClasses:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget-object v0, v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    iget-object v6, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->innerClasses:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    iget v6, v6, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->length:I

    invoke-virtual {v3, v0, v11, v6}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putByteArray([BII)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 916
    :cond_1d
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->anns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    if-eqz v0, :cond_1e

    .line 917
    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {v7, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 918
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->anns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    invoke-virtual {v0, v3}, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->put(Lorg/checkerframework/org/objectweb/asmx/ByteVector;)V

    .line 920
    :cond_1e
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->ianns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    if-eqz v0, :cond_1f

    .line 921
    const-string v0, "RuntimeInvisibleAnnotations"

    invoke-virtual {v7, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 922
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->ianns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    invoke-virtual {v0, v3}, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->put(Lorg/checkerframework/org/objectweb/asmx/ByteVector;)V

    .line 924
    :cond_1f
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->xanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    if-eqz v0, :cond_20

    .line 925
    const-string v0, "RuntimeVisibleTypeAnnotations"

    invoke-virtual {v7, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 926
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->xanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    invoke-virtual {v0, v3}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->put(Lorg/checkerframework/org/objectweb/asmx/ByteVector;)V

    .line 928
    :cond_20
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->ixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    if-eqz v0, :cond_21

    .line 929
    const-string v0, "RuntimeInvisibleTypeAnnotations"

    invoke-virtual {v7, v0}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 930
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->ixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    invoke-virtual {v0, v3}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->put(Lorg/checkerframework/org/objectweb/asmx/ByteVector;)V

    .line 932
    :cond_21
    iget-object v0, v7, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->attrs:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    if-eqz v0, :cond_22

    .line 933
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    move-object v13, v1

    .end local v1    # "mb":Lorg/checkerframework/org/objectweb/asmx/MethodWriter;
    .local v13, "mb":Lorg/checkerframework/org/objectweb/asmx/MethodWriter;
    move-object/from16 v1, p0

    move-object v14, v2

    .end local v2    # "fb":Lorg/checkerframework/org/objectweb/asmx/FieldWriter;
    .local v14, "fb":Lorg/checkerframework/org/objectweb/asmx/FieldWriter;
    move-object v2, v6

    move-object v15, v3

    .end local v3    # "out":Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    .local v15, "out":Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    move v3, v9

    move/from16 v22, v4

    .end local v4    # "size":I
    .restart local v22    # "size":I
    move v4, v11

    move/from16 v23, v5

    .end local v5    # "attributeCount":I
    .restart local v23    # "attributeCount":I
    move v5, v12

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Lorg/checkerframework/org/objectweb/asmx/Attribute;->put(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;[BIIILorg/checkerframework/org/objectweb/asmx/ByteVector;)V

    goto :goto_8

    .line 932
    .end local v13    # "mb":Lorg/checkerframework/org/objectweb/asmx/MethodWriter;
    .end local v14    # "fb":Lorg/checkerframework/org/objectweb/asmx/FieldWriter;
    .end local v15    # "out":Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    .end local v22    # "size":I
    .end local v23    # "attributeCount":I
    .restart local v1    # "mb":Lorg/checkerframework/org/objectweb/asmx/MethodWriter;
    .restart local v2    # "fb":Lorg/checkerframework/org/objectweb/asmx/FieldWriter;
    .restart local v3    # "out":Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    .restart local v4    # "size":I
    .restart local v5    # "attributeCount":I
    :cond_22
    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move/from16 v22, v4

    move/from16 v23, v5

    .line 935
    .end local v1    # "mb":Lorg/checkerframework/org/objectweb/asmx/MethodWriter;
    .end local v2    # "fb":Lorg/checkerframework/org/objectweb/asmx/FieldWriter;
    .end local v3    # "out":Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    .end local v4    # "size":I
    .end local v5    # "attributeCount":I
    .restart local v13    # "mb":Lorg/checkerframework/org/objectweb/asmx/MethodWriter;
    .restart local v14    # "fb":Lorg/checkerframework/org/objectweb/asmx/FieldWriter;
    .restart local v15    # "out":Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    .restart local v22    # "size":I
    .restart local v23    # "attributeCount":I
    :goto_8
    iget-object v0, v15, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->data:[B

    return-object v0
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "version"    # I
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "superName"    # Ljava/lang/String;
    .param p6, "interfaces"    # [Ljava/lang/String;

    .line 612
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->version:I

    .line 613
    iput p2, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->access:I

    .line 614
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->name:I

    .line 615
    if-eqz p4, :cond_0

    .line 616
    invoke-virtual {p0, p4}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->signature:I

    .line 618
    :cond_0
    if-nez p5, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p5}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->superName:I

    .line 619
    if-eqz p6, :cond_2

    array-length v0, p6

    if-lez v0, :cond_2

    .line 620
    array-length v0, p6

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->interfaceCount:I

    .line 621
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->interfaces:[I

    .line 622
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->interfaceCount:I

    if-ge v0, v1, :cond_2

    .line 623
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->interfaces:[I

    aget-object v2, p6, v0

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 626
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/checkerframework/org/objectweb/asmx/AnnotationVisitor;
    .locals 8
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 652
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;-><init>()V

    .line 654
    .local v0, "bv":Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 655
    new-instance v7, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    const/4 v3, 0x1

    const/4 v6, 0x2

    move-object v1, v7

    move-object v2, p0

    move-object v4, v0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;ZLorg/checkerframework/org/objectweb/asmx/ByteVector;Lorg/checkerframework/org/objectweb/asmx/ByteVector;I)V

    .line 656
    .local v1, "aw":Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;
    if-eqz p2, :cond_0

    .line 657
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->anns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    iput-object v2, v1, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->next:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    .line 658
    iput-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->anns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    goto :goto_0

    .line 660
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->ianns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    iput-object v2, v1, Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;->next:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    .line 661
    iput-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->ianns:Lorg/checkerframework/org/objectweb/asmx/AnnotationWriter;

    .line 663
    :goto_0
    return-object v1
.end method

.method public visitAttribute(Lorg/checkerframework/org/objectweb/asmx/Attribute;)V
    .locals 1
    .param p1, "attr"    # Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 688
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->attrs:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    iput-object v0, p1, Lorg/checkerframework/org/objectweb/asmx/Attribute;->next:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 689
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->attrs:Lorg/checkerframework/org/objectweb/asmx/Attribute;

    .line 690
    return-void
.end method

.method public visitEnd()V
    .locals 0

    .line 739
    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/checkerframework/org/objectweb/asmx/FieldVisitor;
    .locals 8
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/Object;

    .line 717
    new-instance v7, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/org/objectweb/asmx/FieldWriter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v7
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outerName"    # Ljava/lang/String;
    .param p3, "innerName"    # Ljava/lang/String;
    .param p4, "access"    # I

    .line 699
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->innerClasses:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    if-nez v0, :cond_0

    .line 700
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->innerClasses:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 702
    :cond_0
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->innerClassesCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->innerClassesCount:I

    .line 703
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->innerClasses:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v2

    :goto_0
    invoke-virtual {v0, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 704
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->innerClasses:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    if-nez p2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v2

    :goto_1
    invoke-virtual {v0, v2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 705
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->innerClasses:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    if-nez p3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v1

    :goto_2
    invoke-virtual {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 706
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->innerClasses:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-virtual {v0, p4}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putShort(I)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 707
    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .locals 9
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "exceptions"    # [Ljava/lang/String;

    .line 728
    new-instance v8, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;

    iget-boolean v7, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->computeMaxs:Z

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/checkerframework/org/objectweb/asmx/MethodWriter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    return-object v8
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;

    .line 644
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newClass(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->enclosingMethodOwner:I

    .line 645
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 646
    invoke-virtual {p0, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newNameType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->enclosingMethod:I

    .line 648
    :cond_0
    return-void
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "debug"    # Ljava/lang/String;

    .line 630
    if-eqz p1, :cond_0

    .line 631
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->newUTF8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->sourceFile:I

    .line 633
    :cond_0
    if-eqz p2, :cond_1

    .line 634
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;-><init>()V

    invoke-virtual {v0, p2}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;->putUTF8(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->sourceDebug:Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    .line 636
    :cond_1
    return-void
.end method

.method public visitTypeAnnotation(Ljava/lang/String;ZZ)Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationVisitor;
    .locals 7
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "inCode"    # Z

    .line 672
    new-instance v3, Lorg/checkerframework/org/objectweb/asmx/ByteVector;

    invoke-direct {v3}, Lorg/checkerframework/org/objectweb/asmx/ByteVector;-><init>()V

    .line 673
    .local v3, "bv":Lorg/checkerframework/org/objectweb/asmx/ByteVector;
    new-instance v6, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    const/4 v2, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v4, v3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;-><init>(Lorg/checkerframework/org/objectweb/asmx/ClassWriter;ZLorg/checkerframework/org/objectweb/asmx/ByteVector;Lorg/checkerframework/org/objectweb/asmx/ByteVector;Ljava/lang/String;)V

    .line 674
    .local v0, "xaw":Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;
    if-eqz p2, :cond_0

    .line 675
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->xanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    iput-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->next:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    .line 676
    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->xanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    goto :goto_0

    .line 678
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->ixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    iput-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;->next:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    .line 679
    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/ClassWriter;->ixanns:Lorg/checkerframework/org/objectweb/asmx/TypeAnnotationWriter;

    .line 682
    :goto_0
    return-object v0
.end method
