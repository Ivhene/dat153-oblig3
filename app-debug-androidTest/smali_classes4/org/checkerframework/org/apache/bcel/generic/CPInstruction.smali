.class public abstract Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;
.super Lorg/checkerframework/org/apache/bcel/generic/Instruction;
.source "CPInstruction.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;
.implements Lorg/checkerframework/org/apache/bcel/generic/IndexedInstruction;


# instance fields
.field protected index:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;-><init>()V

    .line 56
    return-void
.end method

.method protected constructor <init>(SI)V
    .locals 1
    .param p1, "opcode"    # S
    .param p2, "index"    # I

    .line 63
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;-><init>(SS)V

    .line 64
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->setIndex(I)V

    .line 65
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getOpcode()S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 75
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 76
    return-void
.end method

.method public final getIndex()I
    .locals 1

    .line 125
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->index:I

    return v0
.end method

.method public getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 4
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 147
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    .line 148
    .local v0, "cp":Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->index:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "name":Ljava/lang/String;
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    :cond_0
    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    return-object v2
.end method

.method protected initFromFile(Lorg/checkerframework/org/apache/bcel/util/ByteSequence;Z)V
    .locals 1
    .param p1, "bytes"    # Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    .param p2, "wide"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedShort()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->setIndex(I)V

    .line 116
    const/4 v0, 0x3

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->setLength(I)V

    .line 117
    return-void
.end method

.method public setIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .line 135
    if-ltz p1, :cond_0

    .line 138
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->index:I

    .line 139
    return-void

    .line 136
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative index value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/String;
    .locals 4
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 99
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->index:I

    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstant(I)Lorg/checkerframework/org/apache/bcel/classfile/Constant;

    move-result-object v0

    .line 100
    .local v0, "c":Lorg/checkerframework/org/apache/bcel/classfile/Constant;
    invoke-virtual {p1, v0}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->constantToString(Lorg/checkerframework/org/apache/bcel/classfile/Constant;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "str":Ljava/lang/String;
    instance-of v2, v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantClass;

    if-eqz v2, :cond_0

    .line 102
    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 104
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getOpcode()S

    move-result v3

    invoke-static {v3}, Lorg/checkerframework/org/apache/bcel/Const;->getOpcodeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 2
    .param p1, "verbose"    # Z

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
