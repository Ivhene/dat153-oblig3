.class abstract Lcom/android/dx/cf/direct/MemberListParser;
.super Ljava/lang/Object;
.source "MemberListParser.java"


# instance fields
.field private final attributeFactory:Lcom/android/dx/cf/direct/AttributeFactory;

.field private final cf:Lcom/android/dx/cf/direct/DirectClassFile;

.field private final definer:Lcom/android/dx/rop/cst/CstType;

.field private endOffset:I

.field private observer:Lcom/android/dx/cf/iface/ParseObserver;

.field private final offset:I


# direct methods
.method public constructor <init>(Lcom/android/dx/cf/direct/DirectClassFile;Lcom/android/dx/rop/cst/CstType;ILcom/android/dx/cf/direct/AttributeFactory;)V
    .locals 2
    .param p1, "cf"    # Lcom/android/dx/cf/direct/DirectClassFile;
    .param p2, "definer"    # Lcom/android/dx/rop/cst/CstType;
    .param p3, "offset"    # I
    .param p4, "attributeFactory"    # Lcom/android/dx/cf/direct/AttributeFactory;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-eqz p1, :cond_2

    .line 68
    if-ltz p3, :cond_1

    .line 72
    if-eqz p4, :cond_0

    .line 76
    iput-object p1, p0, Lcom/android/dx/cf/direct/MemberListParser;->cf:Lcom/android/dx/cf/direct/DirectClassFile;

    .line 77
    iput-object p2, p0, Lcom/android/dx/cf/direct/MemberListParser;->definer:Lcom/android/dx/rop/cst/CstType;

    .line 78
    iput p3, p0, Lcom/android/dx/cf/direct/MemberListParser;->offset:I

    .line 79
    iput-object p4, p0, Lcom/android/dx/cf/direct/MemberListParser;->attributeFactory:Lcom/android/dx/cf/direct/AttributeFactory;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dx/cf/direct/MemberListParser;->endOffset:I

    .line 81
    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "attributeFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cf == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parse()V
    .locals 26

    .line 173
    move-object/from16 v1, p0

    const-string v2, "]"

    const-string v3, "...while parsing "

    const-string v4, "s["

    invoke-virtual/range {p0 .. p0}, Lcom/android/dx/cf/direct/MemberListParser;->getAttributeContext()I

    move-result v5

    .line 174
    .local v5, "attributeContext":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/dx/cf/direct/MemberListParser;->getCount()I

    move-result v6

    .line 175
    .local v6, "count":I
    iget v0, v1, Lcom/android/dx/cf/direct/MemberListParser;->offset:I

    const/4 v7, 0x2

    add-int/2addr v0, v7

    .line 177
    .local v0, "at":I
    iget-object v8, v1, Lcom/android/dx/cf/direct/MemberListParser;->cf:Lcom/android/dx/cf/direct/DirectClassFile;

    invoke-virtual {v8}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object v8

    .line 178
    .local v8, "bytes":Lcom/android/dx/util/ByteArray;
    iget-object v9, v1, Lcom/android/dx/cf/direct/MemberListParser;->cf:Lcom/android/dx/cf/direct/DirectClassFile;

    invoke-virtual {v9}, Lcom/android/dx/cf/direct/DirectClassFile;->getConstantPool()Lcom/android/dx/rop/cst/ConstantPool;

    move-result-object v15

    .line 180
    .local v15, "pool":Lcom/android/dx/rop/cst/ConstantPool;
    iget-object v9, v1, Lcom/android/dx/cf/direct/MemberListParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    if-eqz v9, :cond_0

    .line 181
    iget v10, v1, Lcom/android/dx/cf/direct/MemberListParser;->offset:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/dx/cf/direct/MemberListParser;->humanName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "s_count: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 181
    invoke-interface {v9, v8, v10, v7, v11}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 185
    :cond_0
    const/4 v9, 0x0

    move v13, v9

    move v9, v0

    .end local v0    # "at":I
    .local v9, "at":I
    .local v13, "i":I
    :goto_0
    if-ge v13, v6, :cond_3

    .line 187
    :try_start_0
    invoke-virtual {v8, v9}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v0

    .line 188
    .local v0, "accessFlags":I
    add-int/lit8 v10, v9, 0x2

    invoke-virtual {v8, v10}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v10

    move v12, v10

    .line 189
    .local v12, "nameIdx":I
    add-int/lit8 v10, v9, 0x4

    invoke-virtual {v8, v10}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v10

    move v11, v10

    .line 190
    .local v11, "descIdx":I
    invoke-interface {v15, v12}, Lcom/android/dx/rop/cst/ConstantPool;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v10

    check-cast v10, Lcom/android/dx/rop/cst/CstString;

    .line 191
    .local v10, "name":Lcom/android/dx/rop/cst/CstString;
    invoke-interface {v15, v11}, Lcom/android/dx/rop/cst/ConstantPool;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v14

    check-cast v14, Lcom/android/dx/rop/cst/CstString;

    .line 193
    .local v14, "desc":Lcom/android/dx/rop/cst/CstString;
    iget-object v7, v1, Lcom/android/dx/cf/direct/MemberListParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;
    :try_end_0
    .catch Lcom/android/dx/cf/iface/ParseException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_a

    move/from16 v17, v6

    .end local v6    # "count":I
    .local v17, "count":I
    if-eqz v7, :cond_1

    .line 194
    :try_start_1
    invoke-virtual {v10}, Lcom/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v6

    .line 195
    move/from16 v19, v11

    .end local v11    # "descIdx":I
    .local v19, "descIdx":I
    invoke-virtual {v14}, Lcom/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v11

    .line 194
    invoke-interface {v7, v8, v9, v6, v11}, Lcom/android/dx/cf/iface/ParseObserver;->startParsingMember(Lcom/android/dx/util/ByteArray;ILjava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v6, v1, Lcom/android/dx/cf/direct/MemberListParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\n"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/dx/cf/direct/MemberListParser;->humanName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "]:\n"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    invoke-interface {v6, v8, v9, v11, v7}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 198
    iget-object v6, v1, Lcom/android/dx/cf/direct/MemberListParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    .line 199
    iget-object v6, v1, Lcom/android/dx/cf/direct/MemberListParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "access_flags: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 201
    invoke-virtual {v1, v0}, Lcom/android/dx/cf/direct/MemberListParser;->humanAccessFlags(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 199
    const/4 v11, 0x2

    invoke-interface {v6, v8, v9, v11, v7}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 202
    iget-object v6, v1, Lcom/android/dx/cf/direct/MemberListParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    add-int/lit8 v7, v9, 0x2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v12

    .end local v12    # "nameIdx":I
    .local v20, "nameIdx":I
    const-string v12, "name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 203
    invoke-virtual {v10}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 202
    const/4 v12, 0x2

    invoke-interface {v6, v8, v7, v12, v11}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 204
    iget-object v6, v1, Lcom/android/dx/cf/direct/MemberListParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    add-int/lit8 v7, v9, 0x4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "descriptor: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 205
    invoke-virtual {v14}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 204
    const/4 v12, 0x2

    invoke-interface {v6, v8, v7, v12, v11}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V
    :try_end_1
    .catch Lcom/android/dx/cf/iface/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 230
    .end local v0    # "accessFlags":I
    .end local v10    # "name":Lcom/android/dx/rop/cst/CstString;
    .end local v14    # "desc":Lcom/android/dx/rop/cst/CstString;
    .end local v19    # "descIdx":I
    .end local v20    # "nameIdx":I
    :catch_0
    move-exception v0

    move/from16 v23, v5

    move v6, v13

    goto/16 :goto_3

    .line 226
    :catch_1
    move-exception v0

    move/from16 v23, v5

    move v6, v13

    goto/16 :goto_4

    .line 193
    .restart local v0    # "accessFlags":I
    .restart local v10    # "name":Lcom/android/dx/rop/cst/CstString;
    .restart local v11    # "descIdx":I
    .restart local v12    # "nameIdx":I
    .restart local v14    # "desc":Lcom/android/dx/rop/cst/CstString;
    :cond_1
    move/from16 v19, v11

    move/from16 v20, v12

    const/4 v12, 0x2

    .line 208
    .end local v11    # "descIdx":I
    .end local v12    # "nameIdx":I
    .restart local v19    # "descIdx":I
    .restart local v20    # "nameIdx":I
    :goto_1
    add-int/lit8 v9, v9, 0x6

    .line 209
    :try_start_2
    new-instance v6, Lcom/android/dx/cf/direct/AttributeListParser;

    iget-object v7, v1, Lcom/android/dx/cf/direct/MemberListParser;->cf:Lcom/android/dx/cf/direct/DirectClassFile;

    iget-object v11, v1, Lcom/android/dx/cf/direct/MemberListParser;->attributeFactory:Lcom/android/dx/cf/direct/AttributeFactory;

    invoke-direct {v6, v7, v5, v9, v11}, Lcom/android/dx/cf/direct/AttributeListParser;-><init>(Lcom/android/dx/cf/direct/DirectClassFile;IILcom/android/dx/cf/direct/AttributeFactory;)V

    .line 212
    .local v6, "parser":Lcom/android/dx/cf/direct/AttributeListParser;
    iget-object v7, v1, Lcom/android/dx/cf/direct/MemberListParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    invoke-virtual {v6, v7}, Lcom/android/dx/cf/direct/AttributeListParser;->setObserver(Lcom/android/dx/cf/iface/ParseObserver;)V

    .line 213
    invoke-virtual {v6}, Lcom/android/dx/cf/direct/AttributeListParser;->getEndOffset()I

    move-result v7
    :try_end_2
    .catch Lcom/android/dx/cf/iface/ParseException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_8

    .line 214
    .end local v9    # "at":I
    .local v7, "at":I
    :try_start_3
    invoke-virtual {v6}, Lcom/android/dx/cf/direct/AttributeListParser;->getList()Lcom/android/dx/cf/iface/StdAttributeList;

    move-result-object v9

    move-object v11, v9

    .line 215
    .local v11, "attributes":Lcom/android/dx/cf/iface/StdAttributeList;
    invoke-virtual {v11}, Lcom/android/dx/cf/iface/StdAttributeList;->setImmutable()V

    .line 216
    new-instance v9, Lcom/android/dx/rop/cst/CstNat;

    invoke-direct {v9, v10, v14}, Lcom/android/dx/rop/cst/CstNat;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/CstString;)V

    .line 217
    .local v9, "nat":Lcom/android/dx/rop/cst/CstNat;
    invoke-virtual {v1, v13, v0, v9, v11}, Lcom/android/dx/cf/direct/MemberListParser;->set(IILcom/android/dx/rop/cst/CstNat;Lcom/android/dx/cf/iface/AttributeList;)Lcom/android/dx/cf/iface/Member;

    move-result-object v16

    move-object/from16 v21, v14

    .end local v14    # "desc":Lcom/android/dx/rop/cst/CstString;
    .local v21, "desc":Lcom/android/dx/rop/cst/CstString;
    move-object/from16 v14, v16

    .line 219
    .local v14, "member":Lcom/android/dx/cf/iface/Member;
    iget-object v12, v1, Lcom/android/dx/cf/direct/MemberListParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    if-eqz v12, :cond_2

    .line 220
    move/from16 v22, v0

    .end local v0    # "accessFlags":I
    .local v22, "accessFlags":I
    const/4 v0, -0x1

    invoke-interface {v12, v0}, Lcom/android/dx/cf/iface/ParseObserver;->changeIndent(I)V

    .line 221
    iget-object v0, v1, Lcom/android/dx/cf/direct/MemberListParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Lcom/android/dx/cf/iface/ParseException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6

    move/from16 v23, v5

    .end local v5    # "attributeContext":I
    .local v23, "attributeContext":I
    :try_start_4
    const-string v5, "end "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/dx/cf/direct/MemberListParser;->humanName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "]\n"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    invoke-interface {v0, v8, v7, v12, v5}, Lcom/android/dx/cf/iface/ParseObserver;->parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V

    .line 223
    iget-object v0, v1, Lcom/android/dx/cf/direct/MemberListParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    invoke-virtual {v10}, Lcom/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v12

    .line 224
    invoke-virtual/range {v21 .. v21}, Lcom/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catch Lcom/android/dx/cf/iface/ParseException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    .line 223
    move-object/from16 v18, v9

    .end local v9    # "nat":Lcom/android/dx/rop/cst/CstNat;
    .local v18, "nat":Lcom/android/dx/rop/cst/CstNat;
    move-object v9, v0

    move-object v0, v10

    .end local v10    # "name":Lcom/android/dx/rop/cst/CstString;
    .local v0, "name":Lcom/android/dx/rop/cst/CstString;
    move-object v10, v8

    move-object/from16 v24, v11

    .end local v11    # "attributes":Lcom/android/dx/cf/iface/StdAttributeList;
    .local v24, "attributes":Lcom/android/dx/cf/iface/StdAttributeList;
    move v11, v7

    move/from16 v16, v20

    const/16 v20, 0x2

    .end local v20    # "nameIdx":I
    .local v16, "nameIdx":I
    move-object/from16 v25, v6

    move v6, v13

    .end local v13    # "i":I
    .local v6, "i":I
    .local v25, "parser":Lcom/android/dx/cf/direct/AttributeListParser;
    move-object v13, v5

    :try_start_5
    invoke-interface/range {v9 .. v14}, Lcom/android/dx/cf/iface/ParseObserver;->endParsingMember(Lcom/android/dx/util/ByteArray;ILjava/lang/String;Ljava/lang/String;Lcom/android/dx/cf/iface/Member;)V
    :try_end_5
    .catch Lcom/android/dx/cf/iface/ParseException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 230
    .end local v0    # "name":Lcom/android/dx/rop/cst/CstString;
    .end local v14    # "member":Lcom/android/dx/cf/iface/Member;
    .end local v16    # "nameIdx":I
    .end local v18    # "nat":Lcom/android/dx/rop/cst/CstNat;
    .end local v19    # "descIdx":I
    .end local v21    # "desc":Lcom/android/dx/rop/cst/CstString;
    .end local v22    # "accessFlags":I
    .end local v24    # "attributes":Lcom/android/dx/cf/iface/StdAttributeList;
    .end local v25    # "parser":Lcom/android/dx/cf/direct/AttributeListParser;
    :catch_2
    move-exception v0

    move v9, v7

    goto/16 :goto_3

    .line 226
    :catch_3
    move-exception v0

    move v9, v7

    goto/16 :goto_4

    .line 230
    .end local v6    # "i":I
    .restart local v13    # "i":I
    :catch_4
    move-exception v0

    move v6, v13

    move v9, v7

    .end local v13    # "i":I
    .restart local v6    # "i":I
    goto :goto_3

    .line 226
    .end local v6    # "i":I
    .restart local v13    # "i":I
    :catch_5
    move-exception v0

    move v6, v13

    move v9, v7

    .end local v13    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_4

    .line 219
    .end local v23    # "attributeContext":I
    .local v0, "accessFlags":I
    .restart local v5    # "attributeContext":I
    .local v6, "parser":Lcom/android/dx/cf/direct/AttributeListParser;
    .restart local v9    # "nat":Lcom/android/dx/rop/cst/CstNat;
    .restart local v10    # "name":Lcom/android/dx/rop/cst/CstString;
    .restart local v11    # "attributes":Lcom/android/dx/cf/iface/StdAttributeList;
    .restart local v13    # "i":I
    .restart local v14    # "member":Lcom/android/dx/cf/iface/Member;
    .restart local v19    # "descIdx":I
    .restart local v20    # "nameIdx":I
    .restart local v21    # "desc":Lcom/android/dx/rop/cst/CstString;
    :cond_2
    move/from16 v22, v0

    move/from16 v23, v5

    move-object/from16 v25, v6

    move-object/from16 v18, v9

    move-object v0, v10

    move-object/from16 v24, v11

    move v6, v13

    move/from16 v16, v20

    const/16 v20, 0x2

    .line 235
    .end local v0    # "accessFlags":I
    .end local v5    # "attributeContext":I
    .end local v9    # "nat":Lcom/android/dx/rop/cst/CstNat;
    .end local v10    # "name":Lcom/android/dx/rop/cst/CstString;
    .end local v11    # "attributes":Lcom/android/dx/cf/iface/StdAttributeList;
    .end local v13    # "i":I
    .end local v14    # "member":Lcom/android/dx/cf/iface/Member;
    .end local v19    # "descIdx":I
    .end local v20    # "nameIdx":I
    .end local v21    # "desc":Lcom/android/dx/rop/cst/CstString;
    .local v6, "i":I
    .restart local v23    # "attributeContext":I
    :goto_2
    nop

    .line 185
    add-int/lit8 v13, v6, 0x1

    move v9, v7

    move/from16 v6, v17

    move/from16 v7, v20

    move/from16 v5, v23

    .end local v6    # "i":I
    .restart local v13    # "i":I
    goto/16 :goto_0

    .line 230
    .end local v23    # "attributeContext":I
    .restart local v5    # "attributeContext":I
    :catch_6
    move-exception v0

    move/from16 v23, v5

    move v6, v13

    move v9, v7

    .end local v5    # "attributeContext":I
    .end local v13    # "i":I
    .restart local v6    # "i":I
    .restart local v23    # "attributeContext":I
    goto :goto_3

    .line 226
    .end local v6    # "i":I
    .end local v23    # "attributeContext":I
    .restart local v5    # "attributeContext":I
    .restart local v13    # "i":I
    :catch_7
    move-exception v0

    move/from16 v23, v5

    move v6, v13

    move v9, v7

    .end local v5    # "attributeContext":I
    .end local v13    # "i":I
    .restart local v6    # "i":I
    .restart local v23    # "attributeContext":I
    goto :goto_4

    .line 230
    .end local v6    # "i":I
    .end local v7    # "at":I
    .end local v23    # "attributeContext":I
    .restart local v5    # "attributeContext":I
    .local v9, "at":I
    .restart local v13    # "i":I
    :catch_8
    move-exception v0

    move/from16 v23, v5

    move v6, v13

    .end local v5    # "attributeContext":I
    .end local v13    # "i":I
    .restart local v6    # "i":I
    .restart local v23    # "attributeContext":I
    goto :goto_3

    .line 226
    .end local v6    # "i":I
    .end local v23    # "attributeContext":I
    .restart local v5    # "attributeContext":I
    .restart local v13    # "i":I
    :catch_9
    move-exception v0

    move/from16 v23, v5

    move v6, v13

    .end local v5    # "attributeContext":I
    .end local v13    # "i":I
    .restart local v6    # "i":I
    .restart local v23    # "attributeContext":I
    goto :goto_4

    .line 230
    .end local v17    # "count":I
    .end local v23    # "attributeContext":I
    .restart local v5    # "attributeContext":I
    .local v6, "count":I
    .restart local v13    # "i":I
    :catch_a
    move-exception v0

    move/from16 v23, v5

    move/from16 v17, v6

    move v6, v13

    .line 231
    .end local v5    # "attributeContext":I
    .end local v13    # "i":I
    .local v0, "ex":Ljava/lang/RuntimeException;
    .local v6, "i":I
    .restart local v17    # "count":I
    .restart local v23    # "attributeContext":I
    :goto_3
    new-instance v5, Lcom/android/dx/cf/iface/ParseException;

    invoke-direct {v5, v0}, Lcom/android/dx/cf/iface/ParseException;-><init>(Ljava/lang/Throwable;)V

    .line 232
    .local v5, "pe":Lcom/android/dx/cf/iface/ParseException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/dx/cf/direct/MemberListParser;->humanName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/android/dx/cf/iface/ParseException;->addContext(Ljava/lang/String;)V

    .line 234
    throw v5

    .line 226
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v17    # "count":I
    .end local v23    # "attributeContext":I
    .local v5, "attributeContext":I
    .local v6, "count":I
    .restart local v13    # "i":I
    :catch_b
    move-exception v0

    move/from16 v23, v5

    move/from16 v17, v6

    move v6, v13

    .line 227
    .end local v5    # "attributeContext":I
    .end local v13    # "i":I
    .local v0, "ex":Lcom/android/dx/cf/iface/ParseException;
    .local v6, "i":I
    .restart local v17    # "count":I
    .restart local v23    # "attributeContext":I
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/dx/cf/direct/MemberListParser;->humanName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/dx/cf/iface/ParseException;->addContext(Ljava/lang/String;)V

    .line 229
    throw v0

    .line 238
    .end local v0    # "ex":Lcom/android/dx/cf/iface/ParseException;
    .end local v17    # "count":I
    .end local v23    # "attributeContext":I
    .restart local v5    # "attributeContext":I
    .local v6, "count":I
    :cond_3
    iput v9, v1, Lcom/android/dx/cf/direct/MemberListParser;->endOffset:I

    .line 239
    return-void
.end method


# virtual methods
.method protected abstract getAttributeContext()I
.end method

.method protected final getCount()I
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/dx/cf/direct/MemberListParser;->cf:Lcom/android/dx/cf/direct/DirectClassFile;

    invoke-virtual {v0}, Lcom/android/dx/cf/direct/DirectClassFile;->getBytes()Lcom/android/dx/util/ByteArray;

    move-result-object v0

    .line 119
    .local v0, "bytes":Lcom/android/dx/util/ByteArray;
    iget v1, p0, Lcom/android/dx/cf/direct/MemberListParser;->offset:I

    invoke-virtual {v0, v1}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v1

    return v1
.end method

.method protected final getDefiner()Lcom/android/dx/rop/cst/CstType;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/dx/cf/direct/MemberListParser;->definer:Lcom/android/dx/rop/cst/CstType;

    return-object v0
.end method

.method public getEndOffset()I
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/android/dx/cf/direct/MemberListParser;->parseIfNecessary()V

    .line 91
    iget v0, p0, Lcom/android/dx/cf/direct/MemberListParser;->endOffset:I

    return v0
.end method

.method protected abstract humanAccessFlags(I)Ljava/lang/String;
.end method

.method protected abstract humanName()Ljava/lang/String;
.end method

.method protected final parseIfNecessary()V
    .locals 1

    .line 107
    iget v0, p0, Lcom/android/dx/cf/direct/MemberListParser;->endOffset:I

    if-gez v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/android/dx/cf/direct/MemberListParser;->parse()V

    .line 110
    :cond_0
    return-void
.end method

.method protected abstract set(IILcom/android/dx/rop/cst/CstNat;Lcom/android/dx/cf/iface/AttributeList;)Lcom/android/dx/cf/iface/Member;
.end method

.method public final setObserver(Lcom/android/dx/cf/iface/ParseObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/android/dx/cf/iface/ParseObserver;

    .line 100
    iput-object p1, p0, Lcom/android/dx/cf/direct/MemberListParser;->observer:Lcom/android/dx/cf/iface/ParseObserver;

    .line 101
    return-void
.end method
