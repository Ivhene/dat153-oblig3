.class public final Lcom/android/dx/dex/code/form/Form12x;
.super Lcom/android/dx/dex/code/InsnFormat;
.source "Form12x.java"


# static fields
.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/android/dx/dex/code/form/Form12x;

    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form12x;-><init>()V

    sput-object v0, Lcom/android/dx/dex/code/form/Form12x;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/dx/dex/code/InsnFormat;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public codeSize()I
    .locals 1

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public compatibleRegs(Lcom/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .locals 8
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 113
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 114
    .local v0, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    new-instance v1, Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 115
    .local v1, "bits":Ljava/util/BitSet;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    .line 116
    .local v4, "r0":I
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    .line 118
    .local v6, "r1":I
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 138
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 125
    :pswitch_0
    if-eq v4, v6, :cond_0

    .line 126
    invoke-virtual {v1, v3, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 127
    invoke-virtual {v1, v5, v3}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-static {v6}, Lcom/android/dx/dex/code/form/Form12x;->unsignedFitsInNibble(I)Z

    move-result v7

    .line 130
    .local v7, "dstRegComp":Z
    invoke-virtual {v1, v3, v7}, Ljava/util/BitSet;->set(IZ)V

    .line 131
    invoke-virtual {v1, v5, v7}, Ljava/util/BitSet;->set(IZ)V

    .line 134
    .end local v7    # "dstRegComp":Z
    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    invoke-static {v3}, Lcom/android/dx/dex/code/form/Form12x;->unsignedFitsInNibble(I)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 135
    goto :goto_1

    .line 120
    :pswitch_1
    invoke-static {v4}, Lcom/android/dx/dex/code/form/Form12x;->unsignedFitsInNibble(I)Z

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 121
    invoke-static {v6}, Lcom/android/dx/dex/code/form/Form12x;->unsignedFitsInNibble(I)Z

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 122
    nop

    .line 142
    :goto_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public insnArgString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .locals 4
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 46
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 47
    .local v0, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    .line 55
    .local v1, "sz":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    .line 56
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 55
    return-object v2
.end method

.method public insnCommentString(Lcom/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .locals 1
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;
    .param p2, "noteIndices"    # Z

    .line 63
    const-string v0, ""

    return-object v0
.end method

.method public isCompatible(Lcom/android/dx/dex/code/DalvInsn;)Z
    .locals 7
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 75
    instance-of v0, p1, Lcom/android/dx/dex/code/SimpleInsn;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 76
    return v1

    .line 79
    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 83
    .local v0, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 102
    return v1

    .line 94
    :pswitch_0
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 95
    .local v2, "rs1":Lcom/android/dx/rop/code/RegisterSpec;
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 96
    .local v4, "rs2":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 97
    return v1

    .line 85
    .end local v2    # "rs1":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v4    # "rs2":Lcom/android/dx/rop/code/RegisterSpec;
    :pswitch_1
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 86
    .restart local v2    # "rs1":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 87
    .restart local v4    # "rs2":Lcom/android/dx/rop/code/RegisterSpec;
    nop

    .line 106
    :cond_1
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    invoke-static {v5}, Lcom/android/dx/dex/code/form/Form12x;->unsignedFitsInNibble(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 107
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    invoke-static {v5}, Lcom/android/dx/dex/code/form/Form12x;->unsignedFitsInNibble(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    nop

    .line 106
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 4
    .param p1, "out"    # Lcom/android/dx/util/AnnotatedOutput;
    .param p2, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 148
    invoke-virtual {p2}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 149
    .local v0, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    .line 157
    .local v1, "sz":I
    add-int/lit8 v2, v1, -0x2

    .line 158
    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    add-int/lit8 v3, v1, -0x1

    .line 159
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    .line 158
    invoke-static {v2, v3}, Lcom/android/dx/dex/code/form/Form12x;->makeByte(II)I

    move-result v2

    .line 157
    invoke-static {p2, v2}, Lcom/android/dx/dex/code/form/Form12x;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S

    move-result v2

    invoke-static {p1, v2}, Lcom/android/dx/dex/code/form/Form12x;->write(Lcom/android/dx/util/AnnotatedOutput;S)V

    .line 160
    return-void
.end method
