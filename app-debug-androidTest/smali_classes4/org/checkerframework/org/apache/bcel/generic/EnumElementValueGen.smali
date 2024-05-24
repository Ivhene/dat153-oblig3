.class public Lorg/checkerframework/org/apache/bcel/generic/EnumElementValueGen;
.super Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;
.source "EnumElementValueGen.java"


# instance fields
.field private typeIdx:I

.field private valueIdx:I


# direct methods
.method protected constructor <init>(IILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 3
    .param p1, "typeIdx"    # I
    .param p2, "valueIdx"    # I
    .param p3, "cpool"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 45
    const/16 v0, 0x65

    invoke-direct {p0, v0, p3}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 46
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->getElementValueType()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 50
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/generic/EnumElementValueGen;->typeIdx:I

    .line 51
    iput p2, p0, Lorg/checkerframework/org/apache/bcel/generic/EnumElementValueGen;->valueIdx:I

    .line 52
    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only element values of type enum can be built with this ctor - type specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 48
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->getElementValueType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/EnumElementValue;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)V
    .locals 1
    .param p1, "value"    # Lorg/checkerframework/org/apache/bcel/classfile/EnumElementValue;
    .param p2, "cpool"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p3, "copyPoolEntries"    # Z

    .line 76
    const/16 v0, 0x65

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 77
    if-eqz p3, :cond_0

    .line 79
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/EnumElementValue;->getEnumTypeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/EnumElementValueGen;->typeIdx:I

    .line 81
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/EnumElementValue;->getEnumValueString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/EnumElementValueGen;->valueIdx:I

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/EnumElementValue;->getTypeIndex()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/EnumElementValueGen;->typeIdx:I

    .line 87
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/EnumElementValue;->getValueIndex()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/EnumElementValueGen;->valueIdx:I

    .line 89
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/ObjectType;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 1
    .param p1, "t"    # Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "cpool"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 68
    const/16 v0, 0x65

    invoke-direct {p0, v0, p3}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 69
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/EnumElementValueGen;->typeIdx:I

    .line 70
    invoke-virtual {p3, p2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/EnumElementValueGen;->valueIdx:I

    .line 71
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->getElementValueType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 95
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/EnumElementValueGen;->typeIdx:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 96
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/EnumElementValueGen;->valueIdx:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 97
    return-void
.end method

.method public getElementValue()Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
    .locals 5

    .line 60
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicating value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/EnumElementValueGen;->getEnumTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 61
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/EnumElementValueGen;->getEnumValueString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/EnumElementValue;

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->getElementValueType()I

    move-result v1

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/generic/EnumElementValueGen;->typeIdx:I

    iget v3, p0, Lorg/checkerframework/org/apache/bcel/generic/EnumElementValueGen;->valueIdx:I

    .line 63
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/EnumElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/checkerframework/org/apache/bcel/classfile/EnumElementValue;-><init>(IIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 62
    return-object v0
.end method

.method public getEnumTypeString()Ljava/lang/String;
    .locals 2

    .line 119
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/EnumElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/EnumElementValueGen;->typeIdx:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 120
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v0

    .line 119
    return-object v0
.end method

.method public getEnumValueString()Ljava/lang/String;
    .locals 2

    .line 126
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/EnumElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/EnumElementValueGen;->valueIdx:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeIndex()I
    .locals 1

    .line 140
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/EnumElementValueGen;->typeIdx:I

    return v0
.end method

.method public getValueIndex()I
    .locals 1

    .line 135
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/EnumElementValueGen;->valueIdx:I

    return v0
.end method

.method public stringifyValue()Ljava/lang/String;
    .locals 2

    .line 102
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/EnumElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/EnumElementValueGen;->valueIdx:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 103
    .local v0, "cu8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
