.class public abstract Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;
.super Lorg/checkerframework/org/apache/bcel/generic/FieldOrMethod;
.source "FieldInstruction.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldOrMethod;-><init>()V

    .line 34
    return-void
.end method

.method protected constructor <init>(SI)V
    .locals 0
    .param p1, "opcode"    # S
    .param p2, "index"    # I

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/FieldOrMethod;-><init>(SI)V

    .line 42
    return-void
.end method


# virtual methods
.method public getFieldName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;
    .locals 1
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 81
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;->getName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFieldSize(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)I
    .locals 1
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 58
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;->getSignature(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getTypeSize(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->size(I)I

    move-result v0

    return v0
.end method

.method public getFieldType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 1
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 74
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;->getSignature(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    return-object v0
.end method

.method public getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 1
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 66
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/FieldInstruction;->getFieldType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/String;
    .locals 3
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldOrMethod;->getOpcode()S

    move-result v1

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/Const;->getOpcodeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldOrMethod;->getIndex()I

    move-result v1

    const/16 v2, 0x9

    invoke-virtual {p1, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(IB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    return-object v0
.end method
