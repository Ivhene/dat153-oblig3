.class public abstract Lorg/checkerframework/org/apache/bcel/generic/NameSignatureInstruction;
.super Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;
.source "NameSignatureInstruction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(SI)V
    .locals 0
    .param p1, "opcode"    # S
    .param p2, "index"    # I

    .line 39
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;-><init>(SI)V

    .line 40
    return-void
.end method


# virtual methods
.method public getName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;
    .locals 3
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 58
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    .line 59
    .local v0, "cp":Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/NameSignatureInstruction;->getNameAndType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    move-result-object v1

    .line 60
    .local v1, "cnat":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getNameIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getNameAndType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    .locals 3
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 43
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    .line 44
    .local v0, "cp":Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;

    .line 45
    .local v1, "cmr":Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;->getNameAndTypeIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    return-object v2
.end method

.method public getSignature(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;
    .locals 3
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 50
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    .line 51
    .local v0, "cp":Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/NameSignatureInstruction;->getNameAndType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    move-result-object v1

    .line 52
    .local v1, "cnat":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getSignatureIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
