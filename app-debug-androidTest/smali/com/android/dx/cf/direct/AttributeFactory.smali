.class public Lcom/android/dx/cf/direct/AttributeFactory;
.super Ljava/lang/Object;
.source "AttributeFactory.java"


# static fields
.field public static final CTX_CLASS:I = 0x0

.field public static final CTX_CODE:I = 0x3

.field public static final CTX_COUNT:I = 0x4

.field public static final CTX_FIELD:I = 0x1

.field public static final CTX_METHOD:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public final parse(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 15
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "context"    # I
    .param p3, "offset"    # I
    .param p4, "observer"    # Lcom/android/dx/cf/iface/ParseObserver;

    .line 71
    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    if-eqz p1, :cond_3

    .line 75
    if-ltz v8, :cond_2

    const/4 v0, 0x4

    if-ge v8, v0, :cond_2

    .line 79
    const/4 v1, 0x0

    .line 82
    .local v1, "name":Lcom/android/dx/rop/cst/CstString;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object v2

    move-object v11, v2

    .line 83
    .local v11, "bytes":Lcom/android/dx/util/ByteArray;
    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/android/dx/rop/cst/ConstantPool;

    move-result-object v2

    move-object v12, v2

    .line 84
    .local v12, "pool":Lcom/android/dx/rop/cst/ConstantPool;
    invoke-virtual {v11, v9}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v2

    move v13, v2

    .line 85
    .local v13, "nameIdx":I
    add-int/lit8 v2, v9, 0x2

    invoke-virtual {v11, v2}, Lcom/android/dx/util/ByteArray;->getInt(I)I

    move-result v6

    .line 87
    .local v6, "length":I
    invoke-interface {v12, v13}, Lcom/android/dx/rop/cst/ConstantPool;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v2

    check-cast v2, Lcom/android/dx/rop/cst/CstString;
    :try_end_0
    .catch Lcom/android/dx/cf/iface/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v14, v2

    .line 89
    .end local v1    # "name":Lcom/android/dx/rop/cst/CstString;
    .local v14, "name":Lcom/android/dx/rop/cst/CstString;
    if-eqz v10, :cond_0

    .line 90
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 91
    invoke-virtual {v14}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    const/4 v2, 0x2

    invoke-interface {v10, v11, v9, v2, v1}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 92
    add-int/lit8 v1, v9, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 93
    invoke-static {v6}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-interface {v10, v11, v1, v0, v2}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 96
    :cond_0
    invoke-virtual {v14}, Lcom/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v9, 0x6

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/dx/cf/direct/AttributeFactory;->parse0(Lcom/android/dx/cf/direct/DirectClassFile;ILjava/lang/String;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;

    move-result-object v0
    :try_end_1
    .catch Lcom/android/dx/cf/iface/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 98
    .end local v6    # "length":I
    .end local v11    # "bytes":Lcom/android/dx/util/ByteArray;
    .end local v12    # "pool":Lcom/android/dx/rop/cst/ConstantPool;
    .end local v13    # "nameIdx":I
    :catch_0
    move-exception v0

    move-object v1, v14

    goto :goto_0

    .end local v14    # "name":Lcom/android/dx/rop/cst/CstString;
    .restart local v1    # "name":Lcom/android/dx/rop/cst/CstString;
    :catch_1
    move-exception v0

    .line 99
    .local v0, "ex":Lcom/android/dx/cf/iface/ParseException;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "...while parsing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, ""

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "attribute at offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 101
    invoke-static/range {p3 .. p3}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v0, v2}, Lcom/android/dx/cf/iface/ParseException;->addContext(Ljava/lang/String;)V

    .line 102
    throw v0

    .line 76
    .end local v0    # "ex":Lcom/android/dx/cf/iface/ParseException;
    .end local v1    # "name":Lcom/android/dx/rop/cst/CstString;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cf == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected parse0(Lcom/android/dx/cf/direct/DirectClassFile;ILjava/lang/String;IILcom/android/dx/cf/iface/ParseObserver;)Lcom/android/dx/cf/iface/Attribute;
    .locals 9
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "context"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "offset"    # I
    .param p5, "length"    # I
    .param p6, "observer"    # Lcom/android/dx/cf/iface/ParseObserver;

    .line 124
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object v6

    .line 125
    .local v6, "bytes":Lcom/android/dx/util/ByteArray;
    invoke-virtual {p1}, Lcom/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/android/dx/rop/cst/ConstantPool;

    move-result-object v7

    .line 126
    .local v7, "pool":Lcom/android/dx/rop/cst/ConstantPool;
    new-instance v8, Lcom/android/dx/cf/attrib/RawAttribute;

    move-object v0, v8

    move-object v1, p3

    move-object v2, v6

    move v3, p4

    move v4, p5

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/cf/attrib/RawAttribute;-><init>(Ljava/lang/String;Lcom/android/dx/util/ByteArray;IILcom/android/dx/rop/cst/ConstantPool;)V

    .line 128
    .local v0, "result":Lcom/android/dx/cf/iface/Attribute;
    if-eqz p6, :cond_0

    .line 129
    const-string v1, "attribute data"

    invoke-interface {p6, v6, p4, p5, v1}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 132
    :cond_0
    return-object v0
.end method
