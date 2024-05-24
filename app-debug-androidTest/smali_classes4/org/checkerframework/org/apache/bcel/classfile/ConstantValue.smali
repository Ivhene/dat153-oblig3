.class public final Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;
.super Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
.source "ConstantValue.java"


# instance fields
.field private constantvalue_index:I


# direct methods
.method public constructor <init>(IIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 1
    .param p1, "name_index"    # I
    .param p2, "length"    # I
    .param p3, "constantvalue_index"    # I
    .param p4, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 70
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p4}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;-><init>(BIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 71
    iput p3, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;->constantvalue_index:I

    .line 72
    return-void
.end method

.method constructor <init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 1
    .param p1, "name_index"    # I
    .param p2, "length"    # I
    .param p3, "input"    # Ljava/io/DataInput;
    .param p4, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-interface {p3}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;-><init>(IIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;)V
    .locals 4
    .param p1, "c"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;

    .line 44
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;->getNameIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;->getLength()I

    move-result v1

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;->getConstantValueIndex()I

    move-result v2

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;-><init>(IIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 45
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 84
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitConstantValue(Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;)V

    .line 85
    return-void
.end method

.method public copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 1
    .param p1, "_constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 156
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;

    .line 157
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;
    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;->setConstantPool(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 158
    return-object v0
.end method

.method public final dump(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "file"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->dump(Ljava/io/DataOutputStream;)V

    .line 97
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;->constantvalue_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 98
    return-void
.end method

.method public final getConstantValueIndex()I
    .locals 1

    .line 105
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;->constantvalue_index:I

    return v0
.end method

.method public final setConstantValueIndex(I)V
    .locals 0
    .param p1, "constantvalue_index"    # I

    .line 113
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;->constantvalue_index:I

    .line 114
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 122
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantValue;->constantvalue_index:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 126
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Constant;->getTag()B

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 145
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type of ConstValue invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :pswitch_1
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantString;->getStringIndex()I

    move-result v1

    .line 141
    .local v1, "i":I
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v4, v0

    check-cast v4, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/org/apache/bcel/classfile/Utility;->convertString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "buf":Ljava/lang/String;
    goto :goto_0

    .line 134
    .end local v1    # "i":I
    .end local v2    # "buf":Ljava/lang/String;
    :pswitch_2
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;->getBytes()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 135
    .restart local v2    # "buf":Ljava/lang/String;
    goto :goto_0

    .line 128
    .end local v2    # "buf":Ljava/lang/String;
    :pswitch_3
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;->getBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 129
    .restart local v2    # "buf":Ljava/lang/String;
    goto :goto_0

    .line 131
    .end local v2    # "buf":Ljava/lang/String;
    :pswitch_4
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;->getBytes()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    .line 132
    .restart local v2    # "buf":Ljava/lang/String;
    goto :goto_0

    .line 137
    .end local v2    # "buf":Ljava/lang/String;
    :pswitch_5
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;->getBytes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 138
    .restart local v2    # "buf":Ljava/lang/String;
    nop

    .line 147
    :goto_0
    return-object v2

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
