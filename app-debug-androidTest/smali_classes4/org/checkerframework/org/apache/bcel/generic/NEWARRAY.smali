.class public Lorg/checkerframework/org/apache/bcel/generic/NEWARRAY;
.super Lorg/checkerframework/org/apache/bcel/generic/Instruction;
.source "NEWARRAY.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/AllocationInstruction;
.implements Lorg/checkerframework/org/apache/bcel/generic/ExceptionThrower;
.implements Lorg/checkerframework/org/apache/bcel/generic/StackProducer;


# instance fields
.field private type:B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(B)V
    .locals 2
    .param p1, "type"    # B

    .line 48
    const/16 v0, 0xbc

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;-><init>(SS)V

    .line 49
    iput-byte p1, p0, Lorg/checkerframework/org/apache/bcel/generic/NEWARRAY;->type:B

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/BasicType;)V
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    .line 54
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/BasicType;->getType()B

    move-result v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/NEWARRAY;-><init>(B)V

    .line 55
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 122
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitAllocationInstruction(Lorg/checkerframework/org/apache/bcel/generic/AllocationInstruction;)V

    .line 123
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitExceptionThrower(Lorg/checkerframework/org/apache/bcel/generic/ExceptionThrower;)V

    .line 124
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitStackProducer(Lorg/checkerframework/org/apache/bcel/generic/StackProducer;)V

    .line 125
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitNEWARRAY(Lorg/checkerframework/org/apache/bcel/generic/NEWARRAY;)V

    .line 126
    return-void
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getOpcode()S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 65
    iget-byte v0, p0, Lorg/checkerframework/org/apache/bcel/generic/NEWARRAY;->type:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 66
    return-void
.end method

.method public getExceptions()[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 106
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Lorg/checkerframework/org/apache/bcel/ExceptionConst;->NEGATIVE_ARRAY_SIZE_EXCEPTION:Ljava/lang/Class;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public final getType()Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 3

    .line 81
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    iget-byte v1, p0, Lorg/checkerframework/org/apache/bcel/generic/NEWARRAY;->type:B

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/generic/BasicType;->getType(B)Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;-><init>(Lorg/checkerframework/org/apache/bcel/generic/Type;I)V

    return-object v0
.end method

.method public final getTypecode()B
    .locals 1

    .line 73
    iget-byte v0, p0, Lorg/checkerframework/org/apache/bcel/generic/NEWARRAY;->type:B

    return v0
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

    .line 99
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/checkerframework/org/apache/bcel/generic/NEWARRAY;->type:B

    .line 100
    const/4 v0, 0x2

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->setLength(I)V

    .line 101
    return-void
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

    iget-byte v1, p0, Lorg/checkerframework/org/apache/bcel/generic/NEWARRAY;->type:B

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/Const;->getTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
