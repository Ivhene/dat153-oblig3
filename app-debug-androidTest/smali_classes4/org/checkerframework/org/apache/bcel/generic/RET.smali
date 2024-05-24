.class public Lorg/checkerframework/org/apache/bcel/generic/RET;
.super Lorg/checkerframework/org/apache/bcel/generic/Instruction;
.source "RET.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/IndexedInstruction;
.implements Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;


# instance fields
.field private index:I

.field private wide:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "index"    # I

    .line 47
    const/16 v0, 0xa9

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;-><init>(SS)V

    .line 48
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/RET;->setIndex(I)V

    .line 49
    return-void
.end method

.method private setWide()V
    .locals 2

    .line 71
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/RET;->index:I

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/generic/RET;->wide:Z

    .line 72
    if-eqz v0, :cond_1

    .line 73
    const/4 v0, 0x4

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->setLength(I)V

    goto :goto_1

    .line 75
    :cond_1
    const/4 v0, 0x2

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->setLength(I)V

    .line 77
    :goto_1
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 145
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitRET(Lorg/checkerframework/org/apache/bcel/generic/RET;)V

    .line 146
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

    .line 58
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/generic/RET;->wide:Z

    if-eqz v0, :cond_0

    .line 59
    const/16 v0, 0xc4

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 61
    :cond_0
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getOpcode()S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 62
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/generic/RET;->wide:Z

    if-eqz v0, :cond_1

    .line 63
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/RET;->index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0

    .line 65
    :cond_1
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/RET;->index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 67
    :goto_0
    return-void
.end method

.method public final getIndex()I
    .locals 1

    .line 101
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/RET;->index:I

    return v0
.end method

.method public getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 1
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 131
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;->NO_TARGET:Lorg/checkerframework/org/apache/bcel/generic/ReturnaddressType;

    return-object v0
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

    .line 85
    iput-boolean p2, p0, Lorg/checkerframework/org/apache/bcel/generic/RET;->wide:Z

    .line 86
    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedShort()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/RET;->index:I

    .line 88
    const/4 v0, 0x4

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->setLength(I)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/RET;->index:I

    .line 91
    const/4 v0, 0x2

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->setLength(I)V

    .line 93
    :goto_0
    return-void
.end method

.method public final setIndex(I)V
    .locals 3
    .param p1, "n"    # I

    .line 110
    if-ltz p1, :cond_0

    .line 113
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/generic/RET;->index:I

    .line 114
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/RET;->setWide()V

    .line 115
    return-void

    .line 111
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

.method public toString(Z)Ljava/lang/String;
    .locals 2
    .param p1, "verbose"    # Z

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/RET;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
