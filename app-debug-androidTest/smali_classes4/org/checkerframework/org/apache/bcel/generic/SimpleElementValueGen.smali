.class public Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;
.super Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;
.source "SimpleElementValueGen.java"


# instance fields
.field private idx:I


# direct methods
.method protected constructor <init>(IILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "idx"    # I
    .param p3, "cpGen"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 49
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 50
    iput p2, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    .line 51
    return-void
.end method

.method public constructor <init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;B)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "cpGen"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p3, "value"    # B

    .line 85
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 86
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addInteger(I)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    .line 87
    return-void
.end method

.method public constructor <init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;C)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "cpGen"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p3, "value"    # C

    .line 91
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 92
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addInteger(I)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    .line 93
    return-void
.end method

.method public constructor <init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;D)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "cpGen"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p3, "value"    # D

    .line 67
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 68
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addDouble(D)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    .line 69
    return-void
.end method

.method public constructor <init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;F)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "cpGen"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p3, "value"    # F

    .line 73
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 74
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addFloat(F)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    .line 75
    return-void
.end method

.method public constructor <init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;I)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "cpGen"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p3, "value"    # I

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 56
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addInteger(I)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    .line 57
    return-void
.end method

.method public constructor <init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;J)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "cpGen"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p3, "value"    # J

    .line 61
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 62
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addLong(J)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    .line 63
    return-void
.end method

.method public constructor <init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "cpGen"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p3, "value"    # Ljava/lang/String;

    .line 107
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 108
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    .line 109
    return-void
.end method

.method public constructor <init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;S)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "cpGen"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p3, "value"    # S

    .line 79
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 80
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addInteger(I)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    .line 81
    return-void
.end method

.method public constructor <init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "cpGen"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p3, "value"    # Z

    .line 97
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 98
    if-eqz p3, :cond_0

    .line 99
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addInteger(I)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addInteger(I)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    .line 103
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)V
    .locals 3
    .param p1, "value"    # Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;
    .param p2, "cpool"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p3, "copyPoolEntries"    # Z

    .line 119
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getElementValueType()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 120
    if-nez p3, :cond_0

    .line 124
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getIndex()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    goto/16 :goto_0

    .line 128
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getElementValueType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 165
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimpleElementValueGen class does not know how to copy this type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->getElementValueType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :sswitch_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getValueString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    .line 132
    goto :goto_0

    .line 152
    :sswitch_1
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getValueBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addInteger(I)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    goto :goto_0

    .line 158
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addInteger(I)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    .line 160
    goto :goto_0

    .line 162
    :sswitch_2
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getValueShort()S

    move-result v0

    invoke-virtual {p2, v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addInteger(I)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    .line 163
    goto :goto_0

    .line 143
    :sswitch_3
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getValueLong()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addLong(J)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    .line 144
    goto :goto_0

    .line 134
    :sswitch_4
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getValueInt()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addInteger(I)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    .line 135
    goto :goto_0

    .line 146
    :sswitch_5
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getValueFloat()F

    move-result v0

    invoke-virtual {p2, v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addFloat(F)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    .line 147
    goto :goto_0

    .line 149
    :sswitch_6
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getValueDouble()D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addDouble(D)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    .line 150
    goto :goto_0

    .line 140
    :sswitch_7
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getValueChar()C

    move-result v0

    invoke-virtual {p2, v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addInteger(I)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    .line 141
    goto :goto_0

    .line 137
    :sswitch_8
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;->getValueByte()B

    move-result v0

    invoke-virtual {p2, v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addInteger(I)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    .line 138
    nop

    .line 169
    :goto_0
    return-void

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


# virtual methods
.method public dump(Ljava/io/DataOutputStream;)V
    .locals 3
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->getElementValueType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 251
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->getElementValueType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 265
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimpleElementValueGen doesnt know how to write out type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 266
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->getElementValueType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :sswitch_0
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 263
    nop

    .line 268
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

.method public getElementValue()Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
    .locals 4

    .line 177
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->getElementValueType()I

    move-result v1

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/SimpleElementValue;-><init>(IILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 182
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    return v0
.end method

.method public getValueInt()I
    .locals 2

    .line 197
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->getElementValueType()I

    move-result v0

    const/16 v1, 0x49

    if-ne v0, v1, :cond_0

    .line 201
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    .line 202
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;->getBytes()I

    move-result v1

    return v1

    .line 198
    .end local v0    # "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Dont call getValueString() on a non STRING ElementValue"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 2

    .line 187
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->getElementValueType()I

    move-result v0

    const/16 v1, 0x73

    if-ne v0, v1, :cond_0

    .line 191
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 192
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 188
    .end local v0    # "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Dont call getValueString() on a non STRING ElementValue"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stringifyValue()Ljava/lang/String;
    .locals 3

    .line 209
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->getElementValueType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 242
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimpleElementValueGen class does not know how to stringify type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 243
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->getElementValueType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :sswitch_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 240
    .local v0, "cu8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 233
    .end local v0    # "cu8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    :sswitch_1
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    .line 234
    .local v0, "bo":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;->getBytes()I

    move-result v1

    if-nez v1, :cond_0

    .line 235
    const-string v1, "false"

    return-object v1

    .line 237
    :cond_0
    const-string v1, "true"

    return-object v1

    .line 224
    .end local v0    # "bo":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    :sswitch_2
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    .line 225
    .local v0, "s":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;->getBytes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 215
    .end local v0    # "s":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    :sswitch_3
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;

    .line 216
    .local v0, "j":Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;->getBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 212
    .end local v0    # "j":Lorg/checkerframework/org/apache/bcel/classfile/ConstantLong;
    :sswitch_4
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    .line 213
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;->getBytes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 221
    .end local v0    # "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    :sswitch_5
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;

    .line 222
    .local v0, "f":Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;->getBytes()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 218
    .end local v0    # "f":Lorg/checkerframework/org/apache/bcel/classfile/ConstantFloat;
    :sswitch_6
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;

    .line 219
    .local v0, "d":Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;->getBytes()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 230
    .end local v0    # "d":Lorg/checkerframework/org/apache/bcel/classfile/ConstantDouble;
    :sswitch_7
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    .line 231
    .local v0, "ch":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;->getBytes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 227
    .end local v0    # "ch":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    :sswitch_8
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/SimpleElementValueGen;->idx:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;

    .line 228
    .local v0, "b":Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantInteger;->getBytes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

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
