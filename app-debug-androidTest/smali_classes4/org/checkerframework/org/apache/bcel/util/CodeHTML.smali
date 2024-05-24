.class final Lorg/checkerframework/org/apache/bcel/util/CodeHTML;
.super Ljava/lang/Object;
.source "CodeHTML.java"


# static fields
.field private static wide:Z


# instance fields
.field private final class_name:Ljava/lang/String;

.field private final constant_html:Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;

.field private final constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

.field private final file:Ljava/io/PrintWriter;

.field private goto_set:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->wide:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lorg/checkerframework/org/apache/bcel/classfile/Method;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;)V
    .locals 4
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "class_name"    # Ljava/lang/String;
    .param p3, "methods"    # [Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .param p4, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .param p5, "constant_html"    # Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->class_name:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 68
    iput-object p5, p0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->constant_html:Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;

    .line 69
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_code.html"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->file:Ljava/io/PrintWriter;

    .line 70
    const-string v1, "<HTML><BODY BGCOLOR=\"#C0C0C0\">"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 72
    aget-object v1, p3, v0

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->writeMethod(Lorg/checkerframework/org/apache/bcel/classfile/Method;I)V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->file:Ljava/io/PrintWriter;

    const-string v1, "</BODY></HTML>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 76
    return-void
.end method

.method private codeToHTML(Lorg/checkerframework/org/apache/bcel/util/ByteSequence;I)Ljava/lang/String;
    .locals 25
    .param p1, "bytes"    # Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    .param p2, "method_number"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedByte()I

    move-result v2

    int-to-short v2, v2

    .line 90
    .local v2, "opcode":S
    const/4 v3, 0x0

    .line 98
    .local v3, "default_offset":I
    const/4 v4, 0x0

    .line 100
    .local v4, "no_pad_bytes":I
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x100

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 101
    .local v5, "buf":Ljava/lang/StringBuilder;
    const-string v6, "<TT>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/Const;->getOpcodeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</TT></TD><TD>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const/16 v6, 0xaa

    if-eq v2, v6, :cond_0

    const/16 v6, 0xab

    if-ne v2, v6, :cond_3

    .line 106
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->getIndex()I

    move-result v6

    rem-int/lit8 v6, v6, 0x4

    .line 107
    .local v6, "remainder":I
    if-nez v6, :cond_1

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    rsub-int/lit8 v8, v6, 0x4

    :goto_0
    move v4, v8

    .line 108
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v4, :cond_2

    .line 109
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readByte()B

    .line 108
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 112
    .end local v8    # "i":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v3

    .line 114
    .end local v6    # "remainder":I
    :cond_3
    const-string v6, "</A></TD>"

    const-string v8, "</A></TD></TR>\n</TABLE>\n"

    const-string v9, "</TH>"

    const-string v10, "<TH>"

    const-string v11, "<TH>default</TH></TR>\n<TR>"

    const-string v12, "%"

    const-string v13, "<TABLE BORDER=1><TR>"

    const-string v14, "<A HREF=\"#code"

    const-string v15, "</a>"

    const-string v7, "\" TARGET=\"ConstantPool\">"

    move-object/from16 v17, v15

    const-string v15, "</A>"

    move-object/from16 v18, v7

    const-string v7, "_cp.html#cp"

    move-object/from16 v19, v12

    const-string v12, "<A HREF=\""

    move-object/from16 v20, v8

    const-string v8, "<TD><A HREF=\"#code"

    move-object/from16 v21, v6

    const-string v6, "\">"

    move-object/from16 v23, v8

    const-string v8, "@"

    move-object/from16 v24, v11

    const/4 v11, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 363
    move/from16 v21, v2

    move/from16 v20, v4

    .end local v2    # "opcode":S
    .end local v4    # "no_pad_bytes":I
    .local v20, "no_pad_bytes":I
    .local v21, "opcode":S
    invoke-static/range {v21 .. v21}, Lorg/checkerframework/org/apache/bcel/Const;->getNoOfOperands(I)S

    move-result v2

    if-lez v2, :cond_10

    .line 364
    const/4 v2, 0x0

    .local v2, "i":I
    goto/16 :goto_a

    .line 190
    .end local v20    # "no_pad_bytes":I
    .end local v21    # "opcode":S
    .local v2, "opcode":S
    .restart local v4    # "no_pad_bytes":I
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->getIndex()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v9

    add-int/2addr v7, v9

    sub-int/2addr v7, v11

    .line 191
    .local v7, "windex":I
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 192
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    move/from16 v20, v4

    move v4, v2

    goto/16 :goto_c

    .line 344
    .end local v7    # "windex":I
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readShort()S

    move-result v6

    .line 345
    .local v6, "index":I
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readByte()B

    move-result v7

    .line 346
    .local v7, "dimensions":I
    iget-object v8, v0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->constant_html:Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;

    invoke-virtual {v8, v6}, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->referenceConstant(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 347
    const-string v9, "-dimensional"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    move/from16 v20, v4

    move v4, v2

    goto/16 :goto_c

    .line 221
    .end local v6    # "index":I
    .end local v7    # "dimensions":I
    :sswitch_2
    sput-boolean v11, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->wide:Z

    .line 222
    const-string v6, "(wide)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    move/from16 v20, v4

    move v4, v2

    goto/16 :goto_c

    .line 338
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readShort()S

    move-result v6

    .line 339
    .restart local v6    # "index":I
    iget-object v7, v0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->constant_html:Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;

    invoke-virtual {v7, v6}, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->referenceConstant(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    move/from16 v20, v4

    move v4, v2

    goto/16 :goto_c

    .line 227
    .end local v6    # "index":I
    :sswitch_4
    const-string v6, "<FONT COLOR=\"#00FF00\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readByte()B

    move-result v7

    invoke-static {v7}, Lorg/checkerframework/org/apache/bcel/Const;->getTypeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</FONT>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    move/from16 v20, v4

    move v4, v2

    goto/16 :goto_c

    .line 258
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readShort()S

    move-result v6

    .line 259
    .restart local v6    # "index":I
    iget-object v7, v0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->constant_html:Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;

    invoke-virtual {v7, v6}, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->referenceConstant(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    move/from16 v20, v4

    move v4, v2

    goto/16 :goto_c

    .line 268
    .end local v6    # "index":I
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readShort()S

    move-result v6

    .line 270
    .local v6, "m_index":I
    const/16 v8, 0xb9

    if-ne v2, v8, :cond_4

    .line 271
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedByte()I

    .line 272
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedByte()I

    .line 275
    iget-object v8, v0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 276
    const/16 v9, 0xb

    invoke-virtual {v8, v6, v9}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;

    .line 277
    .local v8, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;->getClassIndex()I

    move-result v9

    .line 278
    .local v9, "class_index":I
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInterfaceMethodref;->getNameAndTypeIndex()I

    move-result v10

    .line 279
    .local v10, "index":I
    invoke-static {v9}, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->referenceClass(I)Ljava/lang/String;

    move-result-object v8

    .line 280
    .local v8, "name":Ljava/lang/String;
    goto :goto_2

    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "class_index":I
    .end local v10    # "index":I
    :cond_4
    const/16 v8, 0xba

    if-ne v2, v8, :cond_5

    .line 281
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedByte()I

    .line 282
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedByte()I

    .line 283
    iget-object v8, v0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 284
    const/16 v9, 0x12

    invoke-virtual {v8, v6, v9}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInvokeDynamic;

    .line 285
    .local v8, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInvokeDynamic;
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInvokeDynamic;->getNameAndTypeIndex()I

    move-result v10

    .line 286
    .restart local v10    # "index":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "#"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInvokeDynamic;->getBootstrapMethodAttrIndex()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 287
    .local v8, "name":Ljava/lang/String;
    goto :goto_2

    .line 291
    .end local v8    # "name":Ljava/lang/String;
    .end local v10    # "index":I
    :cond_5
    iget-object v8, v0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    const/16 v9, 0xa

    invoke-virtual {v8, v6, v9}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;

    .line 293
    .local v8, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;->getClassIndex()I

    move-result v9

    .line 294
    .restart local v9    # "class_index":I
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodref;->getNameAndTypeIndex()I

    move-result v10

    .line 295
    .restart local v10    # "index":I
    invoke-static {v9}, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->referenceClass(I)Ljava/lang/String;

    move-result-object v12

    move-object v8, v12

    .line 297
    .end local v9    # "class_index":I
    .local v8, "name":Ljava/lang/String;
    :goto_2
    iget-object v9, v0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    const/16 v12, 0xc

    invoke-virtual {v9, v10, v12}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(Lorg/checkerframework/org/apache/bcel/classfile/Constant;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->toHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 300
    .local v9, "str":Ljava/lang/String;
    iget-object v13, v0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v13, v10, v12}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v12

    check-cast v12, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    .line 302
    .local v12, "c2":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    iget-object v13, v0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    invoke-virtual {v12}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getSignatureIndex()I

    move-result v14

    invoke-virtual {v13, v14, v11}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v13

    .line 303
    .local v13, "signature":Ljava/lang/String;
    const/4 v14, 0x0

    invoke-static {v13, v14}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->methodSignatureArgumentTypes(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v11

    .line 304
    .local v11, "args":[Ljava/lang/String;
    invoke-static {v13, v14}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->methodSignatureReturnType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v14

    .line 305
    .local v14, "type":Ljava/lang/String;
    move/from16 v16, v10

    .end local v10    # "index":I
    .local v16, "index":I
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v17, v8

    .end local v8    # "name":Ljava/lang/String;
    .local v17, "name":Ljava/lang/String;
    const-string v8, ".<A HREF=\""

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, v0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 306
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" TARGET=ConstantPool>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 307
    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    array-length v8, v11

    if-ge v7, v8, :cond_7

    .line 310
    aget-object v8, v11, v7

    invoke-static {v8}, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->referenceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    array-length v8, v11

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    if-ge v7, v8, :cond_6

    .line 312
    const-string v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 316
    .end local v7    # "i":I
    :cond_7
    const-string v7, "):"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v14}, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->referenceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    move/from16 v20, v4

    move v4, v2

    goto/16 :goto_c

    .line 236
    .end local v6    # "m_index":I
    .end local v9    # "str":Ljava/lang/String;
    .end local v11    # "args":[Ljava/lang/String;
    .end local v12    # "c2":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    .end local v13    # "signature":Ljava/lang/String;
    .end local v14    # "type":Ljava/lang/String;
    .end local v16    # "index":I
    .end local v17    # "name":Ljava/lang/String;
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readShort()S

    move-result v6

    .line 237
    .local v6, "index":I
    iget-object v7, v0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    const/16 v8, 0x9

    invoke-virtual {v7, v6, v8}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;

    .line 239
    .local v7, "c1":Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;->getClassIndex()I

    move-result v8

    .line 240
    .local v8, "class_index":I
    iget-object v9, v0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    const/4 v10, 0x7

    invoke-virtual {v9, v8, v10}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object v9

    .line 241
    .local v9, "name":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-static {v9, v10}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 242
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;->getNameAndTypeIndex()I

    move-result v6

    .line 243
    iget-object v10, v0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    const/16 v11, 0xc

    invoke-virtual {v10, v6, v11}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v10

    .line 244
    .local v10, "field_name":Ljava/lang/String;
    iget-object v11, v0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 245
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_methods.html#field"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 246
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\" TARGET=Methods>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 247
    const-string v12, "</A>\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v20, v4

    move v4, v2

    goto/16 :goto_c

    .line 249
    :cond_8
    iget-object v11, v0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->constant_html:Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;

    invoke-virtual {v11, v8}, Lorg/checkerframework/org/apache/bcel/util/ConstantHTML;->referenceConstant(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    move/from16 v20, v4

    move v4, v2

    goto/16 :goto_c

    .line 140
    .end local v6    # "index":I
    .end local v7    # "c1":Lorg/checkerframework/org/apache/bcel/classfile/ConstantFieldref;
    .end local v8    # "class_index":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "field_name":Ljava/lang/String;
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v7

    .line 141
    .local v7, "npairs":I
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->getIndex()I

    move-result v11

    add-int/lit8 v11, v11, -0x8

    sub-int/2addr v11, v4

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    .line 142
    .local v11, "offset":I
    new-array v12, v7, [I

    .line 143
    .local v12, "jump_table":[I
    add-int/2addr v3, v11

    .line 144
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    if-ge v13, v7, :cond_9

    .line 147
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v14

    .line 148
    .local v14, "match":I
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v15

    add-int/2addr v15, v11

    aput v15, v12, v13

    .line 149
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .end local v14    # "match":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 151
    .end local v13    # "i":I
    :cond_9
    move-object/from16 v14, v24

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_5
    if-ge v9, v7, :cond_a

    .line 154
    move-object/from16 v15, v23

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v13, v12, v9

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 155
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v13, v12, v9

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v13, v21

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_a
    move-object/from16 v15, v23

    .line 157
    .end local v9    # "i":I
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 158
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v8, v20

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    move/from16 v20, v4

    move v4, v2

    goto/16 :goto_c

    .line 116
    .end local v7    # "npairs":I
    .end local v11    # "offset":I
    .end local v12    # "jump_table":[I
    :sswitch_9
    move-object/from16 v11, v20

    move-object/from16 v7, v21

    move-object/from16 v15, v23

    move-object/from16 v14, v24

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v12

    .line 117
    .local v12, "low":I
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v17

    .line 118
    .local v17, "high":I
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->getIndex()I

    move-result v18

    const/16 v19, 0xc

    add-int/lit8 v18, v18, -0xc

    sub-int v18, v18, v4

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    .line 119
    .local v18, "offset":I
    add-int v3, v3, v18

    .line 120
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    sub-int v13, v17, v12

    add-int/lit8 v13, v13, 0x1

    new-array v13, v13, [I

    .line 123
    .local v13, "jump_table":[I
    const/16 v19, 0x0

    move/from16 v20, v4

    move/from16 v4, v19

    .local v4, "i":I
    .restart local v20    # "no_pad_bytes":I
    :goto_6
    move/from16 v21, v2

    .end local v2    # "opcode":S
    .restart local v21    # "opcode":S
    array-length v2, v13

    if-ge v4, v2, :cond_b

    .line 124
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v2

    add-int v2, v18, v2

    aput v2, v13, v4

    .line 125
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v22, v10

    add-int v10, v12, v4

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v21

    move-object/from16 v10, v22

    goto :goto_6

    .line 127
    .end local v4    # "i":I
    :cond_b
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    array-length v2, v13

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v2, :cond_c

    aget v9, v13, v4

    .line 130
    .local v9, "element":I
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 131
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .end local v9    # "element":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 133
    :cond_c
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 134
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    move/from16 v4, v21

    goto/16 :goto_c

    .line 182
    .end local v12    # "low":I
    .end local v13    # "jump_table":[I
    .end local v17    # "high":I
    .end local v18    # "offset":I
    .end local v20    # "no_pad_bytes":I
    .end local v21    # "opcode":S
    .restart local v2    # "opcode":S
    .local v4, "no_pad_bytes":I
    :sswitch_a
    move/from16 v21, v2

    move/from16 v20, v4

    .end local v2    # "opcode":S
    .end local v4    # "no_pad_bytes":I
    .restart local v20    # "no_pad_bytes":I
    .restart local v21    # "opcode":S
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->getIndex()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readShort()S

    move-result v4

    add-int/2addr v2, v4

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    .line 183
    .local v2, "index":I
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 184
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    move/from16 v4, v21

    goto/16 :goto_c

    .line 352
    .end local v20    # "no_pad_bytes":I
    .end local v21    # "opcode":S
    .local v2, "opcode":S
    .restart local v4    # "no_pad_bytes":I
    :sswitch_b
    move/from16 v21, v2

    move/from16 v20, v4

    .end local v2    # "opcode":S
    .end local v4    # "no_pad_bytes":I
    .restart local v20    # "no_pad_bytes":I
    .restart local v21    # "opcode":S
    sget-boolean v2, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->wide:Z

    if-eqz v2, :cond_d

    .line 353
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readShort()S

    move-result v2

    .line 354
    .local v2, "vindex":I
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readShort()S

    move-result v4

    .line 355
    .local v4, "constant":I
    const/4 v6, 0x0

    sput-boolean v6, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->wide:Z

    goto :goto_8

    .line 357
    .end local v2    # "vindex":I
    .end local v4    # "constant":I
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedByte()I

    move-result v2

    .line 358
    .restart local v2    # "vindex":I
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readByte()B

    move-result v4

    .line 360
    .restart local v4    # "constant":I
    :goto_8
    move-object/from16 v6, v19

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 361
    move/from16 v4, v21

    goto/16 :goto_c

    .line 207
    .end local v20    # "no_pad_bytes":I
    .end local v21    # "opcode":S
    .local v2, "opcode":S
    .local v4, "no_pad_bytes":I
    :sswitch_c
    move/from16 v21, v2

    move/from16 v20, v4

    move-object/from16 v6, v19

    .end local v2    # "opcode":S
    .end local v4    # "no_pad_bytes":I
    .restart local v20    # "no_pad_bytes":I
    .restart local v21    # "opcode":S
    sget-boolean v2, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->wide:Z

    if-eqz v2, :cond_e

    .line 208
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readShort()S

    move-result v2

    .line 209
    .local v2, "vindex":I
    const/4 v4, 0x0

    sput-boolean v4, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->wide:Z

    goto :goto_9

    .line 211
    .end local v2    # "vindex":I
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedByte()I

    move-result v2

    .line 213
    .restart local v2    # "vindex":I
    :goto_9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    move/from16 v4, v21

    goto/16 :goto_c

    .line 322
    .end local v20    # "no_pad_bytes":I
    .end local v21    # "opcode":S
    .local v2, "opcode":S
    .restart local v4    # "no_pad_bytes":I
    :sswitch_d
    move/from16 v21, v2

    move/from16 v20, v4

    .end local v2    # "opcode":S
    .end local v4    # "no_pad_bytes":I
    .restart local v20    # "no_pad_bytes":I
    .restart local v21    # "opcode":S
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readShort()S

    move-result v2

    .line 323
    .local v2, "index":I
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 324
    move-object/from16 v6, v18

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 326
    invoke-virtual {v6, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v7

    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->getTag()B

    move-result v7

    .line 325
    invoke-virtual {v6, v2, v7}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->toHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 324
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 326
    move-object/from16 v8, v17

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    move/from16 v4, v21

    goto/16 :goto_c

    .line 329
    .end local v20    # "no_pad_bytes":I
    .end local v21    # "opcode":S
    .local v2, "opcode":S
    .restart local v4    # "no_pad_bytes":I
    :sswitch_e
    move/from16 v21, v2

    move/from16 v20, v4

    move-object/from16 v8, v17

    move-object/from16 v6, v18

    .end local v2    # "opcode":S
    .end local v4    # "no_pad_bytes":I
    .restart local v20    # "no_pad_bytes":I
    .restart local v21    # "opcode":S
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedByte()I

    move-result v2

    .line 330
    .local v2, "index":I
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, v0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 331
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->constant_pool:Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 333
    invoke-virtual {v6, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v7

    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->getTag()B

    move-result v7

    .line 332
    invoke-virtual {v6, v2, v7}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->toHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 331
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 333
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    move/from16 v4, v21

    goto :goto_c

    .line 364
    .local v2, "i":I
    :goto_a
    int-to-long v6, v2

    invoke-static/range {v21 .. v21}, Lorg/checkerframework/org/apache/bcel/Const;->getOperandTypeCount(I)J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-gez v4, :cond_f

    .line 365
    move/from16 v4, v21

    .end local v21    # "opcode":S
    .local v4, "opcode":S
    invoke-static {v4, v2}, Lorg/checkerframework/org/apache/bcel/Const;->getOperandType(II)S

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 376
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unreachable default case reached! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4, v2}, Lorg/checkerframework/org/apache/bcel/Const;->getOperandType(II)S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 373
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 374
    goto :goto_b

    .line 370
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readShort()S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 371
    goto :goto_b

    .line 367
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedByte()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 368
    nop

    .line 378
    :goto_b
    const-string v6, "&nbsp;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    add-int/lit8 v2, v2, 0x1

    move/from16 v21, v4

    goto :goto_a

    .end local v4    # "opcode":S
    .restart local v21    # "opcode":S
    :cond_f
    move/from16 v4, v21

    .end local v21    # "opcode":S
    .restart local v4    # "opcode":S
    goto :goto_c

    .line 363
    .end local v2    # "i":I
    .end local v4    # "opcode":S
    .restart local v21    # "opcode":S
    :cond_10
    move/from16 v4, v21

    .line 382
    .end local v21    # "opcode":S
    .restart local v4    # "opcode":S
    :goto_c
    const-string v2, "</TD>"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_e
        0x13 -> :sswitch_d
        0x14 -> :sswitch_d
        0x15 -> :sswitch_c
        0x16 -> :sswitch_c
        0x17 -> :sswitch_c
        0x18 -> :sswitch_c
        0x19 -> :sswitch_c
        0x36 -> :sswitch_c
        0x37 -> :sswitch_c
        0x38 -> :sswitch_c
        0x39 -> :sswitch_c
        0x3a -> :sswitch_c
        0x84 -> :sswitch_b
        0x99 -> :sswitch_a
        0x9a -> :sswitch_a
        0x9b -> :sswitch_a
        0x9c -> :sswitch_a
        0x9d -> :sswitch_a
        0x9e -> :sswitch_a
        0x9f -> :sswitch_a
        0xa0 -> :sswitch_a
        0xa1 -> :sswitch_a
        0xa2 -> :sswitch_a
        0xa3 -> :sswitch_a
        0xa4 -> :sswitch_a
        0xa5 -> :sswitch_a
        0xa6 -> :sswitch_a
        0xa7 -> :sswitch_a
        0xa8 -> :sswitch_a
        0xa9 -> :sswitch_c
        0xaa -> :sswitch_9
        0xab -> :sswitch_8
        0xb2 -> :sswitch_7
        0xb3 -> :sswitch_7
        0xb4 -> :sswitch_7
        0xb5 -> :sswitch_7
        0xb6 -> :sswitch_6
        0xb7 -> :sswitch_6
        0xb8 -> :sswitch_6
        0xb9 -> :sswitch_6
        0xba -> :sswitch_6
        0xbb -> :sswitch_5
        0xbc -> :sswitch_4
        0xbd -> :sswitch_3
        0xc0 -> :sswitch_5
        0xc1 -> :sswitch_5
        0xc4 -> :sswitch_2
        0xc5 -> :sswitch_1
        0xc6 -> :sswitch_a
        0xc7 -> :sswitch_a
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

.method private findGotos(Lorg/checkerframework/org/apache/bcel/util/ByteSequence;Lorg/checkerframework/org/apache/bcel/classfile/Code;)V
    .locals 11
    .param p1, "bytes"    # Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    .param p2, "code"    # Lorg/checkerframework/org/apache/bcel/classfile/Code;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "goto_set"
        }
    .end annotation

    .line 394
    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->available()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->goto_set:Ljava/util/BitSet;

    .line 399
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 400
    invoke-virtual {p2}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getExceptionTable()[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    move-result-object v1

    .line 401
    .local v1, "ce":[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 402
    .local v4, "cex":Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->goto_set:Ljava/util/BitSet;

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->getStartPC()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    .line 403
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->goto_set:Ljava/util/BitSet;

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->getEndPC()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    .line 404
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->goto_set:Ljava/util/BitSet;

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->getHandlerPC()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    .line 401
    .end local v4    # "cex":Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 407
    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v2

    .line 408
    .local v2, "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    array-length v3, v2

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 409
    .local v5, "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getTag()B

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    .line 410
    move-object v3, v5

    check-cast v3, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    .line 411
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->getLocalVariableTable()[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    move-result-object v3

    .line 412
    .local v3, "vars":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    array-length v4, v3

    move v6, v0

    :goto_2
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    .line 413
    .local v7, "var":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getStartPC()I

    move-result v8

    .line 414
    .local v8, "start":I
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getLength()I

    move-result v9

    add-int/2addr v9, v8

    .line 415
    .local v9, "end":I
    iget-object v10, p0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->goto_set:Ljava/util/BitSet;

    invoke-virtual {v10, v8}, Ljava/util/BitSet;->set(I)V

    .line 416
    iget-object v10, p0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->goto_set:Ljava/util/BitSet;

    invoke-virtual {v10, v9}, Ljava/util/BitSet;->set(I)V

    .line 412
    .end local v7    # "var":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .end local v8    # "start":I
    .end local v9    # "end":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 418
    :cond_1
    goto :goto_3

    .line 408
    .end local v3    # "vars":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .end local v5    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 423
    .end local v1    # "ce":[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    .end local v2    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_3
    :goto_3
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->available()I

    move-result v1

    if-lez v1, :cond_9

    .line 424
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedByte()I

    move-result v1

    .line 426
    .local v1, "opcode":I
    sparse-switch v1, :sswitch_data_0

    .line 491
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->unreadByte()V

    .line 492
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->codeToHTML(Lorg/checkerframework/org/apache/bcel/util/ByteSequence;I)Ljava/lang/String;

    goto :goto_3

    .line 487
    :sswitch_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->getIndex()I

    move-result v2

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 488
    .local v2, "index":I
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->goto_set:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    .line 489
    goto :goto_3

    .line 430
    .end local v2    # "index":I
    :sswitch_1
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->getIndex()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    .line 431
    .local v2, "remainder":I
    if-nez v2, :cond_4

    move v3, v0

    goto :goto_4

    :cond_4
    rsub-int/lit8 v3, v2, 0x4

    .line 434
    .local v3, "no_pad_bytes":I
    :goto_4
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_5
    if-ge v4, v3, :cond_5

    .line 435
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readByte()B

    .line 434
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 438
    .end local v4    # "j":I
    :cond_5
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v4

    .line 439
    .local v4, "default_offset":I
    const/16 v5, 0xaa

    if-ne v1, v5, :cond_7

    .line 440
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v5

    .line 441
    .local v5, "low":I
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v6

    .line 442
    .local v6, "high":I
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->getIndex()I

    move-result v7

    add-int/lit8 v7, v7, -0xc

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    .line 443
    .local v7, "offset":I
    add-int/2addr v4, v7

    .line 444
    iget-object v8, p0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->goto_set:Ljava/util/BitSet;

    invoke-virtual {v8, v4}, Ljava/util/BitSet;->set(I)V

    .line 445
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_6
    sub-int v9, v6, v5

    add-int/lit8 v9, v9, 0x1

    if-ge v8, v9, :cond_6

    .line 446
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v9

    add-int/2addr v9, v7

    .line 447
    .local v9, "index":I
    iget-object v10, p0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->goto_set:Ljava/util/BitSet;

    invoke-virtual {v10, v9}, Ljava/util/BitSet;->set(I)V

    .line 445
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 449
    .end local v5    # "low":I
    .end local v6    # "high":I
    .end local v8    # "j":I
    .end local v9    # "index":I
    :cond_6
    goto :goto_3

    .line 450
    .end local v7    # "offset":I
    :cond_7
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v5

    .line 451
    .local v5, "npairs":I
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->getIndex()I

    move-result v6

    add-int/lit8 v6, v6, -0x8

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    .line 452
    .local v6, "offset":I
    add-int/2addr v4, v6

    .line 453
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->goto_set:Ljava/util/BitSet;

    invoke-virtual {v7, v4}, Ljava/util/BitSet;->set(I)V

    .line 454
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_7
    if-ge v7, v5, :cond_8

    .line 456
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    .line 457
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readInt()I

    move-result v8

    add-int/2addr v8, v6

    .line 458
    .local v8, "index":I
    iget-object v9, p0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->goto_set:Ljava/util/BitSet;

    invoke-virtual {v9, v8}, Ljava/util/BitSet;->set(I)V

    .line 454
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 461
    .end local v5    # "npairs":I
    .end local v7    # "j":I
    .end local v8    # "index":I
    :cond_8
    goto/16 :goto_3

    .line 481
    .end local v2    # "remainder":I
    .end local v3    # "no_pad_bytes":I
    .end local v4    # "default_offset":I
    .end local v6    # "offset":I
    :sswitch_2
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->getIndex()I

    move-result v2

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readShort()S

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 482
    .local v2, "index":I
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->goto_set:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    .line 483
    goto/16 :goto_3

    .line 495
    .end local v1    # "opcode":I
    .end local v2    # "index":I
    :cond_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x99 -> :sswitch_2
        0x9a -> :sswitch_2
        0x9b -> :sswitch_2
        0x9c -> :sswitch_2
        0x9d -> :sswitch_2
        0x9e -> :sswitch_2
        0x9f -> :sswitch_2
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_2
        0xa2 -> :sswitch_2
        0xa3 -> :sswitch_2
        0xa4 -> :sswitch_2
        0xa5 -> :sswitch_2
        0xa6 -> :sswitch_2
        0xa7 -> :sswitch_2
        0xa8 -> :sswitch_2
        0xaa -> :sswitch_1
        0xab -> :sswitch_1
        0xc6 -> :sswitch_2
        0xc7 -> :sswitch_2
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
    .end sparse-switch
.end method

.method private writeMethod(Lorg/checkerframework/org/apache/bcel/classfile/Method;I)V
    .locals 27
    .param p1, "method"    # Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .param p2, "method_number"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    move-object/from16 v1, p0

    move/from16 v2, p2

    const-string v0, ""

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getSignature()Ljava/lang/String;

    move-result-object v3

    .line 505
    .local v3, "signature":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->methodSignatureArgumentTypes(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v5

    .line 507
    .local v5, "args":[Ljava/lang/String;
    invoke-static {v3, v4}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->methodSignatureReturnType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 509
    .local v4, "type":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 510
    .local v6, "name":Ljava/lang/String;
    invoke-static {v6}, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->toHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 512
    .local v7, "html_name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getAccessFlags()I

    move-result v8

    invoke-static {v8}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->accessToString(I)Ljava/lang/String;

    move-result-object v8

    .line 513
    .local v8, "access":Ljava/lang/String;
    const-string v9, " "

    const-string v10, "&nbsp;"

    invoke-static {v8, v9, v10}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 515
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v9

    .line 516
    .local v9, "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    iget-object v10, v1, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->file:Ljava/io/PrintWriter;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<P><B><FONT COLOR=\"#FF0000\">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</FONT>&nbsp;<A NAME=method"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 517
    invoke-static {v4}, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->referenceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "</A>&nbsp<A HREF=\""

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v1, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "_methods.html#method"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "\" TARGET=Methods>"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "</A>("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 516
    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 520
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v11, v5

    if-ge v10, v11, :cond_1

    .line 521
    iget-object v11, v1, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->file:Ljava/io/PrintWriter;

    aget-object v13, v5, v10

    invoke-static {v13}, Lorg/checkerframework/org/apache/bcel/util/Class2HTML;->referenceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 522
    array-length v11, v5

    add-int/lit8 v11, v11, -0x1

    if-ge v10, v11, :cond_0

    .line 523
    iget-object v11, v1, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->file:Ljava/io/PrintWriter;

    const-string v13, ",&nbsp;"

    invoke-virtual {v11, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 520
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 526
    .end local v10    # "i":I
    :cond_1
    iget-object v10, v1, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->file:Ljava/io/PrintWriter;

    const-string v11, ")</B></P>"

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 527
    const/4 v10, 0x0

    .line 528
    .local v10, "c":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    const/4 v11, 0x0

    .line 529
    .local v11, "code":[B
    array-length v13, v9

    const-string v14, "@"

    if-lez v13, :cond_6

    .line 530
    iget-object v13, v1, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->file:Ljava/io/PrintWriter;

    const-string v15, "<H4>Attributes</H4><UL>\n"

    invoke-virtual {v13, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 531
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    array-length v15, v9

    move-object/from16 v16, v3

    .end local v3    # "signature":Ljava/lang/String;
    .local v16, "signature":Ljava/lang/String;
    const-string v3, "</UL>"

    if-ge v13, v15, :cond_5

    .line 532
    aget-object v15, v9, v13

    invoke-virtual {v15}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getTag()B

    move-result v15

    .line 533
    .local v15, "tag":B
    move-object/from16 v17, v4

    .end local v4    # "type":Ljava/lang/String;
    .local v17, "type":Ljava/lang/String;
    const-string v4, "</A></LI>\n"

    move-object/from16 v19, v5

    .end local v5    # "args":[Ljava/lang/String;
    .local v19, "args":[Ljava/lang/String;
    const-string v5, "\" TARGET=Attributes>"

    move-object/from16 v20, v6

    .end local v6    # "name":Ljava/lang/String;
    .local v20, "name":Ljava/lang/String;
    const-string v6, "_attributes.html#method"

    move-object/from16 v21, v7

    .end local v7    # "html_name":Ljava/lang/String;
    .local v21, "html_name":Ljava/lang/String;
    const-string v7, "<LI><A HREF=\""

    move-object/from16 v22, v8

    const/4 v8, -0x1

    .end local v8    # "access":Ljava/lang/String;
    .local v22, "access":Ljava/lang/String;
    if-eq v15, v8, :cond_2

    .line 534
    iget-object v8, v1, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->file:Ljava/io/PrintWriter;

    move-object/from16 v18, v10

    .end local v10    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    .local v18, "c":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v23, v11

    .end local v11    # "code":[B
    .local v23, "code":[B
    iget-object v11, v1, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 536
    invoke-static {v15}, Lorg/checkerframework/org/apache/bcel/Const;->getAttributeName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 534
    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 538
    .end local v18    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    .end local v23    # "code":[B
    .restart local v10    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    .restart local v11    # "code":[B
    :cond_2
    move-object/from16 v18, v10

    move-object/from16 v23, v11

    .end local v10    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    .end local v11    # "code":[B
    .restart local v18    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    .restart local v23    # "code":[B
    iget-object v8, v1, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->file:Ljava/io/PrintWriter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<LI>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v9, v13

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</LI>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 540
    :goto_2
    const/4 v8, 0x2

    if-ne v15, v8, :cond_4

    .line 541
    aget-object v8, v9, v13

    move-object v10, v8

    check-cast v10, Lorg/checkerframework/org/apache/bcel/classfile/Code;

    .line 542
    .end local v18    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    .restart local v10    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    invoke-virtual {v10}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v8

    .line 543
    .local v8, "attributes2":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    invoke-virtual {v10}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getCode()[B

    move-result-object v11

    .line 544
    .end local v23    # "code":[B
    .restart local v11    # "code":[B
    move-object/from16 v24, v9

    .end local v9    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .local v24, "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    iget-object v9, v1, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->file:Ljava/io/PrintWriter;

    move-object/from16 v18, v10

    .end local v10    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    .restart local v18    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    const-string v10, "<UL>"

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 545
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    array-length v10, v8

    if-ge v9, v10, :cond_3

    .line 546
    aget-object v10, v8, v9

    invoke-virtual {v10}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getTag()B

    move-result v15

    .line 547
    iget-object v10, v1, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->file:Ljava/io/PrintWriter;

    move-object/from16 v25, v8

    .end local v8    # "attributes2":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .local v25, "attributes2":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v26, v7

    iget-object v7, v1, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->class_name:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 549
    invoke-static {v15}, Lorg/checkerframework/org/apache/bcel/Const;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 547
    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 545
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v8, v25

    move-object/from16 v7, v26

    goto :goto_3

    .end local v25    # "attributes2":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v8    # "attributes2":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_3
    move-object/from16 v25, v8

    .line 551
    .end local v8    # "attributes2":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .end local v9    # "j":I
    .restart local v25    # "attributes2":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    iget-object v4, v1, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v10, v18

    goto :goto_4

    .line 540
    .end local v11    # "code":[B
    .end local v24    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .end local v25    # "attributes2":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .local v9, "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v23    # "code":[B
    :cond_4
    move-object/from16 v24, v9

    .end local v9    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v24    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    move-object/from16 v10, v18

    move-object/from16 v11, v23

    .line 531
    .end local v15    # "tag":B
    .end local v18    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    .end local v23    # "code":[B
    .restart local v10    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    .restart local v11    # "code":[B
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v9, v24

    goto/16 :goto_1

    .end local v17    # "type":Ljava/lang/String;
    .end local v19    # "args":[Ljava/lang/String;
    .end local v20    # "name":Ljava/lang/String;
    .end local v21    # "html_name":Ljava/lang/String;
    .end local v22    # "access":Ljava/lang/String;
    .end local v24    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v4    # "type":Ljava/lang/String;
    .restart local v5    # "args":[Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "html_name":Ljava/lang/String;
    .local v8, "access":Ljava/lang/String;
    .restart local v9    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_5
    move-object/from16 v17, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v24, v9

    move-object/from16 v18, v10

    move-object/from16 v23, v11

    .line 554
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "args":[Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "html_name":Ljava/lang/String;
    .end local v8    # "access":Ljava/lang/String;
    .end local v9    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .end local v10    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    .end local v11    # "code":[B
    .end local v13    # "i":I
    .restart local v17    # "type":Ljava/lang/String;
    .restart local v18    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    .restart local v19    # "args":[Ljava/lang/String;
    .restart local v20    # "name":Ljava/lang/String;
    .restart local v21    # "html_name":Ljava/lang/String;
    .restart local v22    # "access":Ljava/lang/String;
    .restart local v23    # "code":[B
    .restart local v24    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    iget-object v4, v1, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->file:Ljava/io/PrintWriter;

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 529
    .end local v16    # "signature":Ljava/lang/String;
    .end local v17    # "type":Ljava/lang/String;
    .end local v18    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    .end local v19    # "args":[Ljava/lang/String;
    .end local v20    # "name":Ljava/lang/String;
    .end local v21    # "html_name":Ljava/lang/String;
    .end local v22    # "access":Ljava/lang/String;
    .end local v23    # "code":[B
    .end local v24    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v3    # "signature":Ljava/lang/String;
    .restart local v4    # "type":Ljava/lang/String;
    .restart local v5    # "args":[Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "html_name":Ljava/lang/String;
    .restart local v8    # "access":Ljava/lang/String;
    .restart local v9    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v10    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    .restart local v11    # "code":[B
    :cond_6
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v24, v9

    .line 556
    .end local v3    # "signature":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "args":[Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "html_name":Ljava/lang/String;
    .end local v8    # "access":Ljava/lang/String;
    .end local v9    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v16    # "signature":Ljava/lang/String;
    .restart local v17    # "type":Ljava/lang/String;
    .restart local v19    # "args":[Ljava/lang/String;
    .restart local v20    # "name":Ljava/lang/String;
    .restart local v21    # "html_name":Ljava/lang/String;
    .restart local v22    # "access":Ljava/lang/String;
    .restart local v24    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :goto_5
    if-eqz v11, :cond_a

    .line 559
    new-instance v3, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;

    invoke-direct {v3, v11}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;-><init>([B)V

    .line 560
    .local v3, "stream":Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    :try_start_0
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->available()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->mark(I)V

    .line 561
    invoke-direct {v1, v3, v10}, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->findGotos(Lorg/checkerframework/org/apache/bcel/util/ByteSequence;Lorg/checkerframework/org/apache/bcel/classfile/Code;)V

    .line 562
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->reset()V

    .line 563
    iget-object v4, v1, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->file:Ljava/io/PrintWriter;

    const-string v5, "<TABLE BORDER=0><TR><TH ALIGN=LEFT>Byte<BR>offset</TH><TH ALIGN=LEFT>Instruction</TH><TH ALIGN=LEFT>Argument</TH>"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    :goto_6
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->available()I

    move-result v4

    if-lez v4, :cond_9

    .line 566
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->getIndex()I

    move-result v4

    .line 567
    .local v4, "offset":I
    invoke-direct {v1, v3, v2}, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->codeToHTML(Lorg/checkerframework/org/apache/bcel/util/ByteSequence;I)Ljava/lang/String;

    move-result-object v5

    .line 568
    .local v5, "str":Ljava/lang/String;
    move-object v6, v0

    .line 573
    .local v6, "anchor":Ljava/lang/String;
    iget-object v7, v1, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->goto_set:Ljava/util/BitSet;

    invoke-virtual {v7, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "<A NAME=code"

    if-eqz v7, :cond_7

    .line 574
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "></A>"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 577
    :cond_7
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->getIndex()I

    move-result v7

    array-length v9, v11

    if-ne v7, v9, :cond_8

    .line 578
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</A>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "anchor2":Ljava/lang/String;
    goto :goto_7

    .line 580
    .end local v7    # "anchor2":Ljava/lang/String;
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 582
    .restart local v7    # "anchor2":Ljava/lang/String;
    :goto_7
    iget-object v8, v1, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->file:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<TR VALIGN=TOP><TD>"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, "</TD><TD>"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, "</TR>"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 583
    .end local v4    # "offset":I
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "anchor":Ljava/lang/String;
    .end local v7    # "anchor2":Ljava/lang/String;
    goto/16 :goto_6

    .line 584
    :cond_9
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->close()V

    .line 586
    .end local v3    # "stream":Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    iget-object v0, v1, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->file:Ljava/io/PrintWriter;

    const-string v3, "<TR><TD> </A></TD></TR>"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
    iget-object v0, v1, Lorg/checkerframework/org/apache/bcel/util/CodeHTML;->file:Ljava/io/PrintWriter;

    const-string v3, "</TABLE>"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 559
    .restart local v3    # "stream":Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    :catchall_0
    move-exception v0

    move-object v4, v0

    .end local v3    # "stream":Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    .end local v10    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    .end local v11    # "code":[B
    .end local v16    # "signature":Ljava/lang/String;
    .end local v17    # "type":Ljava/lang/String;
    .end local v19    # "args":[Ljava/lang/String;
    .end local v20    # "name":Ljava/lang/String;
    .end local v21    # "html_name":Ljava/lang/String;
    .end local v22    # "access":Ljava/lang/String;
    .end local v24    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .end local p1    # "method":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .end local p2    # "method_number":I
    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 584
    .restart local v3    # "stream":Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    .restart local v10    # "c":Lorg/checkerframework/org/apache/bcel/classfile/Code;
    .restart local v11    # "code":[B
    .restart local v16    # "signature":Ljava/lang/String;
    .restart local v17    # "type":Ljava/lang/String;
    .restart local v19    # "args":[Ljava/lang/String;
    .restart local v20    # "name":Ljava/lang/String;
    .restart local v21    # "html_name":Ljava/lang/String;
    .restart local v22    # "access":Ljava/lang/String;
    .restart local v24    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local p1    # "method":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .restart local p2    # "method_number":I
    :catchall_1
    move-exception v0

    move-object v5, v0

    :try_start_3
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v5

    .line 589
    .end local v3    # "stream":Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    :cond_a
    :goto_9
    return-void
.end method
