.class final enum Lcom/android/dx/io/instructions/InstructionCodec$16;
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

    .line 348
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dx/io/instructions/InstructionCodec;-><init>(Ljava/lang/String;ILcom/android/dx/io/instructions/InstructionCodec$1;)V

    return-void
.end method


# virtual methods
.method public decode(ILcom/android/dx/io/instructions/CodeInput;)Lcom/android/dx/io/instructions/DecodedInstruction;
    .locals 16
    .param p1, "opcodeUnit"    # I
    .param p2, "in"    # Lcom/android/dx/io/instructions/CodeInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 352
    invoke-interface/range {p2 .. p2}, Lcom/android/dx/io/instructions/CodeInput;->cursor()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 353
    .local v0, "baseAddress":I
    invoke-static/range {p1 .. p1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$100(I)I

    move-result v11

    .line 354
    .local v11, "opcode":I
    invoke-static/range {p1 .. p1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$300(I)I

    move-result v12

    .line 355
    .local v12, "a":I
    invoke-static/range {p1 .. p1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$400(I)I

    move-result v13

    .line 356
    .local v13, "b":I
    invoke-interface/range {p2 .. p2}, Lcom/android/dx/io/instructions/CodeInput;->read()I

    move-result v1

    int-to-short v14, v1

    .line 357
    .local v14, "target":I
    new-instance v15, Lcom/android/dx/io/instructions/TwoRegisterDecodedInstruction;

    const/4 v4, 0x0

    const/4 v5, 0x0

    add-int v6, v0, v14

    const-wide/16 v7, 0x0

    move-object v1, v15

    move-object/from16 v2, p0

    move v3, v11

    move v9, v12

    move v10, v13

    invoke-direct/range {v1 .. v10}, Lcom/android/dx/io/instructions/TwoRegisterDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJII)V

    return-object v15
.end method

.method public encode(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V
    .locals 4
    .param p1, "insn"    # Lcom/android/dx/io/instructions/DecodedInstruction;
    .param p2, "out"    # Lcom/android/dx/io/instructions/CodeOutput;

    .line 365
    invoke-interface {p2}, Lcom/android/dx/io/instructions/CodeOutput;->cursor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getTargetUnit(I)S

    move-result v0

    .line 366
    .local v0, "relativeTarget":S
    nop

    .line 367
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    move-result v1

    .line 368
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getA()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getB()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/dx/io/instructions/InstructionCodec;->access$500(II)I

    move-result v2

    .line 367
    invoke-static {v1, v2}, Lcom/android/dx/io/instructions/InstructionCodec;->access$600(II)S

    move-result v1

    .line 366
    invoke-interface {p2, v1, v0}, Lcom/android/dx/io/instructions/CodeOutput;->write(SS)V

    .line 370
    return-void
.end method
