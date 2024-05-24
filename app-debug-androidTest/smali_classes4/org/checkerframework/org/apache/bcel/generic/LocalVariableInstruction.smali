.class public abstract Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;
.super Lorg/checkerframework/org/apache/bcel/generic/Instruction;
.source "LocalVariableInstruction.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/generic/TypedInstruction;
.implements Lorg/checkerframework/org/apache/bcel/generic/IndexedInstruction;


# instance fields
.field private c_tag:S

.field private canon_tag:S

.field protected n:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->n:I

    .line 43
    iput-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->c_tag:S

    .line 44
    iput-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->canon_tag:S

    .line 69
    return-void
.end method

.method constructor <init>(SS)V
    .locals 1
    .param p1, "canon_tag"    # S
    .param p2, "c_tag"    # S

    .line 58
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->n:I

    .line 43
    iput-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->c_tag:S

    .line 44
    iput-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->canon_tag:S

    .line 59
    iput-short p1, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->canon_tag:S

    .line 60
    iput-short p2, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->c_tag:S

    .line 61
    return-void
.end method

.method protected constructor <init>(SSI)V
    .locals 1
    .param p1, "opcode"    # S
    .param p2, "c_tag"    # S
    .param p3, "n"    # I

    .line 78
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;-><init>(SS)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->n:I

    .line 43
    iput-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->c_tag:S

    .line 44
    iput-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->canon_tag:S

    .line 79
    iput-short p2, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->c_tag:S

    .line 80
    iput-short p1, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->canon_tag:S

    .line 81
    invoke-virtual {p0, p3}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->setIndex(I)V

    .line 82
    return-void
.end method

.method private wide()Z
    .locals 2

    .line 48
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->n:I

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->wide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/16 v0, 0xc4

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 94
    :cond_0
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getOpcode()S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 95
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getLength()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 96
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->wide()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->n:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0

    .line 99
    :cond_1
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->n:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 102
    :cond_2
    :goto_0
    return-void
.end method

.method public getCanonicalTag()S
    .locals 1

    .line 192
    iget-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->canon_tag:S

    return v0
.end method

.method public final getIndex()I
    .locals 1

    .line 158
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->n:I

    return v0
.end method

.method public getType(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)Lorg/checkerframework/org/apache/bcel/generic/Type;
    .locals 3
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 206
    iget-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->canon_tag:S

    sparse-switch v0, :sswitch_data_0

    .line 223
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Oops: unknown case in switch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->canon_tag:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :sswitch_0
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->OBJECT:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    return-object v0

    .line 215
    :sswitch_1
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 218
    :sswitch_2
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 212
    :sswitch_3
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 209
    :sswitch_4
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_4
        0x16 -> :sswitch_3
        0x17 -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0x36 -> :sswitch_4
        0x37 -> :sswitch_3
        0x38 -> :sswitch_2
        0x39 -> :sswitch_1
        0x3a -> :sswitch_0
    .end sparse-switch
.end method

.method protected initFromFile(Lorg/checkerframework/org/apache/bcel/util/ByteSequence;Z)V
    .locals 4
    .param p1, "bytes"    # Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    .param p2, "wide"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    const/4 v0, 0x4

    if-eqz p2, :cond_0

    .line 134
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedShort()I

    move-result v1

    iput v1, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->n:I

    .line 135
    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->setLength(I)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getOpcode()S

    move-result v1

    .line 138
    .local v1, "_opcode":S
    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    const/16 v2, 0x19

    if-le v1, v2, :cond_2

    :cond_1
    const/16 v2, 0x36

    if-lt v1, v2, :cond_3

    const/16 v2, 0x3a

    if-gt v1, v2, :cond_3

    .line 140
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->n:I

    .line 141
    const/4 v0, 0x2

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->setLength(I)V

    goto :goto_0

    .line 142
    :cond_3
    const/16 v2, 0x2d

    const/4 v3, 0x1

    if-gt v1, v2, :cond_4

    .line 143
    add-int/lit8 v2, v1, -0x1a

    rem-int/2addr v2, v0

    iput v2, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->n:I

    .line 144
    invoke-super {p0, v3}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->setLength(I)V

    goto :goto_0

    .line 146
    :cond_4
    add-int/lit8 v2, v1, -0x3b

    rem-int/2addr v2, v0

    iput v2, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->n:I

    .line 147
    invoke-super {p0, v3}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->setLength(I)V

    .line 150
    .end local v1    # "_opcode":S
    :goto_0
    return-void
.end method

.method public setIndex(I)V
    .locals 3
    .param p1, "n"    # I

    .line 170
    if-ltz p1, :cond_2

    const v0, 0xffff

    if-gt p1, v0, :cond_2

    .line 173
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->n:I

    .line 175
    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 176
    iget-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->c_tag:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->setOpcode(S)V

    .line 177
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->setLength(I)V

    goto :goto_0

    .line 179
    :cond_0
    iget-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->canon_tag:S

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->setOpcode(S)V

    .line 180
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->wide()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    const/4 v0, 0x4

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->setLength(I)V

    goto :goto_0

    .line 183
    :cond_1
    const/4 v0, 0x2

    invoke-super {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->setLength(I)V

    .line 186
    :goto_0
    return-void

    .line 171
    :cond_2
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final setIndexOnly(I)V
    .locals 0
    .param p1, "n"    # I

    .line 233
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->n:I

    .line 234
    return-void
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 3
    .param p1, "verbose"    # Z

    .line 116
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getOpcode()S

    move-result v0

    .line 117
    .local v0, "_opcode":S
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v1, 0x2d

    if-le v0, v1, :cond_1

    :cond_0
    const/16 v1, 0x3b

    if-lt v0, v1, :cond_2

    const/16 v1, 0x4e

    if-gt v0, v1, :cond_2

    .line 119
    :cond_1
    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->toString(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 121
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
