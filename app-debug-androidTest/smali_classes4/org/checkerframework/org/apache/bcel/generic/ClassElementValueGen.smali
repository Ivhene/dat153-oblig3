.class public Lorg/checkerframework/org/apache/bcel/generic/ClassElementValueGen;
.super Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;
.source "ClassElementValueGen.java"


# instance fields
.field private idx:I


# direct methods
.method protected constructor <init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 1
    .param p1, "typeIdx"    # I
    .param p2, "cpool"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 39
    const/16 v0, 0x63

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 40
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassElementValueGen;->idx:I

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/ClassElementValue;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)V
    .locals 1
    .param p1, "value"    # Lorg/checkerframework/org/apache/bcel/classfile/ClassElementValue;
    .param p2, "cpool"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .param p3, "copyPoolEntries"    # Z

    .line 64
    const/16 v0, 0x63

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 65
    if-eqz p3, :cond_0

    .line 68
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ClassElementValue;->getClassString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassElementValueGen;->idx:I

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/ClassElementValue;->getIndex()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassElementValueGen;->idx:I

    .line 74
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/ObjectType;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 1
    .param p1, "t"    # Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    .param p2, "cpool"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 45
    const/16 v0, 0x63

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 47
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassElementValueGen;->idx:I

    .line 48
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

    .line 100
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->getElementValueType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 101
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassElementValueGen;->idx:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 102
    return-void
.end method

.method public getClassString()Ljava/lang/String;
    .locals 2

    .line 83
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/ClassElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassElementValueGen;->idx:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 84
    .local v0, "cu8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getElementValue()Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
    .locals 4

    .line 56
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/ClassElementValue;

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/ElementValueGen;->getElementValueType()I

    move-result v1

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassElementValueGen;->idx:I

    .line 58
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/ClassElementValueGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ClassElementValue;-><init>(IILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 56
    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 78
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassElementValueGen;->idx:I

    return v0
.end method

.method public stringifyValue()Ljava/lang/String;
    .locals 1

    .line 94
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/ClassElementValueGen;->getClassString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
