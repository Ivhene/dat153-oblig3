.class public Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;
.super Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
.source "SimpleElementValue.java"


# instance fields
.field private index:I


# direct methods
.method public constructor <init>(IILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "index"    # I
    .param p3, "cpool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 34
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;-><init>(ILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 35
    iput p2, p0, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->index:I

    .line 36
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getType()I

    move-result v0

    .line 207
    .local v0, "_type":I
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 208
    sparse-switch v0, :sswitch_data_0

    .line 222
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SimpleElementValue doesnt know how to write out type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :sswitch_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 220
    nop

    .line 224
    return-void

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x44 -> :sswitch_0
        0x46 -> :sswitch_0
        0x49 -> :sswitch_0
        0x4a -> :sswitch_0
        0x53 -> :sswitch_0
        0x5a -> :sswitch_0
        0x73 -> :sswitch_0
    .end sparse-switch
.end method

.method public getIndex()I
    .locals 1

    .line 43
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->index:I

    return v0
.end method

.method public getValueBoolean()Z
    .locals 2

    .line 127
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getType()I

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1

    .line 131
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    .line 132
    .local v0, "bo":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;->getBytes()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 128
    .end local v0    # "bo":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Dont call getValueBoolean() on a non BOOLEAN ElementValue"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueByte()B
    .locals 3

    .line 75
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getType()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    .line 79
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getIndex()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    .line 81
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;->getBytes()I

    move-result v1

    int-to-byte v1, v1

    return v1

    .line 76
    .end local v0    # "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Dont call getValueByte() on a non BYTE ElementValue"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueChar()C
    .locals 3

    .line 86
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getType()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_0

    .line 90
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getIndex()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    .line 92
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;->getBytes()I

    move-result v1

    int-to-char v1, v1

    return v1

    .line 87
    .end local v0    # "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Dont call getValueChar() on a non CHAR ElementValue"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueDouble()D
    .locals 3

    .line 117
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getType()I

    move-result v0

    const/16 v1, 0x44

    if-ne v0, v1, :cond_0

    .line 121
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;

    .line 122
    .local v0, "d":Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;->getBytes()D

    move-result-wide v1

    return-wide v1

    .line 118
    .end local v0    # "d":Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Dont call getValueDouble() on a non DOUBLE ElementValue"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueFloat()F
    .locals 2

    .line 107
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getType()I

    move-result v0

    const/16 v1, 0x46

    if-ne v0, v1, :cond_0

    .line 111
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;

    .line 112
    .local v0, "f":Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;->getBytes()F

    move-result v1

    return v1

    .line 108
    .end local v0    # "f":Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Dont call getValueFloat() on a non FLOAT ElementValue"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueInt()I
    .locals 3

    .line 64
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getType()I

    move-result v0

    const/16 v1, 0x49

    if-ne v0, v1, :cond_0

    .line 68
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getIndex()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    .line 70
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;->getBytes()I

    move-result v1

    return v1

    .line 65
    .end local v0    # "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Dont call getValueString() on a non STRING ElementValue"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueLong()J
    .locals 3

    .line 97
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getType()I

    move-result v0

    const/16 v1, 0x4a

    if-ne v0, v1, :cond_0

    .line 101
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;

    .line 102
    .local v0, "j":Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;->getBytes()J

    move-result-wide v1

    return-wide v1

    .line 98
    .end local v0    # "j":Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Dont call getValueLong() on a non LONG ElementValue"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueShort()S
    .locals 2

    .line 137
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getType()I

    move-result v0

    const/16 v1, 0x53

    if-ne v0, v1, :cond_0

    .line 141
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    .line 142
    .local v0, "s":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;->getBytes()I

    move-result v1

    int-to-short v1, v1

    return v1

    .line 138
    .end local v0    # "s":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Dont call getValueShort() on a non SHORT ElementValue"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 3

    .line 53
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getType()I

    move-result v0

    const/16 v1, 0x73

    if-ne v0, v1, :cond_0

    .line 57
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getIndex()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 59
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 54
    .end local v0    # "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Dont call getValueString() on a non STRING ElementValue"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 48
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->index:I

    .line 49
    return-void
.end method

.method public stringifyValue()Ljava/lang/String;
    .locals 5

    .line 155
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    .line 156
    .local v0, "cpool":Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getType()I

    move-result v1

    .line 157
    .local v1, "_type":I
    const/4 v2, 0x3

    sparse-switch v1, :sswitch_data_0

    .line 199
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimpleElementValue class does not know how to stringify type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 195
    :sswitch_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getIndex()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 197
    .local v2, "cu8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 188
    .end local v2    # "cu8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    :sswitch_1
    nop

    .line 189
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getIndex()I

    move-result v3

    .line 188
    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    .line 190
    .local v2, "bo":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;->getBytes()I

    move-result v3

    if-nez v3, :cond_0

    .line 191
    const-string v3, "false"

    return-object v3

    .line 193
    :cond_0
    const-string v3, "true"

    return-object v3

    .line 176
    .end local v2    # "bo":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    :sswitch_2
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getIndex()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    .line 178
    .local v2, "s":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;->getBytes()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 164
    .end local v2    # "s":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    :sswitch_3
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getIndex()I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;

    .line 166
    .local v2, "j":Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;->getBytes()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 160
    .end local v2    # "j":Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;
    :sswitch_4
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getIndex()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    .line 162
    .local v2, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;->getBytes()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 172
    .end local v2    # "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    :sswitch_5
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getIndex()I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;

    .line 174
    .local v2, "f":Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;->getBytes()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 168
    .end local v2    # "f":Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;
    :sswitch_6
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getIndex()I

    move-result v2

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;

    .line 170
    .local v2, "d":Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;->getBytes()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 184
    .end local v2    # "d":Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;
    :sswitch_7
    nop

    .line 185
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getIndex()I

    move-result v3

    .line 184
    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    .line 186
    .local v2, "ch":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;->getBytes()I

    move-result v3

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 180
    .end local v2    # "ch":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    :sswitch_8
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getIndex()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    .line 182
    .local v2, "b":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;->getBytes()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_8
        0x43 -> :sswitch_7
        0x44 -> :sswitch_6
        0x46 -> :sswitch_5
        0x49 -> :sswitch_4
        0x4a -> :sswitch_3
        0x53 -> :sswitch_2
        0x5a -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 148
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->stringifyValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
