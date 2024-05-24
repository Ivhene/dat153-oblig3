.class public Lorg/checkerframework/org/apache/bcel/classfile/EnclosingMethod;
.super Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
.source "EnclosingMethod.java"


# instance fields
.field private classIndex:I

.field private methodIndex:I


# direct methods
.method private constructor <init>(IIIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 1
    .param p1, "nameIndex"    # I
    .param p2, "len"    # I
    .param p3, "classIdx"    # I
    .param p4, "methodIdx"    # I
    .param p5, "cpool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 55
    const/16 v0, 0x12

    invoke-direct {p0, v0, p1, p2, p5}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;-><init>(BIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 56
    iput p3, p0, Lorg/checkerframework/org/apache/bcel/classfile/EnclosingMethod;->classIndex:I

    .line 57
    iput p4, p0, Lorg/checkerframework/org/apache/bcel/classfile/EnclosingMethod;->methodIndex:I

    .line 58
    return-void
.end method

.method constructor <init>(IILjava/io/DataInput;Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V
    .locals 6
    .param p1, "nameIndex"    # I
    .param p2, "len"    # I
    .param p3, "input"    # Ljava/io/DataInput;
    .param p4, "cpool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-interface {p3}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    invoke-interface {p3}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/org/apache/bcel/classfile/EnclosingMethod;-><init>(IIIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 52
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/classfile/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/classfile/Visitor;

    .line 62
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/classfile/Visitor;->visitEnclosingMethod(Lorg/checkerframework/org/apache/bcel/classfile/EnclosingMethod;)V

    .line 63
    return-void
.end method

.method public copy(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 1
    .param p1, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 67
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/classfile/EnclosingMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

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

    .line 104
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->dump(Ljava/io/DataOutputStream;)V

    .line 105
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/EnclosingMethod;->classIndex:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 106
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/EnclosingMethod;->methodIndex:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 107
    return-void
.end method

.method public final getEnclosingClass()Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    .locals 3

    .line 88
    nop

    .line 89
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/EnclosingMethod;->classIndex:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    .line 90
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;
    return-object v0
.end method

.method public final getEnclosingClassIndex()I
    .locals 1

    .line 72
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/EnclosingMethod;->classIndex:I

    return v0
.end method

.method public final getEnclosingMethod()Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    .locals 3

    .line 94
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/EnclosingMethod;->methodIndex:I

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_0
    nop

    .line 98
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/classfile/Attribute;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/classfile/EnclosingMethod;->methodIndex:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(IB)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    .line 99
    .local v0, "nat":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    return-object v0
.end method

.method public final getEnclosingMethodIndex()I
    .locals 1

    .line 76
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/classfile/EnclosingMethod;->methodIndex:I

    return v0
.end method

.method public final setEnclosingClassIndex(I)V
    .locals 0
    .param p1, "idx"    # I

    .line 80
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/EnclosingMethod;->classIndex:I

    .line 81
    return-void
.end method

.method public final setEnclosingMethodIndex(I)V
    .locals 0
    .param p1, "idx"    # I

    .line 84
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/classfile/EnclosingMethod;->methodIndex:I

    .line 85
    return-void
.end method
