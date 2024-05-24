.class public Lorg/checkerframework/org/apache/bcel/generic/IINC;
.super Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;
.source "IINC.java"


# instance fields
.field private c:I

.field private wide:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "c"    # I

    .line 51
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;-><init>()V

    .line 52
    const/16 v0, 0x84

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->setOpcode(S)V

    .line 53
    const/4 v0, 0x3

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->setLength(I)V

    .line 54
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/IINC;->setIndex(I)V

    .line 55
    invoke-virtual {p0, p2}, Lorg/checkerframework/org/apache/bcel/generic/IINC;->setIncrement(I)V

    .line 56
    return-void
.end method

.method private setWide()V
    .locals 4

    .line 80
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->getIndex()I

    move-result v0

    const/16 v1, 0xff

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/generic/IINC;->wide:Z

    .line 81
    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/IINC;->c:I

    if-lez v1, :cond_3

    .line 82
    if-nez v0, :cond_2

    const/16 v0, 0x7f

    if-le v1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    iput-boolean v2, p0, Lorg/checkerframework/org/apache/bcel/generic/IINC;->wide:Z

    goto :goto_3

    .line 84
    :cond_3
    if-nez v0, :cond_5

    const/16 v0, -0x80

    if-ge v1, v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :cond_5
    :goto_2
    iput-boolean v2, p0, Lorg/checkerframework/org/apache/bcel/generic/IINC;->wide:Z

    .line 86
    :goto_3
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/generic/IINC;->wide:Z

    if-eqz v0, :cond_6

    .line 87
    const/4 v0, 0x6

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->setLength(I)V

    goto :goto_4

    .line 89
    :cond_6
    const/4 v0, 0x3

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->setLength(I)V

    .line 91
    :goto_4
    return-void
.end method


# virtual methods
.method public accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
    .locals 0
    .param p1, "v"    # Lorg/checkerframework/org/apache/bcel/generic/Visitor;

    .line 169
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitLocalVariableInstruction(Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;)V

    .line 170
    invoke-interface {p1, p0}, Lorg/checkerframework/org/apache/bcel/generic/Visitor;->visitIINC(Lorg/checkerframework/org/apache/bcel/generic/IINC;)V

    .line 171
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

    .line 65
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/generic/IINC;->wide:Z

    if-eqz v0, :cond_0

    .line 66
    const/16 v0, 0xc4

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 68
    :cond_0
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->getOpcode()S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 69
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/generic/IINC;->wide:Z

    if-eqz v0, :cond_1

    .line 70
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 71
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/IINC;->c:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0

    .line 73
    :cond_1
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->getIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 74
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/IINC;->c:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 76
    :goto_0
    return-void
.end method

.method public final getIncrement()I
    .locals 1

    .line 138
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/IINC;->c:I

    return v0
.end method

.method public getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 1
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 155
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

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

    .line 99
    iput-boolean p2, p0, Lorg/checkerframework/org/apache/bcel/generic/IINC;->wide:Z

    .line 100
    if-eqz p2, :cond_0

    .line 101
    const/4 v0, 0x6

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->setLength(I)V

    .line 102
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedShort()I

    move-result v0

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->setIndexOnly(I)V

    .line 103
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readShort()S

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/IINC;->c:I

    goto :goto_0

    .line 105
    :cond_0
    const/4 v0, 0x3

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->setLength(I)V

    .line 106
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedByte()I

    move-result v0

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->setIndexOnly(I)V

    .line 107
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readByte()B

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/IINC;->c:I

    .line 109
    :goto_0
    return-void
.end method

.method public final setIncrement(I)V
    .locals 0
    .param p1, "c"    # I

    .line 146
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/generic/IINC;->c:I

    .line 147
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/IINC;->setWide()V

    .line 148
    return-void
.end method

.method public final setIndex(I)V
    .locals 3
    .param p1, "n"    # I

    .line 126
    if-ltz p1, :cond_0

    .line 129
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->setIndexOnly(I)V

    .line 130
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/IINC;->setWide()V

    .line 131
    return-void

    .line 127
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

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/apache/bcel/generic/IINC;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
