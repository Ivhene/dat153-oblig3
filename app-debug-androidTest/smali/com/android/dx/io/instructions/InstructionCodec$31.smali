.class final enum Lcom/android/dx/io/instructions/InstructionCodec$31;
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

    .line 646
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

    .line 650
    invoke-static {p1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$100(I)I

    move-result v9

    .line 651
    .local v9, "opcode":I
    invoke-static {p1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$200(I)I

    move-result v10

    .line 652
    .local v10, "a":I
    invoke-interface/range {p2 .. p2}, Lcom/android/dx/io/instructions/CodeInput;->readLong()J

    move-result-wide v11

    .line 653
    .local v11, "literal":J
    new-instance v13, Lcom/android/dx/io/instructions/OneRegisterDecodedInstruction;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v13

    move-object v1, p0

    move v2, v9

    move-wide v6, v11

    move v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/android/dx/io/instructions/OneRegisterDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJI)V

    return-object v13
.end method

.method public encode(Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/CodeOutput;)V
    .locals 10
    .param p1, "insn"    # Lcom/android/dx/io/instructions/DecodedInstruction;
    .param p2, "out"    # Lcom/android/dx/io/instructions/CodeOutput;

    .line 661
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getLiteral()J

    move-result-wide v0

    .line 662
    .local v0, "literal":J
    nop

    .line 663
    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->getA()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/dx/io/instructions/InstructionCodec;->access$600(II)S

    move-result v5

    .line 664
    invoke-static {v0, v1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$1300(J)S

    move-result v6

    .line 665
    invoke-static {v0, v1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$1400(J)S

    move-result v7

    .line 666
    invoke-static {v0, v1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$1500(J)S

    move-result v8

    .line 667
    invoke-static {v0, v1}, Lcom/android/dx/io/instructions/InstructionCodec;->access$1600(J)S

    move-result v9

    .line 662
    move-object v4, p2

    invoke-interface/range {v4 .. v9}, Lcom/android/dx/io/instructions/CodeOutput;->write(SSSSS)V

    .line 668
    return-void
.end method
