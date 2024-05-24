.class final enum Lcom/android/dx/io/instructions/InstructionCodec$3;
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

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;ILcom/android/dx/io/instructions/InstructionCodec$1;)V

    return-void
.end method


# virtual methods
.method public decode(ILcom/android/dx/io/instructions/CodeInput;)Lcom/android/dx/io/instructions/DecodedInstruction;
    .locals 14
    .param p1, "opcodeUnit"    # I
    .param p2, "in"    # Lcom/android/dx/io/instructions/CodeInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 68
    invoke-static {p1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$100(I)I

    move-result v10

    .line 69
    .local v10, "opcode":I
    invoke-static {p1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$300(I)I

    move-result v11

    .line 70
    .local v11, "a":I
    invoke-static {p1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$400(I)I

    move-result v12

    .line 71
    .local v12, "b":I
    new-instance v13, Lcom/android/dx/io/instructions/TwoRegisterDecodedInstruction;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, v13

    move-object v1, p0

    move v2, v10

    move v8, v11

    move v9, v12

    invoke-direct/range {v0 .. v9}, Lcom/android/dx/io/instructions/TwoRegisterDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJII)V

    return-object v13
.end method

.method public encode(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V
    .locals 3
    .param p1, "insn"    # Lcom/android/dx/io/instructions/DecodedInstruction;
    .param p2, "out"    # Lcom/android/dx/io/instructions/CodeOutput;

    .line 79
    nop

    .line 80
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getOpcodeUnit()S

    move-result v0

    .line 81
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getA()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getB()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec;->access$500(II)I

    move-result v1

    .line 80
    invoke-static {v0, v1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$600(II)S

    move-result v0

    .line 79
    invoke-interface {p2, v0}, Lcom/android/dx/io/instructions/CodeOutput;->write(S)V

    .line 82
    return-void
.end method
