.class public abstract Lorg/checkerframework/org/apache/bcel/classfile/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaWriter;,
        Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaReader;
    }
.end annotation


# static fields
.field private static CHAR_MAP:[I = null

.field private static final ESCAPE_CHAR:C = '$'

.field private static final FREE_CHARS:I = 0x30

.field private static MAP_CHAR:[I

.field private static consumed_chars:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static wide:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 63
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/Utility$1;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility$1;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->consumed_chars:Ljava/lang/ThreadLocal;

    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->wide:Z

    .line 1381
    const/16 v0, 0x30

    new-array v0, v0, [I

    sput-object v0, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->CHAR_MAP:[I

    .line 1382
    const/16 v0, 0x100

    new-array v0, v0, [I

    sput-object v0, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->MAP_CHAR:[I

    .line 1385
    const/4 v0, 0x0

    .line 1386
    .local v0, "j":I
    const/16 v1, 0x41

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x5a

    if-gt v1, v2, :cond_0

    .line 1387
    sget-object v2, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->CHAR_MAP:[I

    aput v1, v2, v0

    .line 1388
    sget-object v2, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->MAP_CHAR:[I

    aput v0, v2, v1

    .line 1389
    add-int/lit8 v0, v0, 0x1

    .line 1386
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1391
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x67

    .restart local v1    # "i":I
    :goto_1
    const/16 v2, 0x7a

    if-gt v1, v2, :cond_1

    .line 1392
    sget-object v2, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->CHAR_MAP:[I

    aput v1, v2, v0

    .line 1393
    sget-object v2, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->MAP_CHAR:[I

    aput v0, v2, v1

    .line 1394
    add-int/lit8 v0, v0, 0x1

    .line 1391
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1396
    .end local v1    # "i":I
    :cond_1
    sget-object v1, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->CHAR_MAP:[I

    const/16 v2, 0x24

    aput v2, v1, v0

    .line 1397
    sget-object v3, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->MAP_CHAR:[I

    aput v0, v3, v2

    .line 1398
    add-int/lit8 v0, v0, 0x1

    .line 1399
    const/16 v2, 0x5f

    aput v2, v1, v0

    .line 1400
    aput v0, v3, v2

    .line 1401
    .end local v0    # "j":I
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .line 52
    sget-object v0, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->MAP_CHAR:[I

    return-object v0
.end method

.method static synthetic access$100()[I
    .locals 1

    .line 52
    sget-object v0, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->CHAR_MAP:[I

    return-object v0
.end method

.method public static accessToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "access_flags"    # I

    .line 92
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->accessToString(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static accessToString(IZ)Ljava/lang/String;
    .locals 5
    .param p0, "access_flags"    # I
    .param p1, "for_class"    # Z

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 111
    .local v1, "p":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x4000

    if-ge v1, v3, :cond_2

    .line 112
    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->pow2(I)I

    move-result v1

    .line 113
    and-int v3, p0, v1

    if-eqz v3, :cond_1

    .line 119
    if-eqz p1, :cond_0

    const/16 v3, 0x20

    if-eq v1, v3, :cond_1

    const/16 v3, 0x200

    if-ne v1, v3, :cond_0

    .line 120
    goto :goto_1

    .line 122
    :cond_0
    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/Const;->getAccessName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static byteToShort(B)S
    .locals 1
    .param p0, "b"    # B

    .line 1174
    if-gez p0, :cond_0

    add-int/lit16 v0, p0, 0x100

    int-to-short v0, v0

    goto :goto_0

    :cond_0
    int-to-short v0, p0

    :goto_0
    return v0
.end method

.method public static classOrInterface(I)Ljava/lang/String;
    .locals 1
    .param p0, "access_flags"    # I

    .line 135
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_0

    const-string v0, "interface"

    goto :goto_0

    :cond_0
    const-string v0, "class"

    :goto_0
    return-object v0
.end method

.method public static clearBit(II)I
    .locals 2
    .param p0, "flag"    # I
    .param p1, "i"    # I

    .line 527
    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->pow2(I)I

    move-result v0

    .line 528
    .local v0, "bit":I
    and-int v1, p0, v0

    if-nez v1, :cond_0

    move v1, p0

    goto :goto_0

    :cond_0
    xor-int v1, p0, v0

    :goto_0
    return v1
.end method

.method public static codeToString(Lorg/checkerframework/org/apache/bcel/util/ByteSequence;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    .param p1, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->codeToString(Lorg/checkerframework/org/apache/bcel/util/ByteSequence;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static codeToString(Lorg/checkerframework/org/apache/bcel/util/ByteSequence;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;Z)Ljava/lang/String;
    .locals 20
    .param p0, "bytes"    # Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    .param p1, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .param p2, "verbose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedByte()I

    move-result v1

    int-to-short v1, v1

    .line 192
    .local v1, "opcode":S
    const/4 v2, 0x0

    .line 201
    .local v2, "default_offset":I
    const/4 v3, 0x0

    .line 203
    .local v3, "no_pad_bytes":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/Const;->getOpcodeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .local v4, "buf":Ljava/lang/StringBuilder;
    const/16 v5, 0xaa

    if-eq v1, v5, :cond_0

    const/16 v5, 0xab

    if-ne v1, v5, :cond_4

    .line 208
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->getIndex()I

    move-result v5

    rem-int/lit8 v5, v5, 0x4

    .line 209
    .local v5, "remainder":I
    if-nez v5, :cond_1

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    rsub-int/lit8 v7, v5, 0x4

    :goto_0
    move v3, v7

    .line 210
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v3, :cond_3

    .line 212
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readByte()B

    move-result v8

    move v9, v8

    .local v9, "b":B
    if-eqz v8, :cond_2

    .line 213
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Warning: Padding byte != 0 in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 214
    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/Const;->getOpcodeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 213
    invoke-virtual {v8, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 210
    .end local v9    # "b":B
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 218
    .end local v7    # "i":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v2

    .line 220
    .end local v5    # "remainder":I
    :cond_4
    const-string v5, "\t\t%"

    const-string v7, ")\t"

    const-string v8, "\t\t<"

    const-string v9, "("

    const-string v10, "\tdefault = "

    const-string v11, "\t\t#"

    const-string v12, "\t<"

    const-string v13, ", "

    const-string v14, ">"

    const-string v6, "\t\t"

    const-string v15, "\t"

    const-string v16, ""

    move-object/from16 v17, v5

    const-string v5, ")"

    move-object/from16 v18, v13

    const-string v13, " ("

    const/16 v19, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 433
    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/Const;->getNoOfOperands(I)S

    move-result v5

    if-lez v5, :cond_15

    .line 434
    const/4 v5, 0x0

    .local v5, "i":I
    goto/16 :goto_6

    .line 288
    .end local v5    # "i":I
    :sswitch_0
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->getIndex()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    goto/16 :goto_8

    .line 411
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedShort()I

    move-result v6

    .line 412
    .local v6, "index":I
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedByte()I

    move-result v7

    .line 413
    .local v7, "dimensions":I
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 414
    const/4 v9, 0x7

    invoke-virtual {v0, v6, v9}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 413
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 415
    const-string v9, ">\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_5
    move-object/from16 v5, v16

    .line 416
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .end local v7    # "dimensions":I
    goto/16 :goto_8

    .line 317
    .end local v6    # "index":I
    :sswitch_2
    sput-boolean v19, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->wide:Z

    .line 318
    const-string v5, "\t(wide)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    goto/16 :goto_8

    .line 402
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedShort()I

    move-result v6

    .line 403
    .restart local v6    # "index":I
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 404
    const/4 v8, 0x7

    invoke-virtual {v0, v6, v8}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 403
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 405
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p2, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_6
    move-object/from16 v5, v16

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    goto/16 :goto_8

    .line 323
    .end local v6    # "index":I
    :sswitch_4
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readByte()B

    move-result v6

    invoke-static {v6}, Lorg/checkerframework/org/apache/bcel/Const;->getTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    goto/16 :goto_8

    .line 340
    :sswitch_5
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :sswitch_6
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedShort()I

    move-result v6

    .line 344
    .restart local v6    # "index":I
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 345
    const/4 v8, 0x7

    invoke-virtual {v0, v6, v8}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v8

    .line 344
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 346
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p2, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_7
    move-object/from16 v5, v16

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    goto/16 :goto_8

    .line 376
    .end local v6    # "index":I
    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedShort()I

    move-result v5

    .line 377
    .local v5, "index":I
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 379
    const/16 v8, 0x12

    invoke-virtual {v0, v5, v8}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v8

    .line 377
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_8
    move-object/from16 v7, v16

    .line 380
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 381
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedByte()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 382
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedByte()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 383
    goto/16 :goto_8

    .line 367
    .end local v5    # "index":I
    :sswitch_8
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedShort()I

    move-result v5

    .line 368
    .restart local v5    # "index":I
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedByte()I

    move-result v6

    .line 369
    .local v6, "nargs":I
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 371
    const/16 v9, 0xb

    invoke-virtual {v0, v5, v9}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v9

    .line 369
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_9
    move-object/from16 v7, v16

    .line 372
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 373
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedByte()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 374
    goto/16 :goto_8

    .line 352
    .end local v5    # "index":I
    .end local v6    # "nargs":I
    :sswitch_9
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedShort()I

    move-result v6

    .line 353
    .local v6, "index":I
    invoke-virtual {v0, v6}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v7

    .line 356
    .local v7, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 357
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->getTag()B

    move-result v9

    invoke-virtual {v0, v6, v9}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v9

    .line 356
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_a
    move-object/from16 v5, v16

    .line 358
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    goto/16 :goto_8

    .line 361
    .end local v6    # "index":I
    .end local v7    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    :sswitch_a
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedShort()I

    move-result v6

    .line 362
    .restart local v6    # "index":I
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 363
    const/16 v8, 0xa

    invoke-virtual {v0, v6, v8}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v8

    .line 362
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p2, :cond_b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_b
    move-object/from16 v5, v16

    .line 364
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    goto/16 :goto_8

    .line 331
    .end local v6    # "index":I
    :sswitch_b
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedShort()I

    move-result v7

    .line 332
    .local v7, "index":I
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 333
    const/16 v8, 0x9

    invoke-virtual {v0, v7, v8}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v8

    .line 332
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_c
    move-object/from16 v5, v16

    .line 333
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    goto/16 :goto_8

    .line 243
    .end local v7    # "index":I
    :sswitch_c
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v6

    .line 244
    .local v6, "npairs":I
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->getIndex()I

    move-result v7

    add-int/lit8 v7, v7, -0x8

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    .line 245
    .local v7, "offset":I
    new-array v8, v6, [I

    .line 246
    .local v8, "match":[I
    new-array v11, v6, [I

    .line 247
    .local v11, "jump_table":[I
    add-int/2addr v2, v7

    .line 248
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ", npairs = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 249
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v6, :cond_e

    .line 251
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v12

    aput v12, v8, v10

    .line 252
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v12

    add-int/2addr v12, v7

    aput v12, v11, v10

    .line 253
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget v13, v8, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v13, v18

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget v14, v11, v10

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    add-int/lit8 v12, v6, -0x1

    if-ge v10, v12, :cond_d

    .line 255
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_d
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v18, v13

    goto :goto_2

    .line 258
    .end local v10    # "i":I
    :cond_e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    goto/16 :goto_8

    .line 224
    .end local v6    # "npairs":I
    .end local v7    # "offset":I
    .end local v8    # "match":[I
    .end local v11    # "jump_table":[I
    :sswitch_d
    move-object/from16 v13, v18

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v6

    .line 225
    .local v6, "low":I
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v7

    .line 226
    .local v7, "high":I
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->getIndex()I

    move-result v8

    add-int/lit8 v8, v8, -0xc

    sub-int/2addr v8, v3

    add-int/lit8 v8, v8, -0x1

    .line 227
    .local v8, "offset":I
    add-int/2addr v2, v8

    .line 228
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", low = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 229
    const-string v11, ", high = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    sub-int v9, v7, v6

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [I

    .line 231
    .local v9, "jump_table":[I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    array-length v11, v9

    if-ge v10, v11, :cond_10

    .line 232
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v11

    add-int/2addr v11, v8

    aput v11, v9, v10

    .line 233
    aget v11, v9, v10

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    array-length v11, v9

    add-int/lit8 v11, v11, -0x1

    if-ge v10, v11, :cond_f

    .line 235
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 238
    .end local v10    # "i":I
    :cond_10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    goto/16 :goto_8

    .line 282
    .end local v6    # "low":I
    .end local v7    # "high":I
    .end local v8    # "offset":I
    .end local v9    # "jump_table":[I
    :sswitch_e
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->getIndex()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readShort()S

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    goto/16 :goto_8

    .line 422
    :sswitch_f
    sget-boolean v5, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->wide:Z

    if-eqz v5, :cond_11

    .line 423
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedShort()I

    move-result v5

    .line 424
    .local v5, "vindex":I
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readShort()S

    move-result v6

    .line 425
    .local v6, "constant":I
    const/4 v7, 0x0

    sput-boolean v7, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->wide:Z

    goto :goto_4

    .line 427
    .end local v5    # "vindex":I
    .end local v6    # "constant":I
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedByte()I

    move-result v5

    .line 428
    .restart local v5    # "vindex":I
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readByte()B

    move-result v6

    .line 430
    .restart local v6    # "constant":I
    :goto_4
    move-object/from16 v7, v17

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 431
    goto/16 :goto_8

    .line 303
    .end local v5    # "vindex":I
    .end local v6    # "constant":I
    :sswitch_10
    move-object/from16 v7, v17

    sget-boolean v5, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->wide:Z

    if-eqz v5, :cond_12

    .line 304
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedShort()I

    move-result v5

    .line 305
    .restart local v5    # "vindex":I
    const/4 v6, 0x0

    sput-boolean v6, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->wide:Z

    goto :goto_5

    .line 307
    .end local v5    # "vindex":I
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedByte()I

    move-result v5

    .line 309
    .restart local v5    # "vindex":I
    :goto_5
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    goto/16 :goto_8

    .line 388
    .end local v5    # "vindex":I
    :sswitch_11
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedShort()I

    move-result v7

    .line 389
    .local v7, "index":I
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 390
    invoke-virtual {v0, v7}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v8

    .line 391
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->getTag()B

    move-result v8

    .line 390
    invoke-virtual {v0, v7, v8}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v8

    .line 389
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_13

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_13
    move-object/from16 v5, v16

    .line 391
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    goto :goto_8

    .line 394
    .end local v7    # "index":I
    :sswitch_12
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedByte()I

    move-result v7

    .line 395
    .restart local v7    # "index":I
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 396
    invoke-virtual {v0, v7}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v8

    .line 397
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->getTag()B

    move-result v8

    .line 396
    invoke-virtual {v0, v7, v8}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v8

    .line 395
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_14

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_14
    move-object/from16 v5, v16

    .line 397
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    goto :goto_8

    .line 434
    .end local v7    # "index":I
    .local v5, "i":I
    :goto_6
    int-to-long v7, v5

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/Const;->getOperandTypeCount(I)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_15

    .line 435
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-static {v1, v5}, Lorg/checkerframework/org/apache/bcel/Const;->getOperandType(II)S

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 447
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Unreachable default case reached!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 444
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 445
    goto :goto_7

    .line 441
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readShort()S

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 442
    goto :goto_7

    .line 438
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readByte()B

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 439
    nop

    .line 434
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 452
    .end local v5    # "i":I
    :cond_15
    :goto_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_12
        0x13 -> :sswitch_11
        0x14 -> :sswitch_11
        0x15 -> :sswitch_10
        0x16 -> :sswitch_10
        0x17 -> :sswitch_10
        0x18 -> :sswitch_10
        0x19 -> :sswitch_10
        0x36 -> :sswitch_10
        0x37 -> :sswitch_10
        0x38 -> :sswitch_10
        0x39 -> :sswitch_10
        0x3a -> :sswitch_10
        0x84 -> :sswitch_f
        0x99 -> :sswitch_e
        0x9a -> :sswitch_e
        0x9b -> :sswitch_e
        0x9c -> :sswitch_e
        0x9d -> :sswitch_e
        0x9e -> :sswitch_e
        0x9f -> :sswitch_e
        0xa0 -> :sswitch_e
        0xa1 -> :sswitch_e
        0xa2 -> :sswitch_e
        0xa3 -> :sswitch_e
        0xa4 -> :sswitch_e
        0xa5 -> :sswitch_e
        0xa6 -> :sswitch_e
        0xa7 -> :sswitch_e
        0xa8 -> :sswitch_e
        0xa9 -> :sswitch_10
        0xaa -> :sswitch_d
        0xab -> :sswitch_c
        0xb2 -> :sswitch_b
        0xb3 -> :sswitch_b
        0xb4 -> :sswitch_b
        0xb5 -> :sswitch_b
        0xb6 -> :sswitch_a
        0xb7 -> :sswitch_9
        0xb8 -> :sswitch_9
        0xb9 -> :sswitch_8
        0xba -> :sswitch_7
        0xbb -> :sswitch_5
        0xbc -> :sswitch_4
        0xbd -> :sswitch_3
        0xc0 -> :sswitch_5
        0xc1 -> :sswitch_6
        0xc4 -> :sswitch_2
        0xc5 -> :sswitch_1
        0xc6 -> :sswitch_e
        0xc7 -> :sswitch_e
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static codeToString([BLorg/checkerframework/org/apache/bcel/classfile/ConstantPool;II)Ljava/lang/String;
    .locals 1
    .param p0, "code"    # [B
    .param p1, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .param p2, "index"    # I
    .param p3, "length"    # I

    .line 174
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->codeToString([BLorg/checkerframework/org/apache/bcel/classfile/ConstantPool;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static codeToString([BLorg/checkerframework/org/apache/bcel/classfile/ConstantPool;IIZ)Ljava/lang/String;
    .locals 7
    .param p0, "code"    # [B
    .param p1, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .param p2, "index"    # I
    .param p3, "length"    # I
    .param p4, "verbose"    # Z

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 156
    .local v0, "buf":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v1, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .local v1, "stream":Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 158
    :try_start_1
    invoke-static {v1, p1, p4}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->codeToString(Lorg/checkerframework/org/apache/bcel/util/ByteSequence;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;Z)Ljava/lang/String;

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    .end local v2    # "i":I
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 160
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->available()I

    move-result v3

    if-lez v3, :cond_3

    .line 161
    if-ltz p3, :cond_1

    if-ge v2, p3, :cond_2

    .line 162
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    const/16 v5, 0x20

    const/4 v6, 0x1

    invoke-static {v3, v4, v6, v5}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->fillup(Ljava/lang/String;IZC)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "indices":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1, p1, p4}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->codeToString(Lorg/checkerframework/org/apache/bcel/util/ByteSequence;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    .end local v3    # "indices":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 166
    .end local v2    # "i":I
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 168
    .end local v1    # "stream":Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    nop

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 156
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local p0    # "code":[B
    .end local p1    # "constant_pool":Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .end local p2    # "index":I
    .end local p3    # "length":I
    .end local p4    # "verbose":Z
    :goto_2
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 166
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    .restart local v1    # "stream":Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    .restart local p0    # "code":[B
    .restart local p1    # "constant_pool":Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .restart local p2    # "index":I
    .restart local p3    # "length":I
    .restart local p4    # "verbose":Z
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local p0    # "code":[B
    .end local p1    # "constant_pool":Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .end local p2    # "index":I
    .end local p3    # "length":I
    .end local p4    # "verbose":Z
    :goto_3
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v1    # "stream":Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    .restart local v0    # "buf":Ljava/lang/StringBuilder;
    .restart local p0    # "code":[B
    .restart local p1    # "constant_pool":Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .restart local p2    # "index":I
    .restart local p3    # "length":I
    .restart local p4    # "verbose":Z
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Byte code error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static compactClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 473
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static compactClassName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "strIn"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "chopit"    # Z

    .line 489
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 490
    .local v0, "len":I
    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, "str":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 493
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 494
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 497
    :cond_0
    return-object v1
.end method

.method public static compactClassName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "chopit"    # Z

    .line 511
    const-string v0, "java.lang."

    invoke-static {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "label"    # Ljava/lang/String;

    .line 1501
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1502
    .local v0, "ch":[C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1503
    .local v1, "buf":Ljava/lang/StringBuilder;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-char v4, v0, v3

    .line 1504
    .local v4, "element":C
    sparse-switch v4, :sswitch_data_0

    .line 1521
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1518
    :sswitch_0
    const-string v5, "\\\\"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    goto :goto_1

    .line 1515
    :sswitch_1
    const-string v5, "\\\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    goto :goto_1

    .line 1512
    :sswitch_2
    const-string v5, "\\\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    goto :goto_1

    .line 1509
    :sswitch_3
    const-string v5, "\\r"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    goto :goto_1

    .line 1506
    :sswitch_4
    const-string v5, "\\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    nop

    .line 1503
    .end local v4    # "element":C
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1525
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_4
        0xd -> :sswitch_3
        0x22 -> :sswitch_2
        0x27 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method private static countBrackets(Ljava/lang/String;)I
    .locals 7
    .param p0, "brackets"    # Ljava/lang/String;

    .line 1055
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1056
    .local v0, "chars":[C
    const/4 v1, 0x0

    .line 1057
    .local v1, "count":I
    const/4 v2, 0x0

    .line 1058
    .local v2, "open":Z
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    const-string v5, "Illegally nested brackets:"

    if-ge v4, v3, :cond_2

    aget-char v6, v0, v4

    .line 1059
    .local v6, "c":C
    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 1067
    :pswitch_1
    if-eqz v2, :cond_0

    .line 1070
    const/4 v2, 0x0

    .line 1071
    add-int/lit8 v1, v1, 0x1

    .line 1072
    goto :goto_1

    .line 1068
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1061
    :pswitch_2
    if-nez v2, :cond_1

    .line 1064
    const/4 v2, 0x1

    .line 1065
    goto :goto_1

    .line 1062
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1058
    .end local v6    # "c":C
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1078
    :cond_2
    if-nez v2, :cond_3

    .line 1081
    return v1

    .line 1079
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static decode(Ljava/lang/String;Z)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "uncompress"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1357
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaReader;

    new-instance v1, Ljava/io/CharArrayReader;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaReader;-><init>(Ljava/io/Reader;)V

    .line 1358
    .local v0, "jr":Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaReader;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1357
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    nop

    .line 1360
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaReader;->read()I

    move-result v2

    move v3, v2

    .local v3, "ch":I
    if-ltz v2, :cond_0

    .line 1361
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 1363
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1364
    .end local v3    # "ch":I
    .local v2, "bytes":[B
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaReader;->close()V

    .line 1365
    .end local v0    # "jr":Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaReader;
    if-eqz p1, :cond_2

    .line 1366
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1367
    .local v0, "gis":Ljava/util/zip/GZIPInputStream;
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x3

    new-array v1, v1, [B

    .line 1368
    .local v1, "tmp":[B
    const/4 v3, 0x0

    .line 1370
    .local v3, "count":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->read()I

    move-result v4

    move v5, v4

    .local v5, "b":I
    if-ltz v4, :cond_1

    .line 1371
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "count":I
    .local v4, "count":I
    int-to-byte v6, v5

    aput-byte v6, v1, v3

    move v3, v4

    goto :goto_1

    .line 1373
    .end local v4    # "count":I
    .restart local v3    # "count":I
    :cond_1
    new-array v2, v3, [B

    .line 1374
    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1376
    .end local v0    # "gis":Ljava/util/zip/GZIPInputStream;
    .end local v1    # "tmp":[B
    .end local v3    # "count":I
    .end local v5    # "b":I
    :cond_2
    return-object v2

    .line 1357
    .end local v2    # "bytes":[B
    .local v0, "jr":Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaReader;
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "jr":Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaReader;
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "s":Ljava/lang/String;
    .end local p1    # "uncompress":Z
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1364
    .restart local v0    # "jr":Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaReader;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "s":Ljava/lang/String;
    .restart local p1    # "uncompress":Z
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "jr":Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaReader;
    .end local p0    # "s":Ljava/lang/String;
    .end local p1    # "uncompress":Z
    :goto_2
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1357
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "jr":Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaReader;
    .restart local p0    # "s":Ljava/lang/String;
    .restart local p1    # "uncompress":Z
    :catchall_3
    move-exception v1

    .end local v0    # "jr":Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaReader;
    .end local p0    # "s":Ljava/lang/String;
    .end local p1    # "uncompress":Z
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1364
    .restart local v0    # "jr":Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaReader;
    .restart local p0    # "s":Ljava/lang/String;
    .restart local p1    # "uncompress":Z
    :catchall_4
    move-exception v2

    :try_start_7
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
.end method

.method public static encode([BZ)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "compress"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1329
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1330
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1331
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1330
    .local v2, "gos":Ljava/util/zip/GZIPOutputStream;
    nop

    .line 1332
    :try_start_1
    array-length v3, p0

    invoke-virtual {v2, p0, v0, v3}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 1333
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p0, v3

    .line 1334
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .end local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_2

    .line 1330
    .restart local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catchall_0
    move-exception v0

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local p0    # "bytes":[B
    .end local p1    # "compress":Z
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1334
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local p0    # "bytes":[B
    .restart local p1    # "compress":Z
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "bytes":[B
    .end local p1    # "compress":Z
    :goto_0
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1330
    .end local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "bytes":[B
    .restart local p1    # "compress":Z
    :catchall_3
    move-exception v0

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "bytes":[B
    .end local p1    # "compress":Z
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1334
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "bytes":[B
    .restart local p1    # "compress":Z
    :catchall_4
    move-exception v2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v3

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2

    .line 1336
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_2
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 1337
    .local v1, "caw":Ljava/io/CharArrayWriter;
    new-instance v2, Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaWriter;

    invoke-direct {v2, v1}, Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaWriter;-><init>(Ljava/io/Writer;)V

    .line 1338
    .local v2, "jw":Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaWriter;
    :try_start_8
    array-length v3, p0

    :goto_3
    if-ge v0, v3, :cond_1

    aget-byte v4, p0, v0

    .line 1339
    .local v4, "b":B
    and-int/lit16 v5, v4, 0xff

    .line 1340
    .local v5, "in":I
    invoke-virtual {v2, v5}, Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaWriter;->write(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 1338
    .end local v4    # "b":B
    .end local v5    # "in":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1342
    :cond_1
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaWriter;->close()V

    .line 1343
    .end local v2    # "jw":Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaWriter;
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1337
    .restart local v2    # "jw":Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaWriter;
    :catchall_6
    move-exception v0

    .end local v1    # "caw":Ljava/io/CharArrayWriter;
    .end local v2    # "jw":Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaWriter;
    .end local p0    # "bytes":[B
    .end local p1    # "compress":Z
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 1342
    .restart local v1    # "caw":Ljava/io/CharArrayWriter;
    .restart local v2    # "jw":Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaWriter;
    .restart local p0    # "bytes":[B
    .restart local p1    # "compress":Z
    :catchall_7
    move-exception v3

    :try_start_a
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/Utility$JavaWriter;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    goto :goto_4

    :catchall_8
    move-exception v4

    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v3
.end method

.method static equals([B[B)Z
    .locals 5
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .line 1240
    array-length v0, p0

    move v1, v0

    .local v1, "size":I
    array-length v2, p1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    .line 1241
    return v3

    .line 1243
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1244
    aget-byte v2, p0, v0

    aget-byte v4, p1, v0

    if-eq v2, v4, :cond_1

    .line 1245
    return v3

    .line 1243
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1248
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static fillup(Ljava/lang/String;IZC)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "length"    # I
    .param p2, "left_justify"    # Z
    .param p3, "fill"    # C

    .line 1226
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    .line 1227
    .local v0, "len":I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-array v1, v1, [C

    .line 1228
    .local v1, "buf":[C
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 1229
    aput-char p3, v1, v2

    .line 1228
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1231
    .end local v2    # "j":I
    :cond_1
    if-eqz p2, :cond_2

    .line 1232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1234
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static format(IIZC)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I
    .param p1, "length"    # I
    .param p2, "left_justify"    # Z
    .param p3, "fill"    # C

    .line 1212
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->fillup(Ljava/lang/String;IZC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "type"    # Ljava/lang/String;

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1003
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1004
    .local v1, "chars":[C
    const/4 v2, 0x0

    .line 1005
    .local v2, "char_found":Z
    const/4 v3, 0x0

    .line 1006
    .local v3, "delim":Z
    const/4 v4, -0x1

    .line 1007
    .local v4, "index":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_2

    .line 1008
    aget-char v6, v1, v5

    sparse-switch v6, :sswitch_data_0

    .line 1025
    const/4 v2, 0x1

    .line 1026
    if-nez v3, :cond_1

    .line 1027
    aget-char v6, v1, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1019
    :sswitch_0
    if-eqz v2, :cond_0

    .line 1022
    move v4, v5

    .line 1023
    goto :goto_2

    .line 1020
    :cond_0
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1014
    :sswitch_1
    if-eqz v2, :cond_1

    .line 1015
    const/4 v3, 0x1

    .line 1007
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1031
    .end local v5    # "i":I
    :cond_2
    :goto_2
    const/4 v5, 0x0

    .line 1032
    .local v5, "brackets":I
    if-lez v4, :cond_3

    .line 1033
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->countBrackets(Ljava/lang/String;)I

    move-result v5

    .line 1035
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1036
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1037
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v5, :cond_4

    .line 1038
    const/16 v7, 0x5b

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1037
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1040
    .end local v6    # "i":I
    :cond_4
    const/4 v6, 0x0

    .line 1041
    .local v6, "found":Z
    const/4 v7, 0x4

    .local v7, "i":I
    :goto_4
    const/16 v8, 0xc

    if-gt v7, v8, :cond_6

    if-nez v6, :cond_6

    .line 1042
    invoke-static {v7}, Lorg/checkerframework/org/apache/bcel/Const;->getTypeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1043
    const/4 v6, 0x1

    .line 1044
    invoke-static {v7}, Lorg/checkerframework/org/apache/bcel/Const;->getShortTypeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1047
    .end local v7    # "i":I
    :cond_6
    if-nez v6, :cond_7

    .line 1048
    const/16 v7, 0x4c

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2e

    const/16 v9, 0x2f

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1050
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method public static isJavaIdentifierPart(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 1303
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-le p0, v0, :cond_3

    :cond_2
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSet(II)Z
    .locals 1
    .param p0, "flag"    # I
    .param p1, "i"    # I

    .line 536
    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->pow2(I)I

    move-result v0

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static methodSignatureArgumentTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
        }
    .end annotation

    .line 576
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->methodSignatureArgumentTypes(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static methodSignatureArgumentTypes(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 5
    .param p0, "signature"    # Ljava/lang/String;
    .param p1, "chopit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
        }
    .end annotation

    .line 588
    const-string v0, "Invalid method signature: "

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 591
    .local v1, "vec":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_1

    .line 594
    const/4 v2, 0x1

    .line 595
    .local v2, "index":I
    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v4, :cond_0

    .line 596
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->signatureToString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    sget-object v3, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->consumed_chars:Ljava/lang/ThreadLocal;

    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->unwrap(Ljava/lang/ThreadLocal;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v3

    goto :goto_0

    .line 602
    :cond_0
    nop

    .line 603
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 592
    .end local v2    # "index":I
    :cond_1
    :try_start_1
    new-instance v2, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    .end local v1    # "vec":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p0    # "signature":Ljava/lang/String;
    .end local p1    # "chopit":Z
    throw v2
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 600
    .restart local v1    # "vec":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p0    # "signature":Ljava/lang/String;
    .restart local p1    # "chopit":Z
    :catch_0
    move-exception v2

    .line 601
    .local v2, "e":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v3, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static methodSignatureReturnType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
        }
    .end annotation

    .line 613
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->methodSignatureReturnType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static methodSignatureReturnType(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "signature"    # Ljava/lang/String;
    .param p1, "chopit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
        }
    .end annotation

    .line 628
    const/16 v0, 0x29

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 629
    .local v0, "index":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->signatureToString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    .local v1, "type":Ljava/lang/String;
    nop

    .line 633
    return-object v1

    .line 630
    .end local v0    # "index":I
    .end local v1    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid method signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static methodSignatureToString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "signature"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "access"    # Ljava/lang/String;

    .line 646
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->methodSignatureToString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static methodSignatureToString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "signature"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "access"    # Ljava/lang/String;
    .param p3, "chopit"    # Z

    .line 651
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->methodSignatureToString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static methodSignatureToString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;)Ljava/lang/String;
    .locals 10
    .param p0, "signature"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "access"    # Ljava/lang/String;
    .param p3, "chopit"    # Z
    .param p4, "vars"    # Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
        }
    .end annotation

    .line 692
    const-string v0, "Invalid method signature: "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 695
    .local v1, "buf":Ljava/lang/StringBuilder;
    const-string v2, "static"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 697
    .local v2, "var_index":I
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    if-ne v5, v6, :cond_7

    .line 700
    const/4 v5, 0x1

    .line 701
    .local v5, "index":I
    :goto_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v7, 0x29

    const-string v8, " "

    if-eq v6, v7, :cond_4

    .line 702
    :try_start_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p3}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->signatureToString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 703
    .local v6, "param_type":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    if-eqz p4, :cond_1

    .line 705
    invoke-virtual {p4, v2, v4}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->getLocalVariable(II)Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    move-result-object v7

    .line 706
    .local v7, "l":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    if-eqz v7, :cond_0

    .line 707
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    .end local v7    # "l":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    :cond_0
    goto :goto_1

    .line 710
    :cond_1
    const-string v7, " arg"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 712
    :goto_1
    const-string v7, "double"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "long"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    .line 715
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 713
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x2

    .line 717
    :goto_3
    const-string v7, ", "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    sget-object v7, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->consumed_chars:Ljava/lang/ThreadLocal;

    invoke-static {v7}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->unwrap(Ljava/lang/ThreadLocal;)I

    move-result v7

    add-int/2addr v5, v7

    .line 720
    .end local v6    # "param_type":Ljava/lang/String;
    goto :goto_0

    .line 721
    :cond_4
    add-int/2addr v5, v3

    .line 723
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->signatureToString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 726
    .local v0, "type":Ljava/lang/String;
    nop

    .line 727
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v3, :cond_5

    .line 728
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 730
    :cond_5
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    move-object v4, v8

    goto :goto_4

    :cond_6
    const-string v4, ""

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 732
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 731
    return-object v3

    .line 698
    .end local v0    # "type":Ljava/lang/String;
    .end local v5    # "index":I
    :cond_7
    :try_start_2
    new-instance v3, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local v2    # "var_index":I
    .end local p0    # "signature":Ljava/lang/String;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "access":Ljava/lang/String;
    .end local p3    # "chopit":Z
    .end local p4    # "vars":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;
    throw v3
    :try_end_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 724
    .restart local v1    # "buf":Ljava/lang/StringBuilder;
    .restart local v2    # "var_index":I
    .restart local p0    # "signature":Ljava/lang/String;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "access":Ljava/lang/String;
    .restart local p3    # "chopit":Z
    .restart local p4    # "vars":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;
    :catch_0
    move-exception v3

    .line 725
    .local v3, "e":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v4, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static methodTypeToSignature(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "ret"    # Ljava/lang/String;
    .param p1, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
        }
    .end annotation

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 554
    .local v0, "buf":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    .line 555
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 556
    .local v3, "element":Ljava/lang/String;
    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->getSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 557
    .local v4, "str":Ljava/lang/String;
    const-string v5, "V"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 560
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .end local v3    # "element":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 558
    .restart local v3    # "element":Ljava/lang/String;
    :cond_0
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid type: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 563
    .end local v3    # "element":Ljava/lang/String;
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->getSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "str":Ljava/lang/String;
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static pow2(I)I
    .locals 1
    .param p0, "n"    # I

    .line 738
    const/4 v0, 0x1

    shl-int/2addr v0, p0

    return v0
.end method

.method public static printArray([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # [Ljava/lang/Object;

    .line 1263
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->printArray([Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static printArray([Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # [Ljava/lang/Object;
    .param p1, "braces"    # Z

    .line 1268
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->printArray([Ljava/lang/Object;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static printArray([Ljava/lang/Object;ZZ)Ljava/lang/String;
    .locals 6
    .param p0, "obj"    # [Ljava/lang/Object;
    .param p1, "braces"    # Z
    .param p2, "quote"    # Z

    .line 1273
    if-nez p0, :cond_0

    .line 1274
    const/4 v0, 0x0

    return-object v0

    .line 1276
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1277
    .local v0, "buf":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    .line 1278
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1280
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_6

    .line 1281
    aget-object v2, p0, v1

    if-eqz v2, :cond_4

    .line 1282
    const-string v2, "\""

    const-string v3, ""

    if-eqz p2, :cond_2

    move-object v4, v2

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1284
    :cond_4
    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    :goto_3
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_5

    .line 1287
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1280
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1290
    .end local v1    # "i":I
    :cond_6
    if-eqz p1, :cond_7

    .line 1291
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1293
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static printArray(Ljava/io/PrintStream;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "out"    # Ljava/io/PrintStream;
    .param p1, "obj"    # [Ljava/lang/Object;

    .line 1253
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->printArray([Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1254
    return-void
.end method

.method public static printArray(Ljava/io/PrintWriter;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "out"    # Ljava/io/PrintWriter;
    .param p1, "obj"    # [Ljava/lang/Object;

    .line 1258
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->printArray([Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1259
    return-void
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "old"    # Ljava/lang/String;
    .param p2, "new_"    # Ljava/lang/String;

    .line 754
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 756
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 758
    .local v1, "old_index":I
    :goto_0
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    move v3, v2

    .local v3, "index":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 759
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int v1, v3, v2

    goto :goto_0

    .line 763
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v2

    .line 768
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v1    # "old_index":I
    .end local v3    # "index":I
    :cond_1
    goto :goto_1

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 769
    .end local v0    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :goto_1
    return-object p0
.end method

.method public static searchOpcode(Ljava/lang/String;)S
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1159
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1160
    const/4 v0, 0x0

    .local v0, "i":S
    :goto_0
    sget v1, Lorg/checkerframework/org/apache/bcel/Const;->OPCODE_NAMES_LENGTH:I

    if-ge v0, v1, :cond_1

    .line 1161
    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/Const;->getOpcodeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1162
    return v0

    .line 1160
    :cond_0
    add-int/lit8 v1, v0, 0x1

    int-to-short v0, v1

    goto :goto_0

    .line 1165
    .end local v0    # "i":S
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static setBit(II)I
    .locals 1
    .param p0, "flag"    # I
    .param p1, "i"    # I

    .line 519
    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->pow2(I)I

    move-result v0

    or-int/2addr v0, p0

    return v0
.end method

.method public static signatureToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "signature"    # Ljava/lang/String;

    .line 789
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->signatureToString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static signatureToString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 16
    .param p0, "signature"    # Ljava/lang/String;
    .param p1, "chopit"    # Z

    .line 832
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "Invalid signature: "

    sget-object v0, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->consumed_chars:Ljava/lang/ThreadLocal;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->wrap(Ljava/lang/ThreadLocal;I)V

    .line 834
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3b

    sparse-switch v5, :sswitch_data_0

    .line 987
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    goto/16 :goto_5

    .line 970
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 972
    .local v0, "brackets":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_0

    .line 973
    const-string v5, "[]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 975
    :cond_0
    move v5, v4

    .line 977
    .local v5, "consumed_chars":I
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->signatureToString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 980
    .local v6, "type":Ljava/lang/String;
    sget-object v7, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->consumed_chars:Ljava/lang/ThreadLocal;

    invoke-static {v7}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->unwrap(Ljava/lang/ThreadLocal;)I

    move-result v7

    add-int/2addr v7, v5

    .line 981
    .local v7, "_temp":I
    sget-object v8, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->consumed_chars:Ljava/lang/ThreadLocal;

    invoke-static {v8, v7}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->wrap(Ljava/lang/ThreadLocal;I)V

    .line 982
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 964
    .end local v0    # "brackets":Ljava/lang/StringBuilder;
    .end local v4    # "n":I
    .end local v5    # "consumed_chars":I
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "_temp":I
    :sswitch_1
    const-string v0, "boolean"

    return-object v0

    .line 985
    :sswitch_2
    const-string v0, "void"

    return-object v0

    .line 848
    :sswitch_3
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 849
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 853
    sget-object v5, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->consumed_chars:Ljava/lang/ThreadLocal;

    add-int/lit8 v6, v0, 0x1

    invoke-static {v5, v6}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->wrap(Ljava/lang/ThreadLocal;I)V

    .line 854
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 850
    :cond_1
    new-instance v4, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    .end local p0    # "signature":Ljava/lang/String;
    .end local p1    # "chopit":Z
    throw v4

    .line 962
    .end local v0    # "index":I
    .restart local p0    # "signature":Ljava/lang/String;
    .restart local p1    # "chopit":Z
    :sswitch_4
    const-string v0, "short"

    return-object v0

    .line 859
    :sswitch_5
    const/16 v5, 0x3c

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 860
    .local v7, "fromIndex":I
    const/16 v8, 0x3e

    if-gez v7, :cond_2

    .line 861
    const/4 v7, 0x0

    goto :goto_1

    .line 863
    :cond_2
    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    move v7, v9

    .line 864
    if-ltz v7, :cond_10

    .line 868
    :goto_1
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 869
    .local v9, "index":I
    if-ltz v9, :cond_f

    .line 874
    invoke-virtual {v1, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 875
    .local v0, "bracketIndex":I
    if-gez v0, :cond_3

    .line 877
    sget-object v5, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->consumed_chars:Ljava/lang/ThreadLocal;

    add-int/lit8 v6, v9, 0x1

    invoke-static {v5, v6}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->wrap(Ljava/lang/ThreadLocal;I)V

    .line 878
    invoke-virtual {v1, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 881
    :cond_3
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 882
    .end local v7    # "fromIndex":I
    .local v5, "fromIndex":I
    if-ltz v5, :cond_e

    .line 885
    if-ge v5, v0, :cond_4

    .line 887
    sget-object v6, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->consumed_chars:Ljava/lang/ThreadLocal;

    add-int/lit8 v7, v5, 0x1

    invoke-static {v6, v7}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->wrap(Ljava/lang/ThreadLocal;I)V

    .line 888
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 893
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "<"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 894
    .local v7, "type":Ljava/lang/StringBuilder;
    add-int/lit8 v10, v0, 0x1

    .line 897
    .local v10, "consumed_chars":I
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "? super "

    const/16 v13, 0x2d

    const-string v14, "? extends "

    const/16 v15, 0x2b

    if-ne v11, v15, :cond_5

    .line 898
    :try_start_1
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 900
    :cond_5
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v13, :cond_6

    .line 901
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    add-int/lit8 v10, v10, 0x1

    .line 906
    :cond_6
    :goto_2
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "?"

    const/16 v13, 0x2a

    if-ne v11, v13, :cond_7

    .line 907
    :try_start_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    add-int/2addr v10, v4

    goto :goto_3

    .line 910
    :cond_7
    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v2}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->signatureToString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    sget-object v11, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->consumed_chars:Ljava/lang/ThreadLocal;

    invoke-static {v11}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->unwrap(Ljava/lang/ThreadLocal;)I

    move-result v11

    add-int/2addr v10, v11

    .line 913
    sget-object v11, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->consumed_chars:Ljava/lang/ThreadLocal;

    invoke-static {v11, v10}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->wrap(Ljava/lang/ThreadLocal;I)V

    .line 917
    :goto_3
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v8, :cond_b

    .line 918
    const-string v11, ", "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v15, :cond_8

    .line 921
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    add-int/lit8 v10, v10, 0x1

    const/16 v8, 0x2d

    goto :goto_4

    .line 923
    :cond_8
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v8, 0x2d

    if-ne v11, v8, :cond_9

    .line 924
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    add-int/lit8 v10, v10, 0x1

    .line 927
    :cond_9
    :goto_4
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v13, :cond_a

    .line 928
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    add-int/lit8 v10, v10, 0x1

    const/16 v8, 0x3e

    goto :goto_3

    .line 931
    :cond_a
    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v2}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->signatureToString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    sget-object v11, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->consumed_chars:Ljava/lang/ThreadLocal;

    invoke-static {v11}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->unwrap(Ljava/lang/ThreadLocal;)I

    move-result v11

    add-int/2addr v10, v11

    .line 934
    sget-object v11, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->consumed_chars:Ljava/lang/ThreadLocal;

    invoke-static {v11, v10}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->wrap(Ljava/lang/ThreadLocal;I)V

    const/16 v8, 0x3e

    goto :goto_3

    .line 939
    :cond_b
    add-int/2addr v10, v4

    .line 940
    const-string v4, ">"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x2e

    if-ne v4, v6, :cond_c

    .line 944
    const-string v4, "."

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "L"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v6, v10, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->signatureToString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    sget-object v4, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->consumed_chars:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->unwrap(Ljava/lang/ThreadLocal;)I

    move-result v4

    add-int/2addr v4, v10

    .line 952
    .end local v10    # "consumed_chars":I
    .local v4, "consumed_chars":I
    sget-object v6, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->consumed_chars:Ljava/lang/ThreadLocal;

    invoke-static {v6, v4}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->wrap(Ljava/lang/ThreadLocal;I)V

    .line 953
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 955
    .end local v4    # "consumed_chars":I
    .restart local v10    # "consumed_chars":I
    :cond_c
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x3b

    if-ne v4, v6, :cond_d

    .line 958
    sget-object v4, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->consumed_chars:Ljava/lang/ThreadLocal;

    add-int/lit8 v6, v10, 0x1

    invoke-static {v4, v6}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->wrap(Ljava/lang/ThreadLocal;I)V

    .line 959
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 956
    :cond_d
    new-instance v4, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    .end local p0    # "signature":Ljava/lang/String;
    .end local p1    # "chopit":Z
    throw v4

    .line 883
    .end local v7    # "type":Ljava/lang/StringBuilder;
    .end local v10    # "consumed_chars":I
    .restart local p0    # "signature":Ljava/lang/String;
    .restart local p1    # "chopit":Z
    :cond_e
    new-instance v4, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    .end local p0    # "signature":Ljava/lang/String;
    .end local p1    # "chopit":Z
    throw v4

    .line 870
    .end local v0    # "bracketIndex":I
    .end local v5    # "fromIndex":I
    .local v7, "fromIndex":I
    .restart local p0    # "signature":Ljava/lang/String;
    .restart local p1    # "chopit":Z
    :cond_f
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    .end local p0    # "signature":Ljava/lang/String;
    .end local p1    # "chopit":Z
    throw v0

    .line 865
    .end local v9    # "index":I
    .restart local p0    # "signature":Ljava/lang/String;
    .restart local p1    # "chopit":Z
    :cond_10
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    .end local p0    # "signature":Ljava/lang/String;
    .end local p1    # "chopit":Z
    throw v0

    .line 846
    .end local v7    # "fromIndex":I
    .restart local p0    # "signature":Ljava/lang/String;
    .restart local p1    # "chopit":Z
    :sswitch_6
    const-string v0, "long"

    return-object v0

    .line 844
    :sswitch_7
    const-string v0, "int"

    return-object v0

    .line 842
    :sswitch_8
    const-string v0, "float"

    return-object v0

    .line 840
    :sswitch_9
    const-string v0, "double"

    return-object v0

    .line 838
    :sswitch_a
    const-string v0, "char"

    return-object v0

    .line 836
    :sswitch_b
    const-string v0, "byte"

    return-object v0

    .line 987
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid signature: `"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    .end local p0    # "signature":Ljava/lang/String;
    .end local p1    # "chopit":Z
    throw v0
    :try_end_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 989
    .restart local p0    # "signature":Ljava/lang/String;
    .restart local p1    # "chopit":Z
    :catch_0
    move-exception v0

    .line 990
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v4, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_b
        0x43 -> :sswitch_a
        0x44 -> :sswitch_9
        0x46 -> :sswitch_8
        0x49 -> :sswitch_7
        0x4a -> :sswitch_6
        0x4c -> :sswitch_5
        0x53 -> :sswitch_4
        0x54 -> :sswitch_3
        0x56 -> :sswitch_2
        0x5a -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1186
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 1187
    aget-byte v2, p0, v1

    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->byteToShort(B)S

    move-result v2

    .line 1188
    .local v2, "b":S
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1189
    .local v3, "hex":Ljava/lang/String;
    const/16 v4, 0x10

    if-ge v2, v4, :cond_0

    .line 1190
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1192
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    .line 1194
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1186
    .end local v2    # "b":S
    .end local v3    # "hex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1197
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static typeOfMethodSignature(Ljava/lang/String;)B
    .locals 4
    .param p0, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
        }
    .end annotation

    .line 1097
    const-string v0, "Invalid method signature: "

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_0

    .line 1100
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1101
    .local v1, "index":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->typeOfSignature(Ljava/lang/String;)B

    move-result v0

    return v0

    .line 1098
    .end local v1    # "index":I
    :cond_0
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    .end local p0    # "signature":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1102
    .restart local p0    # "signature":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1103
    .local v1, "e":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v2, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static typeOfSignature(Ljava/lang/String;)B
    .locals 4
    .param p0, "signature"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
        }
    .end annotation

    .line 1119
    const-string v0, "Invalid method signature: "

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1148
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    goto :goto_0

    .line 1136
    :sswitch_0
    const/16 v0, 0xd

    return v0

    .line 1140
    :sswitch_1
    const/4 v0, 0x4

    return v0

    .line 1138
    :sswitch_2
    const/16 v0, 0xc

    return v0

    .line 1142
    :sswitch_3
    const/16 v0, 0x9

    return v0

    .line 1134
    :sswitch_4
    const/16 v0, 0xe

    return v0

    .line 1131
    :sswitch_5
    const/16 v0, 0xb

    return v0

    .line 1129
    :sswitch_6
    const/16 v0, 0xa

    return v0

    .line 1127
    :sswitch_7
    const/4 v0, 0x6

    return v0

    .line 1125
    :sswitch_8
    const/4 v0, 0x7

    return v0

    .line 1123
    :sswitch_9
    const/4 v0, 0x5

    return v0

    .line 1121
    :sswitch_a
    const/16 v0, 0x8

    return v0

    .line 1146
    :sswitch_b
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->typeOfSignature(Ljava/lang/String;)B

    move-result v0

    return v0

    .line 1148
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    .end local p0    # "signature":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1150
    .restart local p0    # "signature":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1151
    .local v1, "e":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v2, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_b
        0x2a -> :sswitch_b
        0x2b -> :sswitch_b
        0x42 -> :sswitch_a
        0x43 -> :sswitch_9
        0x44 -> :sswitch_8
        0x46 -> :sswitch_7
        0x49 -> :sswitch_6
        0x4a -> :sswitch_5
        0x4c -> :sswitch_4
        0x53 -> :sswitch_3
        0x54 -> :sswitch_4
        0x56 -> :sswitch_2
        0x5a -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private static unwrap(Ljava/lang/ThreadLocal;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 55
    .local p0, "tl":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static wrap(Ljava/lang/ThreadLocal;I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 60
    .local p0, "tl":Ljava/lang/ThreadLocal;, "Ljava/lang/ThreadLocal<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 61
    return-void
.end method
