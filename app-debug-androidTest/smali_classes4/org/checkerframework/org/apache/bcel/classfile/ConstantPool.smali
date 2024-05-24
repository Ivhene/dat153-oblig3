.class public Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
.super Ljava/lang/Object;
.source "ConstantPool.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/checkerframework/org/apache/bcel/classfile/Node;


# instance fields
.field private constant_pool:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;


# direct methods
.method public constructor <init>(Ljava/io/DataInput;)V
    .locals 4
    .param p1, "input"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    .line 66
    .local v0, "constant_pool_count":I
    new-array v1, v0, [Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constant_pool:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    .line 70
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 71
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constant_pool:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->readConstant(Ljava/io/DataInput;)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v3

    aput-object v3, v2, v1

    .line 79
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constant_pool:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->getTag()B

    move-result v2

    .line 80
    .local v2, "tag":B
    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 81
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 70
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "i":I
    .end local v2    # "tag":B
    :cond_2
    return-void
.end method

.method public constructor <init>([Lorg/checkerframework/org/apache/bcel/classfile/Constant;)V
    .locals 0
    .param p1, "constant_pool"    # [Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constant_pool:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    .line 53
    return-void
.end method

.method private static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 176
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x5

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 177
    .local v1, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 178
    .local v2, "ch":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 179
    aget-char v4, v2, v3

    sparse-switch v4, :sswitch_data_0

    .line 196
    aget-char v4, v2, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 193
    :sswitch_0
    const-string v4, "\\\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    goto :goto_1

    .line 184
    :sswitch_1
    const-string v4, "\\r"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    goto :goto_1

    .line 181
    :sswitch_2
    const-string v4, "\\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    goto :goto_1

    .line 187
    :sswitch_3
    const-string v4, "\\t"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    goto :goto_1

    .line 190
    :sswitch_4
    const-string v4, "\\b"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    nop

    .line 178
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 199
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_4
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x22 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 96
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitConstantPool(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 97
    return-void
.end method

.method public constantToString(IB)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .param p2, "tag"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
        }
    .end annotation

    .line 212
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 213
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(Lorg/checkerframework/org/apache/bcel/classfile/Constant;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public constantToString(Lorg/checkerframework/org/apache/bcel/classfile/Constant;)Ljava/lang/String;
    .locals 5
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->getTag()B

    move-result v0

    .line 110
    .local v0, "tag":B
    const-string v1, " "

    const/16 v2, 0xc

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 168
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown constant type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :pswitch_1
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInvokeDynamic;

    .line 163
    .local v1, "cid":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInvokeDynamic;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInvokeDynamic;->getBootstrapMethodAttrIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 164
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInvokeDynamic;->getNameAndTypeIndex()I

    move-result v4

    invoke-virtual {p0, v4, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "str":Ljava/lang/String;
    goto/16 :goto_0

    .line 158
    .end local v1    # "cid":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInvokeDynamic;
    .end local v2    # "str":Ljava/lang/String;
    :pswitch_2
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodType;

    .line 159
    .local v1, "cmt":Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodType;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodType;->getDescriptorIndex()I

    move-result v2

    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v2

    .line 160
    .restart local v2    # "str":Ljava/lang/String;
    goto/16 :goto_0

    .line 152
    .end local v1    # "cmt":Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodType;
    .end local v2    # "str":Ljava/lang/String;
    :pswitch_3
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;

    .line 153
    .local v2, "cmh":Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;->getReferenceKind()I

    move-result v4

    invoke-static {v4}, Lorg/checkerframework/org/apache/bcel/Const;->getMethodHandleName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;->getReferenceIndex()I

    move-result v3

    .line 155
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;->getReferenceIndex()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->getTag()B

    move-result v4

    .line 154
    invoke-virtual {p0, v3, v4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "str":Ljava/lang/String;
    move-object v2, v1

    goto/16 :goto_0

    .line 137
    .end local v1    # "str":Ljava/lang/String;
    .end local v2    # "cmh":Lorg/checkerframework/org/apache/bcel/classfile/ConstantMethodHandle;
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, p1

    check-cast v4, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getNameIndex()I

    move-result v4

    invoke-virtual {p0, v4, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    .line 139
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getSignatureIndex()I

    move-result v2

    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "str":Ljava/lang/String;
    goto/16 :goto_0

    .line 145
    .end local v2    # "str":Ljava/lang/String;
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, p1

    check-cast v3, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;->getClassIndex()I

    move-result v3

    const/4 v4, 0x7

    invoke-virtual {p0, v3, v4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;

    .line 146
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;->getNameAndTypeIndex()I

    move-result v3

    invoke-virtual {p0, v3, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    .restart local v2    # "str":Ljava/lang/String;
    goto/16 :goto_0

    .line 117
    .end local v2    # "str":Ljava/lang/String;
    :pswitch_6
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;->getStringIndex()I

    move-result v1

    .line 118
    .local v1, "i":I
    invoke-virtual {p0, v1, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object p1

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v4, p1

    check-cast v4, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_0

    .line 112
    .end local v1    # "i":I
    .end local v2    # "str":Ljava/lang/String;
    :pswitch_7
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;->getNameIndex()I

    move-result v1

    .line 113
    .restart local v1    # "i":I
    invoke-virtual {p0, v1, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object p1

    .line 114
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->compactClassName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 115
    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_0

    .line 125
    .end local v1    # "i":I
    .end local v2    # "str":Ljava/lang/String;
    :pswitch_8
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;->getBytes()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 126
    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_0

    .line 131
    .end local v2    # "str":Ljava/lang/String;
    :pswitch_9
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;->getBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 132
    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_0

    .line 128
    .end local v2    # "str":Ljava/lang/String;
    :pswitch_a
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;->getBytes()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 129
    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_0

    .line 134
    .end local v2    # "str":Ljava/lang/String;
    :pswitch_b
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;->getBytes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 135
    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_0

    .line 122
    .end local v2    # "str":Ljava/lang/String;
    :pswitch_c
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v2

    .line 123
    .restart local v2    # "str":Ljava/lang/String;
    nop

    .line 170
    :goto_0
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public copy()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .locals 4

    .line 366
    const/4 v0, 0x0

    .line 368
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-object v0, v1

    .line 369
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constant_pool:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    array-length v1, v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constant_pool:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    .line 370
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constant_pool:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 371
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 372
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constant_pool:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->copy()Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v2

    aput-object v2, v3, v1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    .end local v1    # "i":I
    :cond_1
    goto :goto_1

    .line 375
    :catch_0
    move-exception v1

    .line 378
    :goto_1
    return-object v0
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 3
    .param p1, "file"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constant_pool:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 225
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constant_pool:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 226
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {v1, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->dump(Ljava/io/DataOutputStream;)V

    .line 225
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    .locals 3
    .param p1, "index"    # I
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 242
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constant_pool:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    if-ltz p1, :cond_0

    .line 246
    aget-object v0, v0, p1

    return-object v0

    .line 243
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid constant pool reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Constant pool size is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constant_pool:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    .locals 4
    .param p1, "index"    # I
    .param p2, "tag"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 263
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 264
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->getTag()B

    move-result v1

    if-ne v1, p2, :cond_0

    .line 271
    return-object v0

    .line 268
    :cond_0
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected class `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lorg/checkerframework/org/apache/bcel/Const;->getConstantName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 265
    :cond_1
    new-instance v1, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constant pool at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getConstantPool()[Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constant_pool:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    return-object v0
.end method

.method public getConstantString(IB)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I
    .param p2, "tag"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
        }
    .end annotation

    .line 300
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 308
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    packed-switch p2, :pswitch_data_0

    .line 316
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConstantString called with illegal tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    :pswitch_0
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;->getStringIndex()I

    move-result v1

    .line 314
    .local v1, "i":I
    goto :goto_0

    .line 310
    .end local v1    # "i":I
    :pswitch_1
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;->getNameIndex()I

    move-result v1

    .line 311
    .restart local v1    # "i":I
    nop

    .line 319
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 320
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLength()I
    .locals 1

    .line 328
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constant_pool:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public setConstant(ILorg/checkerframework/org/apache/bcel/classfile/Constant;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "constant"    # Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    .line 336
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constant_pool:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    aput-object p2, v0, p1

    .line 337
    return-void
.end method

.method public setConstantPool([Lorg/checkerframework/org/apache/bcel/classfile/Constant;)V
    .locals 0
    .param p1, "constant_pool"    # [Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    .line 344
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constant_pool:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    .line 345
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constant_pool:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constant_pool:[Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
