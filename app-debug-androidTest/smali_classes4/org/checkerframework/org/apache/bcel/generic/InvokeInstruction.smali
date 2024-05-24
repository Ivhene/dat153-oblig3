.class public abstract Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;
.super Lorg/checkerframework/org/apache/bcel/generic/FieldOrMethod;
.source "InvokeInstruction.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/ExceptionThrower;
.implements Lorg/checkerframework/org/apache/bcel/generic/StackConsumer;
.implements Lorg/checkerframework/org/apache/bcel/generic/StackProducer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldOrMethod;-><init>()V

    .line 42
    return-void
.end method

.method protected constructor <init>(SI)V
    .locals 0
    .param p1, "opcode"    # S
    .param p2, "index"    # I

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/FieldOrMethod;-><init>(SI)V

    .line 50
    return-void
.end method


# virtual methods
.method public consumeStack(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)I
    .locals 3
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 73
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldOrMethod;->getOpcode()S

    move-result v0

    const/16 v1, 0xb8

    if-eq v0, v1, :cond_1

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldOrMethod;->getOpcode()S

    move-result v0

    const/16 v1, 0xba

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    const/4 v0, 0x1

    .local v0, "sum":I
    goto :goto_1

    .line 74
    .end local v0    # "sum":I
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 79
    .restart local v0    # "sum":I
    :goto_1
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;->getSignature(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "signature":Ljava/lang/String;
    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getArgumentTypesSize(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 81
    return v0
.end method

.method public getArgumentTypes(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)[Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 1
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 137
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;->getSignature(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    return-object v0
.end method

.method public getClassName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;
    .locals 5
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 106
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    .line 107
    .local v0, "cp":Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldOrMethod;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;

    .line 108
    .local v1, "cmr":Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantCP;->getClassIndex()I

    move-result v2

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "className":Ljava/lang/String;
    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getMethodName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;
    .locals 1
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 123
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;->getName(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 1
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 130
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;->getSignature(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getReturnType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    return-object v0
.end method

.method public getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 1
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 116
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;->getReturnType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    return-object v0
.end method

.method public produceStack(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)I
    .locals 2
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 92
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/InvokeInstruction;->getSignature(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "signature":Ljava/lang/String;
    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getReturnTypeSize(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public toString(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/String;
    .locals 6
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 58
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldOrMethod;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 59
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(Lorg/checkerframework/org/apache/bcel/classfile/Constant;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, "tok":Ljava/util/StringTokenizer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/FieldOrMethod;->getOpcode()S

    move-result v3

    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/Const;->getOpcodeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 61
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    return-object v2
.end method
