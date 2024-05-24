.class final enum Lcom/android/dx/io/instructions/InstructionCodec$7;
.super Lcom/android/dx/io/instructions/InstructionCodec;
.source "InstructionCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/io/instructions/InstructionCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;ILcom/android/dx/io/instructions/InstructionCodec$1;)V

    return-void
.end method


# virtual methods
.method public decode(ILcom/android/dx/io/instructions/CodeInput;)Lcom/android/dx/io/instructions/DecodedInstruction;
    .locals 13
    .param p1, "opcodeUnit"    # I
    .param p2, "in"    # Lcom/android/dx/io/instructions/CodeInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 147
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->cursor()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 148
    .local v0, "baseAddress":I
    invoke-static {p1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$100(I)I

    move-result v9

    .line 149
    .local v9, "opcode":I
    invoke-static {p1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$200(I)I

    move-result v10

    .line 150
    .local v10, "literal":I
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    move-result v1

    int-to-short v11, v1

    .line 151
    .local v11, "target":I
    new-instance v12, Lcom/android/dx/io/instructions/ZeroRegisterDecodedInstruction;

    const/4 v4, 0x0

    const/4 v5, 0x0

    add-int v6, v0, v11

    int-to-long v7, v10

    move-object v1, v12

    move-object v2, p0

    move v3, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/dx/io/instructions/ZeroRegisterDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJ)V

    return-object v12
.end method

.method public encode(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V
    .locals 2
    .param p1, "insn"    # Lcom/android/dx/io/instructions/DecodedInstruction;
    .param p2, "out"    # Lcom/android/dx/io/instructions/CodeOutput;

    .line 158
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeOutput;->cursor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getTargetUnit(I)S

    move-result v0

    .line 159
    .local v0, "relativeTarget":S
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getOpcodeUnit()S

    move-result v1

    invoke-interface {p2, v1, v0}, Lcom/android/dx/io/instructions/CodeOutput;->write(SS)V

    .line 160
    return-void
.end method