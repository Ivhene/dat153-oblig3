.class final Lnet/bytebuddy/jar/asm/SymbolTable;
.super Ljava/lang/Object;
.source "SymbolTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    }
.end annotation


# instance fields
.field private bootstrapMethodCount:I

.field private bootstrapMethods:Lnet/bytebuddy/jar/asm/ByteVector;

.field private className:Ljava/lang/String;

.field final classWriter:Lnet/bytebuddy/jar/asm/ClassWriter;

.field private constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

.field private constantPoolCount:I

.field private entries:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

.field private entryCount:I

.field private majorVersion:I

.field private final sourceClassReader:Lnet/bytebuddy/jar/asm/ClassReader;

.field private typeCount:I

.field private typeTable:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;


# direct methods
.method constructor <init>(Lnet/bytebuddy/jar/asm/ClassWriter;)V
    .locals 1
    .param p1, "classWriter"    # Lnet/bytebuddy/jar/asm/ClassWriter;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->classWriter:Lnet/bytebuddy/jar/asm/ClassWriter;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->sourceClassReader:Lnet/bytebuddy/jar/asm/ClassReader;

    .line 124
    const/16 v0, 0x100

    new-array v0, v0, [Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->entries:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    .line 126
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 127
    return-void
.end method

.method constructor <init>(Lnet/bytebuddy/jar/asm/ClassWriter;Lnet/bytebuddy/jar/asm/ClassReader;)V
    .locals 22
    .param p1, "classWriter"    # Lnet/bytebuddy/jar/asm/ClassWriter;
    .param p2, "classReader"    # Lnet/bytebuddy/jar/asm/ClassReader;

    .line 137
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 138
    move-object/from16 v8, p1

    iput-object v8, v6, Lnet/bytebuddy/jar/asm/SymbolTable;->classWriter:Lnet/bytebuddy/jar/asm/ClassWriter;

    .line 139
    iput-object v7, v6, Lnet/bytebuddy/jar/asm/SymbolTable;->sourceClassReader:Lnet/bytebuddy/jar/asm/ClassReader;

    .line 142
    iget-object v9, v7, Lnet/bytebuddy/jar/asm/ClassReader;->classFileBuffer:[B

    .line 143
    .local v9, "inputBytes":[B
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->getItem(I)I

    move-result v0

    add-int/lit8 v11, v0, -0x1

    .line 144
    .local v11, "constantPoolOffset":I
    iget v0, v7, Lnet/bytebuddy/jar/asm/ClassReader;->header:I

    sub-int v12, v0, v11

    .line 145
    .local v12, "constantPoolLength":I
    invoke-virtual/range {p2 .. p2}, Lnet/bytebuddy/jar/asm/ClassReader;->getItemCount()I

    move-result v0

    iput v0, v6, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    .line 146
    new-instance v0, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v0, v12}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>(I)V

    iput-object v0, v6, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 147
    invoke-virtual {v0, v9, v11, v12}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 152
    iget v0, v6, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    const/4 v13, 0x2

    mul-int/2addr v0, v13

    new-array v0, v0, [Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iput-object v0, v6, Lnet/bytebuddy/jar/asm/SymbolTable;->entries:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    .line 153
    invoke-virtual/range {p2 .. p2}, Lnet/bytebuddy/jar/asm/ClassReader;->getMaxStringLength()I

    move-result v0

    new-array v14, v0, [C

    .line 154
    .local v14, "charBuffer":[C
    const/4 v0, 0x0

    .line 155
    .local v0, "hasBootstrapMethods":Z
    const/4 v1, 0x1

    move v15, v0

    move v5, v1

    .line 156
    .end local v0    # "hasBootstrapMethods":Z
    .local v5, "itemIndex":I
    .local v15, "hasBootstrapMethods":Z
    :goto_0
    iget v0, v6, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    if-ge v5, v0, :cond_2

    .line 157
    invoke-virtual {v7, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->getItem(I)I

    move-result v4

    .line 158
    .local v4, "itemOffset":I
    add-int/lit8 v0, v4, -0x1

    aget-byte v3, v9, v0

    .line 160
    .local v3, "itemTag":I
    packed-switch v3, :pswitch_data_0

    .line 223
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 204
    :pswitch_1
    const/4 v15, 0x1

    .line 205
    add-int/lit8 v0, v4, 0x2

    .line 206
    invoke-virtual {v7, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-virtual {v7, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->getItem(I)I

    move-result v2

    .line 207
    .local v2, "nameAndTypeItemOffset":I
    nop

    .line 210
    invoke-virtual {v7, v2, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v16

    add-int/lit8 v0, v2, 0x2

    .line 211
    invoke-virtual {v7, v0, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v17

    .line 212
    invoke-virtual {v7, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v18

    .line 207
    move-object/from16 v0, p0

    move v1, v3

    move/from16 v19, v2

    .end local v2    # "nameAndTypeItemOffset":I
    .local v19, "nameAndTypeItemOffset":I
    move v2, v5

    move/from16 v20, v3

    .end local v3    # "itemTag":I
    .local v20, "itemTag":I
    move-object/from16 v3, v16

    move v10, v4

    .end local v4    # "itemOffset":I
    .local v10, "itemOffset":I
    move-object/from16 v4, v17

    move/from16 v17, v5

    .end local v5    # "itemIndex":I
    .local v17, "itemIndex":I
    move/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantDynamicOrInvokeDynamicReference(IILjava/lang/String;Ljava/lang/String;I)V

    .line 213
    move/from16 v13, v17

    move/from16 v1, v20

    goto/16 :goto_1

    .line 191
    .end local v10    # "itemOffset":I
    .end local v17    # "itemIndex":I
    .end local v19    # "nameAndTypeItemOffset":I
    .end local v20    # "itemTag":I
    .restart local v3    # "itemTag":I
    .restart local v4    # "itemOffset":I
    .restart local v5    # "itemIndex":I
    :pswitch_2
    move/from16 v20, v3

    move v10, v4

    move/from16 v17, v5

    .end local v3    # "itemTag":I
    .end local v4    # "itemOffset":I
    .end local v5    # "itemIndex":I
    .restart local v10    # "itemOffset":I
    .restart local v17    # "itemIndex":I
    .restart local v20    # "itemTag":I
    add-int/lit8 v4, v10, 0x1

    .line 192
    invoke-virtual {v7, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-virtual {v7, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->getItem(I)I

    move-result v5

    .line 193
    .local v5, "memberRefItemOffset":I
    add-int/lit8 v0, v5, 0x2

    .line 194
    invoke-virtual {v7, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-virtual {v7, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->getItem(I)I

    move-result v4

    .line 195
    .local v4, "nameAndTypeItemOffset":I
    nop

    .line 197
    invoke-virtual {v7, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readByte(I)I

    move-result v2

    .line 198
    invoke-virtual {v7, v5, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-virtual {v7, v4, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v18

    add-int/lit8 v0, v4, 0x2

    .line 200
    invoke-virtual {v7, v0, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v19

    .line 195
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v21, v4

    .end local v4    # "nameAndTypeItemOffset":I
    .local v21, "nameAndTypeItemOffset":I
    move-object/from16 v4, v18

    move/from16 v18, v5

    .end local v5    # "memberRefItemOffset":I
    .local v18, "memberRefItemOffset":I
    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantMethodHandle(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    move/from16 v13, v17

    move/from16 v1, v20

    goto/16 :goto_1

    .line 178
    .end local v10    # "itemOffset":I
    .end local v17    # "itemIndex":I
    .end local v18    # "memberRefItemOffset":I
    .end local v20    # "itemTag":I
    .end local v21    # "nameAndTypeItemOffset":I
    .restart local v3    # "itemTag":I
    .local v4, "itemOffset":I
    .local v5, "itemIndex":I
    :pswitch_3
    move/from16 v20, v3

    move v10, v4

    move/from16 v17, v5

    .line 180
    .end local v3    # "itemTag":I
    .end local v4    # "itemOffset":I
    .end local v5    # "itemIndex":I
    .restart local v10    # "itemOffset":I
    .restart local v17    # "itemIndex":I
    .restart local v20    # "itemTag":I
    invoke-virtual {v7, v10, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, v10, 0x2

    .line 181
    invoke-virtual {v7, v4, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v1

    .line 178
    nop

    .end local v17    # "itemIndex":I
    .restart local v5    # "itemIndex":I
    invoke-direct {v6, v5, v0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantNameAndType(ILjava/lang/String;Ljava/lang/String;)V

    .line 182
    move v13, v5

    move/from16 v1, v20

    goto/16 :goto_1

    .line 164
    .end local v10    # "itemOffset":I
    .end local v20    # "itemTag":I
    .restart local v3    # "itemTag":I
    .restart local v4    # "itemOffset":I
    :pswitch_4
    move/from16 v20, v3

    move v10, v4

    .end local v3    # "itemTag":I
    .end local v4    # "itemOffset":I
    .restart local v10    # "itemOffset":I
    .restart local v20    # "itemTag":I
    add-int/lit8 v4, v10, 0x2

    .line 165
    invoke-virtual {v7, v4}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v0

    invoke-virtual {v7, v0}, Lnet/bytebuddy/jar/asm/ClassReader;->getItem(I)I

    move-result v4

    .line 166
    .local v4, "nameAndTypeItemOffset":I
    nop

    .line 169
    invoke-virtual {v7, v10, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readClass(I[C)Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-virtual {v7, v4, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v17

    add-int/lit8 v0, v4, 0x2

    .line 171
    invoke-virtual {v7, v0, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v18

    .line 166
    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, v20

    move/from16 v19, v4

    .end local v4    # "nameAndTypeItemOffset":I
    .restart local v19    # "nameAndTypeItemOffset":I
    move-object/from16 v4, v17

    move v13, v5

    .end local v5    # "itemIndex":I
    .local v13, "itemIndex":I
    move-object/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantMemberReference(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    move/from16 v1, v20

    goto :goto_1

    .line 219
    .end local v10    # "itemOffset":I
    .end local v13    # "itemIndex":I
    .end local v19    # "nameAndTypeItemOffset":I
    .end local v20    # "itemTag":I
    .restart local v3    # "itemTag":I
    .local v4, "itemOffset":I
    .restart local v5    # "itemIndex":I
    :pswitch_5
    move/from16 v20, v3

    move v10, v4

    move v13, v5

    .line 220
    .end local v3    # "itemTag":I
    .end local v4    # "itemOffset":I
    .end local v5    # "itemIndex":I
    .restart local v10    # "itemOffset":I
    .restart local v13    # "itemIndex":I
    .restart local v20    # "itemTag":I
    invoke-virtual {v7, v10, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v0

    .line 219
    move/from16 v1, v20

    .end local v20    # "itemTag":I
    .local v1, "itemTag":I
    invoke-direct {v6, v13, v1, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8Reference(IILjava/lang/String;)V

    .line 221
    goto :goto_1

    .line 185
    .end local v1    # "itemTag":I
    .end local v10    # "itemOffset":I
    .end local v13    # "itemIndex":I
    .restart local v3    # "itemTag":I
    .restart local v4    # "itemOffset":I
    .restart local v5    # "itemIndex":I
    :pswitch_6
    move v1, v3

    move v10, v4

    move v13, v5

    .end local v3    # "itemTag":I
    .end local v4    # "itemOffset":I
    .end local v5    # "itemIndex":I
    .restart local v1    # "itemTag":I
    .restart local v10    # "itemOffset":I
    .restart local v13    # "itemIndex":I
    invoke-virtual {v7, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readLong(I)J

    move-result-wide v2

    invoke-direct {v6, v13, v1, v2, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantLongOrDouble(IIJ)V

    .line 186
    goto :goto_1

    .line 175
    .end local v1    # "itemTag":I
    .end local v10    # "itemOffset":I
    .end local v13    # "itemIndex":I
    .restart local v3    # "itemTag":I
    .restart local v4    # "itemOffset":I
    .restart local v5    # "itemIndex":I
    :pswitch_7
    move v1, v3

    move v10, v4

    move v13, v5

    .end local v3    # "itemTag":I
    .end local v4    # "itemOffset":I
    .end local v5    # "itemIndex":I
    .restart local v1    # "itemTag":I
    .restart local v10    # "itemOffset":I
    .restart local v13    # "itemIndex":I
    invoke-virtual {v7, v10}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v0

    invoke-direct {v6, v13, v1, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantIntegerOrFloat(III)V

    .line 176
    goto :goto_1

    .line 188
    .end local v1    # "itemTag":I
    .end local v10    # "itemOffset":I
    .end local v13    # "itemIndex":I
    .restart local v3    # "itemTag":I
    .restart local v4    # "itemOffset":I
    .restart local v5    # "itemIndex":I
    :pswitch_8
    move v1, v3

    move v10, v4

    move v13, v5

    .end local v3    # "itemTag":I
    .end local v4    # "itemOffset":I
    .end local v5    # "itemIndex":I
    .restart local v1    # "itemTag":I
    .restart local v10    # "itemOffset":I
    .restart local v13    # "itemIndex":I
    invoke-virtual {v7, v13, v14}, Lnet/bytebuddy/jar/asm/ClassReader;->readUtf(I[C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v13, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(ILjava/lang/String;)V

    .line 189
    nop

    .line 225
    :goto_1
    nop

    .line 226
    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    const/4 v0, 0x6

    if-ne v1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v0, 0x2

    :goto_3
    add-int v5, v13, v0

    .line 227
    .end local v1    # "itemTag":I
    .end local v10    # "itemOffset":I
    .end local v13    # "itemIndex":I
    .restart local v5    # "itemIndex":I
    const/4 v10, 0x1

    const/4 v13, 0x2

    goto/16 :goto_0

    .line 230
    :cond_2
    move v13, v5

    .end local v5    # "itemIndex":I
    .restart local v13    # "itemIndex":I
    if-eqz v15, :cond_3

    .line 231
    invoke-direct {v6, v7, v14}, Lnet/bytebuddy/jar/asm/SymbolTable;->copyBootstrapMethods(Lnet/bytebuddy/jar/asm/ClassReader;[C)V

    .line 233
    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private add(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)V
    .locals 3
    .param p1, "entry"    # Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    .line 437
    iget v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->entryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->entryCount:I

    .line 438
    iget v0, p1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->hashCode:I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->entries:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    array-length v2, v1

    rem-int/2addr v0, v2

    .line 439
    .local v0, "index":I
    aget-object v1, v1, v0

    iput-object v1, p1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->next:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    .line 440
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->entries:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    aput-object p1, v1, v0

    .line 441
    return-void
.end method

.method private addBootstrapMethod(III)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 9
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "hashCode"    # I

    .line 1096
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethods:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    .line 1097
    .local v0, "bootstrapMethodsData":[B
    invoke-direct {p0, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->get(I)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v1

    .line 1098
    .local v1, "entry":Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    :goto_0
    if-eqz v1, :cond_3

    .line 1099
    iget v2, v1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->tag:I

    const/16 v3, 0x40

    if-ne v2, v3, :cond_2

    iget v2, v1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->hashCode:I

    if-ne v2, p3, :cond_2

    .line 1100
    iget-wide v2, v1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->data:J

    long-to-int v2, v2

    .line 1101
    .local v2, "otherOffset":I
    const/4 v3, 0x1

    .line 1102
    .local v3, "isSameBootstrapMethod":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, p2, :cond_1

    .line 1103
    add-int v5, p1, v4

    aget-byte v5, v0, v5

    add-int v6, v2, v4

    aget-byte v6, v0, v6

    if-eq v5, v6, :cond_0

    .line 1104
    const/4 v3, 0x0

    .line 1105
    goto :goto_2

    .line 1102
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1108
    .end local v4    # "i":I
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 1109
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethods:Lnet/bytebuddy/jar/asm/ByteVector;

    iput p1, v4, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 1110
    return-object v1

    .line 1113
    .end local v2    # "otherOffset":I
    .end local v3    # "isSameBootstrapMethod":Z
    :cond_2
    iget-object v1, v1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->next:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    goto :goto_0

    .line 1115
    :cond_3
    new-instance v8, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iget v3, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethodCount:I

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethodCount:I

    const/16 v4, 0x40

    int-to-long v5, p1

    move-object v2, v8

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IIJI)V

    invoke-direct {p0, v8}, Lnet/bytebuddy/jar/asm/SymbolTable;->put(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v2

    return-object v2
.end method

.method private addConstantDynamicOrInvokeDynamicReference(ILjava/lang/String;Ljava/lang/String;I)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 16
    .param p1, "tag"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "bootstrapMethodIndex"    # I

    .line 924
    move-object/from16 v0, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    invoke-static/range {p1 .. p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v14

    .line 925
    .local v14, "hashCode":I
    invoke-direct {v0, v14}, Lnet/bytebuddy/jar/asm/SymbolTable;->get(I)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v1

    move-object v15, v1

    .line 926
    .local v15, "entry":Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    :goto_0
    if-eqz v15, :cond_1

    .line 927
    iget v1, v15, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->tag:I

    if-ne v1, v10, :cond_0

    iget v1, v15, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->hashCode:I

    if-ne v1, v14, :cond_0

    iget-wide v1, v15, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->data:J

    int-to-long v3, v13

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, v15, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->name:Ljava/lang/String;

    .line 930
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v15, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->value:Ljava/lang/String;

    .line 931
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 932
    return-object v15

    .line 934
    :cond_0
    iget-object v15, v15, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->next:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    goto :goto_0

    .line 936
    :cond_1
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v0, v11, v12}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantNameAndType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v10, v13, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->put122(III)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 937
    new-instance v9, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iget v2, v0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    const/4 v4, 0x0

    int-to-long v7, v13

    move-object v1, v9

    move/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object v10, v9

    move v9, v14

    invoke-direct/range {v1 .. v9}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {v0, v10}, Lnet/bytebuddy/jar/asm/SymbolTable;->put(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v1

    return-object v1
.end method

.method private addConstantDynamicOrInvokeDynamicReference(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 15
    .param p1, "tag"    # I
    .param p2, "index"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;
    .param p5, "bootstrapMethodIndex"    # I

    .line 960
    move/from16 v0, p5

    move/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-static {v10, v11, v12, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v13

    .line 961
    .local v13, "hashCode":I
    new-instance v14, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    const/4 v4, 0x0

    int-to-long v7, v0

    move-object v1, v14

    move/from16 v2, p2

    move/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move v9, v13

    invoke-direct/range {v1 .. v9}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    move-object v1, p0

    invoke-direct {p0, v14}, Lnet/bytebuddy/jar/asm/SymbolTable;->add(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)V

    .line 962
    return-void
.end method

.method private addConstantIntegerOrFloat(II)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 9
    .param p1, "tag"    # I
    .param p2, "value"    # I

    .line 638
    invoke-static {p1, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(II)I

    move-result v6

    .line 639
    .local v6, "hashCode":I
    invoke-direct {p0, v6}, Lnet/bytebuddy/jar/asm/SymbolTable;->get(I)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v0

    move-object v7, v0

    .line 640
    .local v7, "entry":Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    :goto_0
    if-eqz v7, :cond_1

    .line 641
    iget v0, v7, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->tag:I

    if-ne v0, p1, :cond_0

    iget v0, v7, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->hashCode:I

    if-ne v0, v6, :cond_0

    iget-wide v0, v7, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->data:J

    int-to-long v2, p2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 642
    return-object v7

    .line 644
    :cond_0
    iget-object v7, v7, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->next:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    goto :goto_0

    .line 646
    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 647
    new-instance v8, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iget v1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    int-to-long v3, p2

    move-object v0, v8

    move v2, p1

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IIJI)V

    invoke-direct {p0, v8}, Lnet/bytebuddy/jar/asm/SymbolTable;->put(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v0

    return-object v0
.end method

.method private addConstantIntegerOrFloat(III)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "tag"    # I
    .param p3, "value"    # I

    .line 659
    new-instance v6, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    int-to-long v3, p3

    invoke-static {p2, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(II)I

    move-result v5

    move-object v0, v6

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IIJI)V

    invoke-direct {p0, v6}, Lnet/bytebuddy/jar/asm/SymbolTable;->add(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)V

    .line 660
    return-void
.end method

.method private addConstantLongOrDouble(IJ)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 10
    .param p1, "tag"    # I
    .param p2, "value"    # J

    .line 693
    invoke-static {p1, p2, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(IJ)I

    move-result v6

    .line 694
    .local v6, "hashCode":I
    invoke-direct {p0, v6}, Lnet/bytebuddy/jar/asm/SymbolTable;->get(I)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v0

    move-object v7, v0

    .line 695
    .local v7, "entry":Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    :goto_0
    if-eqz v7, :cond_1

    .line 696
    iget v0, v7, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->tag:I

    if-ne v0, p1, :cond_0

    iget v0, v7, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->hashCode:I

    if-ne v0, v6, :cond_0

    iget-wide v0, v7, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->data:J

    cmp-long v0, v0, p2

    if-nez v0, :cond_0

    .line 697
    return-object v7

    .line 699
    :cond_0
    iget-object v7, v7, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->next:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    goto :goto_0

    .line 701
    :cond_1
    iget v8, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    .line 702
    .local v8, "index":I
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v0, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lnet/bytebuddy/jar/asm/ByteVector;->putLong(J)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 703
    iget v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    .line 704
    new-instance v9, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-object v0, v9

    move v1, v8

    move v2, p1

    move-wide v3, p2

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IIJI)V

    invoke-direct {p0, v9}, Lnet/bytebuddy/jar/asm/SymbolTable;->put(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v0

    return-object v0
.end method

.method private addConstantLongOrDouble(IIJ)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "tag"    # I
    .param p3, "value"    # J

    .line 716
    new-instance v6, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    invoke-static {p2, p3, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(IJ)I

    move-result v5

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IIJI)V

    invoke-direct {p0, v6}, Lnet/bytebuddy/jar/asm/SymbolTable;->add(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)V

    .line 717
    return-void
.end method

.method private addConstantMemberReference(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    .locals 16
    .param p1, "tag"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;

    .line 559
    move-object/from16 v0, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-static/range {p1 .. p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 560
    .local v14, "hashCode":I
    invoke-direct {v0, v14}, Lnet/bytebuddy/jar/asm/SymbolTable;->get(I)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v1

    move-object v15, v1

    .line 561
    .local v15, "entry":Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    :goto_0
    if-eqz v15, :cond_1

    .line 562
    iget v1, v15, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->tag:I

    if-ne v1, v10, :cond_0

    iget v1, v15, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->hashCode:I

    if-ne v1, v14, :cond_0

    iget-object v1, v15, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->owner:Ljava/lang/String;

    .line 564
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v15, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->name:Ljava/lang/String;

    .line 565
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v15, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->value:Ljava/lang/String;

    .line 566
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    return-object v15

    .line 569
    :cond_0
    iget-object v15, v15, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->next:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    goto :goto_0

    .line 571
    :cond_1
    iget-object v1, v0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 572
    invoke-virtual {v0, v11}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v2

    iget v2, v2, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v0, v12, v13}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantNameAndType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 571
    invoke-virtual {v1, v10, v2, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->put122(III)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 573
    new-instance v9, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iget v2, v0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    const-wide/16 v7, 0x0

    move-object v1, v9

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v10, v9

    move v9, v14

    invoke-direct/range {v1 .. v9}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {v0, v10}, Lnet/bytebuddy/jar/asm/SymbolTable;->put(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v1

    return-object v1
.end method

.method private addConstantMemberReference(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "index"    # I
    .param p2, "tag"    # I
    .param p3, "owner"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "descriptor"    # Ljava/lang/String;

    .line 593
    new-instance v9, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    const-wide/16 v6, 0x0

    invoke-static {p2, p3, p4, p5}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    move-object v0, v9

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-direct {p0, v9}, Lnet/bytebuddy/jar/asm/SymbolTable;->add(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)V

    .line 594
    return-void
.end method

.method private addConstantMethodHandle(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "index"    # I
    .param p2, "referenceKind"    # I
    .param p3, "owner"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "descriptor"    # Ljava/lang/String;

    .line 852
    move/from16 v0, p2

    const/16 v1, 0xf

    .line 853
    .local v1, "tag":I
    const/16 v2, 0xf

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-static {v2, v12, v13, v14, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 854
    .local v2, "hashCode":I
    new-instance v15, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    const/16 v5, 0xf

    int-to-long v9, v0

    move-object v3, v15

    move/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move v11, v2

    invoke-direct/range {v3 .. v11}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    move-object/from16 v3, p0

    invoke-direct {v3, v15}, Lnet/bytebuddy/jar/asm/SymbolTable;->add(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)V

    .line 855
    return-void
.end method

.method private addConstantNameAndType(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;

    .line 752
    const/16 v0, 0xc

    .line 753
    .local v0, "tag":I
    new-instance v7, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    const/16 v3, 0xc

    const/16 v1, 0xc

    invoke-static {v1, p2, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object v1, v7

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v7}, Lnet/bytebuddy/jar/asm/SymbolTable;->add(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)V

    .line 754
    return-void
.end method

.method private addConstantUtf8(ILjava/lang/String;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 785
    new-instance v0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    const/4 v1, 0x1

    invoke-static {v1, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(ILjava/lang/String;)I

    move-result v2

    invoke-direct {v0, p1, v1, p2, v2}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;I)V

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->add(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)V

    .line 786
    return-void
.end method

.method private addConstantUtf8Reference(ILjava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 5
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 999
    invoke-static {p1, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(ILjava/lang/String;)I

    move-result v0

    .line 1000
    .local v0, "hashCode":I
    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->get(I)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v1

    .line 1001
    .local v1, "entry":Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    :goto_0
    if-eqz v1, :cond_1

    .line 1002
    iget v2, v1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->tag:I

    if-ne v2, p1, :cond_0

    iget v2, v1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->hashCode:I

    if-ne v2, v0, :cond_0

    iget-object v2, v1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->value:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1003
    return-object v1

    .line 1005
    :cond_0
    iget-object v1, v1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->next:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    goto :goto_0

    .line 1007
    :cond_1
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lnet/bytebuddy/jar/asm/ByteVector;->put12(II)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1008
    new-instance v2, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iget v3, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    invoke-direct {v2, v3, p1, p2, v0}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;I)V

    invoke-direct {p0, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->put(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v2

    return-object v2
.end method

.method private addConstantUtf8Reference(IILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "tag"    # I
    .param p3, "value"    # Ljava/lang/String;

    .line 1023
    new-instance v0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    invoke-static {p2, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(ILjava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, p2, p3, v1}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;I)V

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->add(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)V

    .line 1024
    return-void
.end method

.method private addTypeInternal(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)I
    .locals 4
    .param p1, "entry"    # Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    .line 1216
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->typeTable:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    if-nez v0, :cond_0

    .line 1217
    const/16 v0, 0x10

    new-array v0, v0, [Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iput-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->typeTable:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    .line 1219
    :cond_0
    iget v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->typeCount:I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->typeTable:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    array-length v2, v1

    if-ne v0, v2, :cond_1

    .line 1220
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    .line 1221
    .local v0, "newTypeTable":[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1222
    iput-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->typeTable:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    .line 1224
    .end local v0    # "newTypeTable":[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    :cond_1
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->typeTable:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iget v1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->typeCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->typeCount:I

    aput-object p1, v0, v1

    .line 1225
    invoke-direct {p0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->put(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->index:I

    return v0
.end method

.method private copyBootstrapMethods(Lnet/bytebuddy/jar/asm/ClassReader;[C)V
    .locals 22
    .param p1, "classReader"    # Lnet/bytebuddy/jar/asm/ClassReader;
    .param p2, "charBuffer"    # [C

    .line 245
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Lnet/bytebuddy/jar/asm/ClassReader;->classFileBuffer:[B

    .line 246
    .local v3, "inputBytes":[B
    invoke-virtual/range {p1 .. p1}, Lnet/bytebuddy/jar/asm/ClassReader;->getFirstAttributeOffset()I

    move-result v4

    .line 247
    .local v4, "currentAttributeOffset":I
    add-int/lit8 v5, v4, -0x2

    invoke-virtual {v1, v5}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v5

    .local v5, "i":I
    :goto_0
    if-lez v5, :cond_1

    .line 248
    invoke-virtual {v1, v4, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readUTF8(I[C)Ljava/lang/String;

    move-result-object v6

    .line 249
    .local v6, "attributeName":Ljava/lang/String;
    const-string v7, "BootstrapMethods"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 250
    add-int/lit8 v7, v4, 0x6

    invoke-virtual {v1, v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v7

    iput v7, v0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethodCount:I

    .line 251
    goto :goto_1

    .line 253
    :cond_0
    add-int/lit8 v7, v4, 0x2

    invoke-virtual {v1, v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x6

    add-int/2addr v4, v7

    .line 247
    .end local v6    # "attributeName":Ljava/lang/String;
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 255
    .end local v5    # "i":I
    :cond_1
    :goto_1
    iget v5, v0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethodCount:I

    if-lez v5, :cond_3

    .line 257
    add-int/lit8 v5, v4, 0x8

    .line 258
    .local v5, "bootstrapMethodsOffset":I
    add-int/lit8 v6, v4, 0x2

    invoke-virtual {v1, v6}, Lnet/bytebuddy/jar/asm/ClassReader;->readInt(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    .line 259
    .local v6, "bootstrapMethodsLength":I
    new-instance v7, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v7, v6}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>(I)V

    iput-object v7, v0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethods:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 260
    invoke-virtual {v7, v3, v5, v6}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 263
    move v7, v5

    .line 264
    .local v7, "currentOffset":I
    const/4 v8, 0x0

    move v14, v8

    .local v14, "i":I
    :goto_2
    iget v8, v0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethodCount:I

    if-ge v14, v8, :cond_3

    .line 265
    sub-int v15, v7, v5

    .line 266
    .local v15, "offset":I
    invoke-virtual {v1, v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v13

    .line 267
    .local v13, "bootstrapMethodRef":I
    add-int/lit8 v7, v7, 0x2

    .line 268
    invoke-virtual {v1, v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    .line 269
    .local v8, "numBootstrapArguments":I
    add-int/lit8 v7, v7, 0x2

    .line 270
    invoke-virtual {v1, v13, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v9

    move/from16 v16, v9

    .line 271
    .local v16, "hashCode":I
    :goto_3
    add-int/lit8 v17, v8, -0x1

    .end local v8    # "numBootstrapArguments":I
    .local v17, "numBootstrapArguments":I
    if-lez v8, :cond_2

    .line 272
    invoke-virtual {v1, v7}, Lnet/bytebuddy/jar/asm/ClassReader;->readUnsignedShort(I)I

    move-result v8

    .line 273
    .local v8, "bootstrapArgument":I
    add-int/lit8 v7, v7, 0x2

    .line 274
    invoke-virtual {v1, v8, v2}, Lnet/bytebuddy/jar/asm/ClassReader;->readConst(I[C)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v9

    xor-int v16, v16, v9

    .line 275
    .end local v8    # "bootstrapArgument":I
    move/from16 v8, v17

    goto :goto_3

    .line 276
    :cond_2
    new-instance v11, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    const/16 v10, 0x40

    int-to-long v8, v15

    const v12, 0x7fffffff

    and-int v18, v16, v12

    move-wide/from16 v19, v8

    move-object v8, v11

    move v9, v14

    move-object/from16 v21, v11

    move-wide/from16 v11, v19

    move/from16 v19, v13

    .end local v13    # "bootstrapMethodRef":I
    .local v19, "bootstrapMethodRef":I
    move/from16 v13, v18

    invoke-direct/range {v8 .. v13}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IIJI)V

    move-object/from16 v8, v21

    invoke-direct {v0, v8}, Lnet/bytebuddy/jar/asm/SymbolTable;->add(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)V

    .line 264
    .end local v15    # "offset":I
    .end local v16    # "hashCode":I
    .end local v17    # "numBootstrapArguments":I
    .end local v19    # "bootstrapMethodRef":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 279
    .end local v5    # "bootstrapMethodsOffset":I
    .end local v6    # "bootstrapMethodsLength":I
    .end local v7    # "currentOffset":I
    .end local v14    # "i":I
    :cond_3
    return-void
.end method

.method private get(I)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    .locals 2
    .param p1, "hashCode"    # I

    .line 394
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->entries:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    array-length v1, v0

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static hash(II)I
    .locals 2
    .param p0, "tag"    # I
    .param p1, "value"    # I

    .line 1233
    const v0, 0x7fffffff

    add-int v1, p0, p1

    and-int/2addr v0, v1

    return v0
.end method

.method private static hash(IJ)I
    .locals 3
    .param p0, "tag"    # I
    .param p1, "value"    # J

    .line 1237
    long-to-int v0, p1

    add-int/2addr v0, p0

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v1, v1

    add-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static hash(ILjava/lang/String;)I
    .locals 2
    .param p0, "tag"    # I
    .param p1, "value"    # Ljava/lang/String;

    .line 1241
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, p0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static hash(ILjava/lang/String;I)I
    .locals 2
    .param p0, "tag"    # I
    .param p1, "value1"    # Ljava/lang/String;
    .param p2, "value2"    # I

    .line 1245
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, p0

    add-int/2addr v0, p2

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static hash(ILjava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # I
    .param p1, "value1"    # Ljava/lang/String;
    .param p2, "value2"    # Ljava/lang/String;

    .line 1249
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v0, p0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static hash(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p0, "tag"    # I
    .param p1, "value1"    # Ljava/lang/String;
    .param p2, "value2"    # Ljava/lang/String;
    .param p3, "value3"    # I

    .line 1254
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/lit8 v1, p3, 0x1

    mul-int/2addr v0, v1

    add-int/2addr v0, p0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static hash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "tag"    # I
    .param p1, "value1"    # Ljava/lang/String;
    .param p2, "value2"    # Ljava/lang/String;
    .param p3, "value3"    # Ljava/lang/String;

    .line 1259
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v0, p0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static hash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p0, "tag"    # I
    .param p1, "value1"    # Ljava/lang/String;
    .param p2, "value2"    # Ljava/lang/String;
    .param p3, "value3"    # Ljava/lang/String;
    .param p4, "value4"    # I

    .line 1268
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/2addr v0, p4

    add-int/2addr v0, p0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method private put(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    .locals 8
    .param p1, "entry"    # Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    .line 407
    iget v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->entryCount:I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->entries:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    if-le v0, v2, :cond_2

    .line 408
    array-length v0, v1

    .line 409
    .local v0, "currentCapacity":I
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 410
    .local v1, "newCapacity":I
    new-array v2, v1, [Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    .line 411
    .local v2, "newEntries":[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 412
    iget-object v4, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->entries:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    aget-object v4, v4, v3

    .line 413
    .local v4, "currentEntry":Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    :goto_1
    if-eqz v4, :cond_0

    .line 414
    iget v5, v4, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->hashCode:I

    rem-int/2addr v5, v1

    .line 415
    .local v5, "newCurrentEntryIndex":I
    iget-object v6, v4, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->next:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    .line 416
    .local v6, "nextEntry":Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    aget-object v7, v2, v5

    iput-object v7, v4, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->next:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    .line 417
    aput-object v4, v2, v5

    .line 418
    move-object v4, v6

    .line 419
    .end local v5    # "newCurrentEntryIndex":I
    .end local v6    # "nextEntry":Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    goto :goto_1

    .line 411
    .end local v4    # "currentEntry":Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 421
    .end local v3    # "i":I
    :cond_1
    iput-object v2, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->entries:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    .line 423
    .end local v0    # "currentCapacity":I
    .end local v1    # "newCapacity":I
    .end local v2    # "newEntries":[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    :cond_2
    iget v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->entryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->entryCount:I

    .line 424
    iget v0, p1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->hashCode:I

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->entries:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    array-length v2, v1

    rem-int/2addr v0, v2

    .line 425
    .local v0, "index":I
    aget-object v1, v1, v0

    iput-object v1, p1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->next:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    .line 426
    iget-object v1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->entries:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    aput-object p1, v1, v0

    return-object p1
.end method


# virtual methods
.method varargs addBootstrapMethod(Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 10
    .param p1, "bootstrapMethodHandle"    # Lnet/bytebuddy/jar/asm/Handle;
    .param p2, "bootstrapMethodArguments"    # [Ljava/lang/Object;

    .line 1040
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethods:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1041
    .local v0, "bootstrapMethodsAttribute":Lnet/bytebuddy/jar/asm/ByteVector;
    if-nez v0, :cond_0

    .line 1042
    new-instance v1, Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-direct {v1}, Lnet/bytebuddy/jar/asm/ByteVector;-><init>()V

    iput-object v1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethods:Lnet/bytebuddy/jar/asm/ByteVector;

    move-object v0, v1

    .line 1049
    :cond_0
    array-length v1, p2

    .line 1050
    .local v1, "numBootstrapArguments":I
    new-array v2, v1, [I

    .line 1051
    .local v2, "bootstrapMethodArgumentIndexes":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1052
    aget-object v4, p2, v3

    invoke-virtual {p0, v4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstant(Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v4

    iget v4, v4, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    aput v4, v2, v3

    .line 1051
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1058
    .end local v3    # "i":I
    :cond_1
    iget v3, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 1059
    .local v3, "bootstrapMethodOffset":I
    nop

    .line 1061
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getTag()I

    move-result v5

    .line 1062
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getOwner()Ljava/lang/String;

    move-result-object v6

    .line 1063
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1064
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->getDesc()Ljava/lang/String;

    move-result-object v8

    .line 1065
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->isInterface()Z

    move-result v9

    .line 1060
    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantMethodHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v4

    iget v4, v4, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    .line 1059
    invoke-virtual {v0, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1068
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1069
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 1070
    aget v5, v2, v4

    invoke-virtual {v0, v5}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 1069
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1074
    .end local v4    # "i":I
    :cond_2
    iget v4, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    sub-int/2addr v4, v3

    .line 1075
    .local v4, "bootstrapMethodlength":I
    invoke-virtual {p1}, Lnet/bytebuddy/jar/asm/Handle;->hashCode()I

    move-result v5

    .line 1076
    .local v5, "hashCode":I
    array-length v6, p2

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_3

    aget-object v8, p2, v7

    .line 1077
    .local v8, "bootstrapMethodArgument":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v9

    xor-int/2addr v5, v9

    .line 1076
    .end local v8    # "bootstrapMethodArgument":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1079
    :cond_3
    const v6, 0x7fffffff

    and-int/2addr v5, v6

    .line 1082
    invoke-direct {p0, v3, v4, v5}, Lnet/bytebuddy/jar/asm/SymbolTable;->addBootstrapMethod(III)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v6

    return-object v6
.end method

.method addConstant(Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;

    .line 457
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 458
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantInteger(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    return-object v0

    .line 459
    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 460
    move-object v0, p1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantInteger(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    return-object v0

    .line 461
    :cond_1
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2

    .line 462
    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantInteger(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    return-object v0

    .line 463
    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 464
    move-object v0, p1

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantInteger(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    return-object v0

    .line 465
    :cond_3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 466
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantInteger(I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    return-object v0

    .line 467
    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 468
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantFloat(F)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    return-object v0

    .line 469
    :cond_5
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 470
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantLong(J)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    return-object v0

    .line 471
    :cond_6
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 472
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantDouble(D)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    return-object v0

    .line 473
    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 474
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantString(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    return-object v0

    .line 475
    :cond_8
    instance-of v0, p1, Lnet/bytebuddy/jar/asm/Type;

    if-eqz v0, :cond_b

    .line 476
    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/jar/asm/Type;

    .line 477
    .local v0, "type":Lnet/bytebuddy/jar/asm/Type;
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Type;->getSort()I

    move-result v1

    .line 478
    .local v1, "typeSort":I
    const/16 v2, 0xa

    if-ne v1, v2, :cond_9

    .line 479
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v2

    return-object v2

    .line 480
    :cond_9
    const/16 v2, 0xb

    if-ne v1, v2, :cond_a

    .line 481
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantMethodType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v2

    return-object v2

    .line 483
    :cond_a
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v2

    return-object v2

    .line 485
    .end local v0    # "type":Lnet/bytebuddy/jar/asm/Type;
    .end local v1    # "typeSort":I
    :cond_b
    instance-of v0, p1, Lnet/bytebuddy/jar/asm/Handle;

    if-eqz v0, :cond_c

    .line 486
    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/jar/asm/Handle;

    .line 487
    .local v0, "handle":Lnet/bytebuddy/jar/asm/Handle;
    nop

    .line 488
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Handle;->getTag()I

    move-result v2

    .line 489
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Handle;->getOwner()Ljava/lang/String;

    move-result-object v3

    .line 490
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Handle;->getName()Ljava/lang/String;

    move-result-object v4

    .line 491
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Handle;->getDesc()Ljava/lang/String;

    move-result-object v5

    .line 492
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/Handle;->isInterface()Z

    move-result v6

    .line 487
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantMethodHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v1

    return-object v1

    .line 493
    .end local v0    # "handle":Lnet/bytebuddy/jar/asm/Handle;
    :cond_c
    instance-of v0, p1, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    if-eqz v0, :cond_d

    .line 494
    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    .line 495
    .local v0, "constantDynamic":Lnet/bytebuddy/jar/asm/ConstantDynamic;
    nop

    .line 496
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getName()Ljava/lang/String;

    move-result-object v1

    .line 497
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    .line 498
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getBootstrapMethod()Lnet/bytebuddy/jar/asm/Handle;

    move-result-object v3

    .line 499
    invoke-virtual {v0}, Lnet/bytebuddy/jar/asm/ConstantDynamic;->getBootstrapMethodArgumentsUnsafe()[Ljava/lang/Object;

    move-result-object v4

    .line 495
    invoke-virtual {p0, v1, v2, v3, v4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantDynamic(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v1

    return-object v1

    .line 501
    .end local v0    # "constantDynamic":Lnet/bytebuddy/jar/asm/ConstantDynamic;
    :cond_d
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

.method addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 513
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8Reference(ILjava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    return-object v0
.end method

.method addConstantDouble(D)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 3
    .param p1, "value"    # D

    .line 681
    const/4 v0, 0x6

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantLongOrDouble(IJ)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    return-object v0
.end method

.method varargs addConstantDynamic(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "bootstrapMethodHandle"    # Lnet/bytebuddy/jar/asm/Handle;
    .param p4, "bootstrapMethodArguments"    # [Ljava/lang/Object;

    .line 884
    invoke-virtual {p0, p3, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addBootstrapMethod(Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    .line 885
    .local v0, "bootstrapMethod":Lnet/bytebuddy/jar/asm/Symbol;
    const/16 v1, 0x11

    iget v2, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-direct {p0, v1, p1, p2, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantDynamicOrInvokeDynamicReference(ILjava/lang/String;Ljava/lang/String;I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v1

    return-object v1
.end method

.method addConstantFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 1
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;

    .line 526
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantMemberReference(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v0

    return-object v0
.end method

.method addConstantFloat(F)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 2
    .param p1, "value"    # F

    .line 626
    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantIntegerOrFloat(II)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    return-object v0
.end method

.method addConstantInteger(I)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 1
    .param p1, "value"    # I

    .line 615
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantIntegerOrFloat(II)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    return-object v0
.end method

.method varargs addConstantInvokeDynamic(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "bootstrapMethodHandle"    # Lnet/bytebuddy/jar/asm/Handle;
    .param p4, "bootstrapMethodArguments"    # [Ljava/lang/Object;

    .line 905
    invoke-virtual {p0, p3, p4}, Lnet/bytebuddy/jar/asm/SymbolTable;->addBootstrapMethod(Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    .line 906
    .local v0, "bootstrapMethod":Lnet/bytebuddy/jar/asm/Symbol;
    const/16 v1, 0x12

    iget v2, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-direct {p0, v1, p1, p2, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantDynamicOrInvokeDynamicReference(ILjava/lang/String;Ljava/lang/String;I)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v1

    return-object v1
.end method

.method addConstantLong(J)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 1
    .param p1, "value"    # J

    .line 670
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantLongOrDouble(IJ)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    return-object v0
.end method

.method addConstantMethodHandle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 19
    .param p1, "referenceKind"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "descriptor"    # Ljava/lang/String;
    .param p5, "isInterface"    # Z

    .line 808
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    const/16 v14, 0xf

    .line 811
    .local v14, "tag":I
    const/16 v2, 0xf

    invoke-static {v2, v11, v12, v13, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v15

    .line 812
    .local v15, "hashCode":I
    invoke-direct {v0, v15}, Lnet/bytebuddy/jar/asm/SymbolTable;->get(I)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v3

    move-object v10, v3

    .line 813
    .local v10, "entry":Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    :goto_0
    if-eqz v10, :cond_1

    .line 814
    iget v3, v10, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->tag:I

    if-ne v3, v2, :cond_0

    iget v3, v10, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->hashCode:I

    if-ne v3, v15, :cond_0

    iget-wide v3, v10, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->data:J

    int-to-long v5, v1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget-object v3, v10, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->owner:Ljava/lang/String;

    .line 817
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v10, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->name:Ljava/lang/String;

    .line 818
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v10, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->value:Ljava/lang/String;

    .line 819
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 820
    return-object v10

    .line 822
    :cond_0
    iget-object v10, v10, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->next:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    goto :goto_0

    .line 824
    :cond_1
    const/4 v3, 0x4

    if-gt v1, v3, :cond_2

    .line 825
    iget-object v3, v0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v0, v11, v12, v13}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v4

    iget v4, v4, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    invoke-virtual {v3, v2, v1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->put112(III)Lnet/bytebuddy/jar/asm/ByteVector;

    move/from16 v8, p5

    goto :goto_1

    .line 827
    :cond_2
    iget-object v3, v0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

    .line 828
    move/from16 v8, p5

    invoke-virtual {v0, v11, v12, v13, v8}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v4

    iget v4, v4, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    .line 827
    invoke-virtual {v3, v2, v1, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->put112(III)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 830
    :goto_1
    new-instance v9, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iget v3, v0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v2, v3, 0x1

    iput v2, v0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    const/16 v4, 0xf

    int-to-long v6, v1

    move-object v2, v9

    move-object/from16 v5, p2

    move-wide/from16 v16, v6

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v18, v9

    move-wide/from16 v8, v16

    move-object/from16 v16, v10

    .end local v10    # "entry":Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    .local v16, "entry":Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    move v10, v15

    invoke-direct/range {v2 .. v10}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    move-object/from16 v2, v18

    invoke-direct {v0, v2}, Lnet/bytebuddy/jar/asm/SymbolTable;->put(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v2

    return-object v2
.end method

.method addConstantMethodType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 1
    .param p1, "methodDescriptor"    # Ljava/lang/String;

    .line 865
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8Reference(ILjava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    return-object v0
.end method

.method addConstantMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 2
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "descriptor"    # Ljava/lang/String;
    .param p4, "isInterface"    # Z

    .line 541
    if-eqz p4, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 542
    .local v0, "tag":I
    :goto_0
    invoke-direct {p0, v0, p1, p2, p3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantMemberReference(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v1

    return-object v1
.end method

.method addConstantModule(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 1
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 972
    const/16 v0, 0x13

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8Reference(ILjava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    return-object v0
.end method

.method addConstantNameAndType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;

    .line 728
    const/16 v0, 0xc

    .line 729
    .local v0, "tag":I
    const/16 v1, 0xc

    invoke-static {v1, p1, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(ILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 730
    .local v8, "hashCode":I
    invoke-direct {p0, v8}, Lnet/bytebuddy/jar/asm/SymbolTable;->get(I)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v2

    move-object v9, v2

    .line 731
    .local v9, "entry":Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    :goto_0
    if-eqz v9, :cond_1

    .line 732
    iget v2, v9, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->tag:I

    if-ne v2, v1, :cond_0

    iget v2, v9, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->hashCode:I

    if-ne v2, v8, :cond_0

    iget-object v2, v9, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->name:Ljava/lang/String;

    .line 734
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v9, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->value:Ljava/lang/String;

    .line 735
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 736
    iget v1, v9, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->index:I

    return v1

    .line 738
    :cond_0
    iget-object v9, v9, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->next:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    goto :goto_0

    .line 740
    :cond_1
    iget-object v2, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Lnet/bytebuddy/jar/asm/ByteVector;->put122(III)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 741
    new-instance v1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iget v3, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    const/16 v4, 0xc

    move-object v2, v1

    move-object v5, p1

    move-object v6, p2

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->put(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v1

    iget v1, v1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->index:I

    return v1
.end method

.method addConstantPackage(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 983
    const/16 v0, 0x14

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8Reference(ILjava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    return-object v0
.end method

.method addConstantString(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 604
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8Reference(ILjava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    return-object v0
.end method

.method addConstantUtf8(Ljava/lang/String;)I
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .line 764
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(ILjava/lang/String;)I

    move-result v1

    .line 765
    .local v1, "hashCode":I
    invoke-direct {p0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->get(I)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v2

    .line 766
    .local v2, "entry":Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    :goto_0
    if-eqz v2, :cond_1

    .line 767
    iget v3, v2, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->tag:I

    if-ne v3, v0, :cond_0

    iget v3, v2, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->hashCode:I

    if-ne v3, v1, :cond_0

    iget-object v3, v2, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->value:Ljava/lang/String;

    .line 769
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 770
    iget v0, v2, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->index:I

    return v0

    .line 772
    :cond_0
    iget-object v2, v2, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->next:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    goto :goto_0

    .line 774
    :cond_1
    iget-object v3, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

    invoke-virtual {v3, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putByte(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v3

    invoke-virtual {v3, p1}, Lnet/bytebuddy/jar/asm/ByteVector;->putUTF8(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 775
    new-instance v3, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iget v4, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    invoke-direct {v3, v4, v0, p1, v1}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;I)V

    invoke-direct {p0, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->put(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->index:I

    return v0
.end method

.method addMergedType(II)I
    .locals 16
    .param p1, "typeTableIndex1"    # I
    .param p2, "typeTableIndex2"    # I

    .line 1189
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/16 v3, 0x20

    if-ge v1, v2, :cond_0

    .line 1190
    int-to-long v4, v1

    int-to-long v6, v2

    shl-long/2addr v6, v3

    or-long v3, v4, v6

    goto :goto_0

    .line 1191
    :cond_0
    int-to-long v4, v2

    int-to-long v6, v1

    shl-long/2addr v6, v3

    or-long v3, v4, v6

    :goto_0
    nop

    .line 1192
    .local v3, "data":J
    add-int v5, v1, v2

    const/16 v6, 0x82

    invoke-static {v6, v5}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(II)I

    move-result v11

    .line 1193
    .local v11, "hashCode":I
    invoke-direct {v0, v11}, Lnet/bytebuddy/jar/asm/SymbolTable;->get(I)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v5

    move-object v12, v5

    .line 1194
    .local v12, "entry":Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    :goto_1
    if-eqz v12, :cond_2

    .line 1195
    iget v5, v12, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->tag:I

    if-ne v5, v6, :cond_1

    iget v5, v12, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->hashCode:I

    if-ne v5, v11, :cond_1

    iget-wide v7, v12, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->data:J

    cmp-long v5, v7, v3

    if-nez v5, :cond_1

    .line 1196
    iget v5, v12, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->info:I

    return v5

    .line 1198
    :cond_1
    iget-object v12, v12, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->next:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    goto :goto_1

    .line 1200
    :cond_2
    iget-object v5, v0, Lnet/bytebuddy/jar/asm/SymbolTable;->typeTable:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    aget-object v5, v5, v1

    iget-object v13, v5, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->value:Ljava/lang/String;

    .line 1201
    .local v13, "type1":Ljava/lang/String;
    iget-object v5, v0, Lnet/bytebuddy/jar/asm/SymbolTable;->typeTable:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    aget-object v5, v5, v2

    iget-object v14, v5, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->value:Ljava/lang/String;

    .line 1202
    .local v14, "type2":Ljava/lang/String;
    iget-object v5, v0, Lnet/bytebuddy/jar/asm/SymbolTable;->classWriter:Lnet/bytebuddy/jar/asm/ClassWriter;

    invoke-virtual {v5, v13, v14}, Lnet/bytebuddy/jar/asm/ClassWriter;->getCommonSuperClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/bytebuddy/jar/asm/SymbolTable;->addType(Ljava/lang/String;)I

    move-result v15

    .line 1203
    .local v15, "commonSuperTypeIndex":I
    new-instance v10, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iget v6, v0, Lnet/bytebuddy/jar/asm/SymbolTable;->typeCount:I

    const/16 v7, 0x82

    move-object v5, v10

    move-wide v8, v3

    move-object v1, v10

    move v10, v11

    invoke-direct/range {v5 .. v10}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IIJI)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->put(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v1

    iput v15, v1, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->info:I

    .line 1204
    return v15
.end method

.method addType(Ljava/lang/String;)I
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .line 1140
    const/16 v0, 0x80

    invoke-static {v0, p1}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(ILjava/lang/String;)I

    move-result v1

    .line 1141
    .local v1, "hashCode":I
    invoke-direct {p0, v1}, Lnet/bytebuddy/jar/asm/SymbolTable;->get(I)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v2

    .line 1142
    .local v2, "entry":Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    :goto_0
    if-eqz v2, :cond_1

    .line 1143
    iget v3, v2, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->tag:I

    if-ne v3, v0, :cond_0

    iget v3, v2, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->hashCode:I

    if-ne v3, v1, :cond_0

    iget-object v3, v2, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->value:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1144
    iget v0, v2, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->index:I

    return v0

    .line 1146
    :cond_0
    iget-object v2, v2, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->next:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    goto :goto_0

    .line 1148
    :cond_1
    new-instance v3, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iget v4, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->typeCount:I

    invoke-direct {v3, v4, v0, p1, v1}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;I)V

    invoke-direct {p0, v3}, Lnet/bytebuddy/jar/asm/SymbolTable;->addTypeInternal(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)I

    move-result v0

    return v0
.end method

.method addUninitializedType(Ljava/lang/String;I)I
    .locals 10
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "bytecodeOffset"    # I

    .line 1161
    const/16 v0, 0x81

    invoke-static {v0, p1, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->hash(ILjava/lang/String;I)I

    move-result v8

    .line 1162
    .local v8, "hashCode":I
    invoke-direct {p0, v8}, Lnet/bytebuddy/jar/asm/SymbolTable;->get(I)Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    move-result-object v1

    move-object v9, v1

    .line 1163
    .local v9, "entry":Lnet/bytebuddy/jar/asm/SymbolTable$Entry;
    :goto_0
    if-eqz v9, :cond_1

    .line 1164
    iget v1, v9, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->tag:I

    if-ne v1, v0, :cond_0

    iget v1, v9, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->hashCode:I

    if-ne v1, v8, :cond_0

    iget-wide v1, v9, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->data:J

    int-to-long v3, p2

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, v9, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->value:Ljava/lang/String;

    .line 1167
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1168
    iget v0, v9, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->index:I

    return v0

    .line 1170
    :cond_0
    iget-object v9, v9, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;->next:Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    goto :goto_0

    .line 1172
    :cond_1
    new-instance v0, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    iget v2, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->typeCount:I

    const/16 v3, 0x81

    int-to-long v5, p2

    move-object v1, v0

    move-object v4, p1

    move v7, v8

    invoke-direct/range {v1 .. v7}, Lnet/bytebuddy/jar/asm/SymbolTable$Entry;-><init>(IILjava/lang/String;JI)V

    invoke-direct {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addTypeInternal(Lnet/bytebuddy/jar/asm/SymbolTable$Entry;)I

    move-result v0

    return v0
.end method

.method computeBootstrapMethodsSize()I
    .locals 1

    .line 358
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethods:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v0, :cond_0

    .line 359
    const-string v0, "BootstrapMethods"

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethods:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x8

    return v0

    .line 362
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getClassName()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->className:Ljava/lang/String;

    return-object v0
.end method

.method getConstantPoolCount()I
    .locals 1

    .line 329
    iget v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    return v0
.end method

.method getConstantPoolLength()I
    .locals 1

    .line 338
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v0, v0, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    return v0
.end method

.method getMajorVersion()I
    .locals 1

    .line 297
    iget v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->majorVersion:I

    return v0
.end method

.method getSource()Lnet/bytebuddy/jar/asm/ClassReader;
    .locals 1

    .line 288
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->sourceClassReader:Lnet/bytebuddy/jar/asm/ClassReader;

    return-object v0
.end method

.method getType(I)Lnet/bytebuddy/jar/asm/Symbol;
    .locals 1
    .param p1, "typeIndex"    # I

    .line 1129
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->typeTable:[Lnet/bytebuddy/jar/asm/SymbolTable$Entry;

    aget-object v0, v0, p1

    return-object v0
.end method

.method putBootstrapMethods(Lnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 4
    .param p1, "output"    # Lnet/bytebuddy/jar/asm/ByteVector;

    .line 373
    iget-object v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethods:Lnet/bytebuddy/jar/asm/ByteVector;

    if-eqz v0, :cond_0

    .line 374
    nop

    .line 375
    const-string v0, "BootstrapMethods"

    invoke-virtual {p0, v0}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethods:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x2

    .line 376
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putInt(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethodCount:I

    .line 377
    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethods:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->bootstrapMethods:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    .line 378
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 380
    :cond_0
    return-void
.end method

.method putConstantPool(Lnet/bytebuddy/jar/asm/ByteVector;)V
    .locals 4
    .param p1, "output"    # Lnet/bytebuddy/jar/asm/ByteVector;

    .line 348
    iget v0, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPoolCount:I

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/ByteVector;->putShort(I)Lnet/bytebuddy/jar/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

    iget-object v1, v1, Lnet/bytebuddy/jar/asm/ByteVector;->data:[B

    iget-object v2, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->constantPool:Lnet/bytebuddy/jar/asm/ByteVector;

    iget v2, v2, Lnet/bytebuddy/jar/asm/ByteVector;->length:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lnet/bytebuddy/jar/asm/ByteVector;->putByteArray([BII)Lnet/bytebuddy/jar/asm/ByteVector;

    .line 349
    return-void
.end method

.method setMajorVersionAndClassName(ILjava/lang/String;)I
    .locals 1
    .param p1, "majorVersion"    # I
    .param p2, "className"    # Ljava/lang/String;

    .line 318
    iput p1, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->majorVersion:I

    .line 319
    iput-object p2, p0, Lnet/bytebuddy/jar/asm/SymbolTable;->className:Ljava/lang/String;

    .line 320
    invoke-virtual {p0, p2}, Lnet/bytebuddy/jar/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lnet/bytebuddy/jar/asm/Symbol;->index:I

    return v0
.end method
