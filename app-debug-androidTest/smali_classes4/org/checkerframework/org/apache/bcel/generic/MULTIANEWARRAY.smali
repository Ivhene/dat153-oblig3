.class public Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;
.super Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;
.source "MULTIANEWARRAY.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/LoadClass;
.implements Lorg/checkerframework/org/apache/bcel/generic/AllocationInstruction;
.implements Lorg/checkerframework/org/apache/bcel/generic/ExceptionThrower;


# instance fields
.field private dimensions:S


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(IS)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "dimensions"    # S

    .line 48
    const/16 v0, 0xc5

    invoke-direct {p0, v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;-><init>(SI)V

    .line 49
    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    .line 52
    iput-short p2, p0, Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;->dimensions:S

    .line 53
    const/4 v0, 0x4

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->setLength(I)V

    .line 54
    return-void

    .line 50
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dimensions value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 145
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitLoadClass(Lorg/checkerframework/org/apache/bcel/generic/LoadClass;)V

    .line 146
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitAllocationInstruction(Lorg/checkerframework/org/apache/bcel/generic/AllocationInstruction;)V

    .line 147
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitExceptionThrower(Lorg/checkerframework/org/apache/bcel/generic/ExceptionThrower;)V

    .line 148
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitTypedInstruction(Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;)V

    .line 149
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitCPInstruction(Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;)V

    .line 150
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitMULTIANEWARRAY(Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;)V

    .line 151
    return-void
.end method

.method public consumeStack(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)I
    .locals 1
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 113
    iget-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;->dimensions:S

    return v0
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->getOpcode()S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 64
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 65
    iget-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;->dimensions:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 66
    return-void
.end method

.method public final getDimensions()S
    .locals 1

    .line 84
    iget-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;->dimensions:S

    return v0
.end method

.method public getExceptions()[Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 119
    sget-object v0, Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;->EXCS_CLASS_AND_INTERFACE_RESOLUTION:Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Lorg/checkerframework/org/apache/bcel/ExceptionConst;->ILLEGAL_ACCESS_ERROR:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lorg/checkerframework/org/apache/bcel/ExceptionConst;->NEGATIVE_ARRAY_SIZE_EXCEPTION:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lorg/checkerframework/org/apache/bcel/ExceptionConst;->createExceptions(Lorg/checkerframework/org/apache/bcel/ExceptionConst$EXCS;[Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getLoadClassType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    .locals 2
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 127
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;->getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 128
    .local v0, "t":Lorg/checkerframework/org/apache/bcel/generic/Type;
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    if-eqz v1, :cond_0

    .line 129
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getBasicType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v0

    .line 131
    :cond_0
    instance-of v1, v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
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

    .line 74
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->initFromFile(Lorg/checkerframework/org/apache/bcel/util/ByteSequence;Z)V

    .line 75
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readByte()B

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;->dimensions:S

    .line 76
    const/4 v0, 0x4

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->setLength(I)V

    .line 77
    return-void
.end method

.method public toString(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/String;
    .locals 2
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->toString(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;->dimensions:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 3
    .param p1, "verbose"    # Z

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/CPInstruction;->getIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;->dimensions:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
