.class public Lorg/checkerframework/org/apache/bcel/classfile/ClassElementValue;
.super Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;
.source "ClassElementValue.java"


# instance fields
.field private final idx:I


# direct methods
.method public constructor <init>(IILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "idx"    # I
    .param p3, "cpool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 37
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;-><init>(ILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 38
    iput p2, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassElementValue;->idx:I

    .line 39
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

    .line 64
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 65
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassElementValue;->idx:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 66
    return-void
.end method

.method public getClassString()Ljava/lang/String;
    .locals 3

    .line 48
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassElementValue;->idx:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 50
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIndex()I
    .locals 1

    .line 43
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassElementValue;->idx:I

    return v0
.end method

.method public stringifyValue()Ljava/lang/String;
    .locals 3

    .line 56
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/ElementValue;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/ClassElementValue;->idx:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    .line 58
    .local v0, "cu8":Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
