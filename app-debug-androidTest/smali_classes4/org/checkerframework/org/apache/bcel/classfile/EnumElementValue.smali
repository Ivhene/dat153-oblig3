.class public Lorg/checkerframework/org/apache/bcel/classfile/EnumElementValue;
.super Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
.source "EnumElementValue.java"


# instance fields
.field private final typeIdx:I

.field private final valueIdx:I


# direct methods
.method public constructor <init>(IIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "typeIdx"    # I
    .param p3, "valueIdx"    # I
    .param p4, "cpool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 38
    invoke-direct {p0, p1, p4}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;-><init>(ILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 39
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 43
    iput p2, p0, Lorg/checkerframework/org/apache/bcel/classfile/EnumElementValue;->typeIdx:I

    .line 44
    iput p3, p0, Lorg/checkerframework/org/apache/bcel/classfile/EnumElementValue;->valueIdx:I

    .line 45
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only element values of type enum can be built with this ctor - type specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 50
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 51
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/EnumElementValue;->typeIdx:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 52
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/EnumElementValue;->valueIdx:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 53
    return-void
.end method

.method public getEnumTypeString()Ljava/lang/String;
    .locals 3

    .line 65
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/EnumElementValue;->typeIdx:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 67
    .local v0, "cu8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getEnumValueString()Ljava/lang/String;
    .locals 3

    .line 72
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/EnumElementValue;->valueIdx:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 74
    .local v0, "cu8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTypeIndex()I
    .locals 1

    .line 84
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/EnumElementValue;->typeIdx:I

    return v0
.end method

.method public getValueIndex()I
    .locals 1

    .line 79
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/EnumElementValue;->valueIdx:I

    return v0
.end method

.method public stringifyValue()Ljava/lang/String;
    .locals 3

    .line 58
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/EnumElementValue;->valueIdx:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 60
    .local v0, "cu8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
