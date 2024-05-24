.class public abstract Lorg/checkerframework/org/apache/bcel/generic/FieldOrMethod;
.super Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;
.source "FieldOrMethod.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/LoadClass;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;-><init>()V

    .line 43
    return-void
.end method

.method protected constructor <init>(SI)V
    .locals 0
    .param p1, "opcode"    # S
    .param p2, "index"    # I

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;-><init>(SI)V

    .line 51
    return-void
.end method


# virtual methods
.method public getClassName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;
    .locals 5
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    .line 90
    .local v0, "cp":Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;

    .line 91
    .local v1, "cmr":Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;->getClassIndex()I

    move-result v2

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "className":Ljava/lang/String;
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    const-string v3, "java.lang.Object"

    return-object v3

    .line 96
    :cond_0
    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getClassType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    .locals 1
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 107
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/FieldOrMethod;->getClassName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getInstance(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v0

    return-object v0
.end method

.method public getLoadClassType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    .locals 4
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 139
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/FieldOrMethod;->getReferenceType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    move-result-object v0

    .line 140
    .local v0, "rt":Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v1, :cond_0

    .line 141
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    return-object v1

    .line 143
    :cond_0
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not represent an ObjectType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;
    .locals 4
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 68
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    .line 69
    .local v0, "cp":Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;

    .line 70
    .local v1, "cmr":Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;->getNameAndTypeIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    .line 71
    .local v2, "cnat":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getNameIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getReferenceType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    .locals 5
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 120
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    .line 121
    .local v0, "cp":Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;

    .line 122
    .local v1, "cmr":Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;->getClassIndex()I

    move-result v2

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "className":Ljava/lang/String;
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    return-object v3

    .line 126
    :cond_0
    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getInstance(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v3

    return-object v3
.end method

.method public getSignature(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;
    .locals 4
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 58
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    .line 59
    .local v0, "cp":Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;

    .line 60
    .local v1, "cmr":Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;->getNameAndTypeIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;

    .line 61
    .local v2, "cnat":Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantNameAndType;->getSignatureIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;->getBytes()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
