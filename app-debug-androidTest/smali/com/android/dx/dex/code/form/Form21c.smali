.class public final Lcom/android/dx/dex/code/form/Form21c;
.super Lcom/android/dx/dex/code/InsnFormat;
.source "Form21c.java"


# static fields
.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/android/dx/dex/code/form/Form21c;

    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form21c;-><init>()V

    sput-object v0, Lcom/android/dx/dex/code/form/Form21c;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/dx/dex/code/InsnFormat;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public codeSize()I
    .locals 1

    .line 69
    const/4 v0, 0x2

    return v0
.end method

.method public compatibleRegs(Lcom/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .locals 8
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 125
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 126
    .local v0, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    .line 127
    .local v1, "sz":I
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 128
    .local v2, "bits":Ljava/util/BitSet;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    invoke-static {v4}, Lcom/android/dx/dex/code/form/Form21c;->unsignedFitsInByte(I)Z

    move-result v4

    .line 130
    .local v4, "compat":Z
    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    .line 131
    invoke-virtual {v2, v3, v4}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    invoke-virtual {v0, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 134
    invoke-virtual {v2, v3, v4}, Ljava/util/BitSet;->set(IZ)V

    .line 135
    invoke-virtual {v2, v5, v4}, Ljava/util/BitSet;->set(IZ)V

    .line 139
    :cond_1
    :goto_0
    return-object v2
.end method

.method public insnArgString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .locals 3
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 52
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 53
    .local v0, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->cstString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public insnCommentString(Lcom/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .locals 1
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;
    .param p2, "noteIndices"    # Z

    .line 59
    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->cstComment()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 62
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public isCompatible(Lcom/android/dx/dex/code/DalvInsn;)Z
    .locals 8
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 75
    instance-of v0, p1, Lcom/android/dx/dex/code/CstInsn;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 76
    return v1

    .line 79
    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 82
    .local v0, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 99
    return v1

    .line 92
    :pswitch_0
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 93
    .local v2, "reg":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 94
    return v1

    .line 84
    .end local v2    # "reg":Lcom/android/dx/rop/code/RegisterSpec;
    :pswitch_1
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 85
    .restart local v2    # "reg":Lcom/android/dx/rop/code/RegisterSpec;
    nop

    .line 103
    :cond_1
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    invoke-static {v4}, Lcom/android/dx/dex/code/form/Form21c;->unsignedFitsInByte(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 104
    return v1

    .line 107
    :cond_2
    move-object v4, p1

    check-cast v4, Lcom/android/dx/dex/code/CstInsn;

    .line 108
    .local v4, "ci":Lcom/android/dx/dex/code/CstInsn;
    invoke-virtual {v4}, Lcom/android/dx/dex/code/CstInsn;->getIndex()I

    move-result v5

    .line 109
    .local v5, "cpi":I
    invoke-virtual {v4}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v6

    .line 111
    .local v6, "cst":Lcom/android/dx/rop/cst/Constant;
    invoke-static {v5}, Lcom/android/dx/dex/code/form/Form21c;->unsignedFitsInShort(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 112
    return v1

    .line 115
    :cond_3
    instance-of v7, v6, Lcom/android/dx/rop/cst/CstType;

    if-nez v7, :cond_4

    instance-of v7, v6, Lcom/android/dx/rop/cst/CstFieldRef;

    if-nez v7, :cond_4

    instance-of v7, v6, Lcom/android/dx/rop/cst/CstString;

    if-nez v7, :cond_4

    instance-of v7, v6, Lcom/android/dx/rop/cst/CstMethodHandle;

    if-nez v7, :cond_4

    instance-of v7, v6, Lcom/android/dx/rop/cst/CstProtoRef;

    if-eqz v7, :cond_5

    :cond_4
    move v1, v3

    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 4
    .param p1, "out"    # Lcom/android/dx/util/AnnotatedOutput;
    .param p2, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 145
    invoke-virtual {p2}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 146
    .local v0, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    move-object v1, p2

    check-cast v1, Lcom/android/dx/dex/code/CstInsn;

    invoke-virtual {v1}, Lcom/android/dx/dex/code/CstInsn;->getIndex()I

    move-result v1

    .line 148
    .local v1, "cpi":I
    nop

    .line 149
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    invoke-static {p2, v2}, Lcom/android/dx/dex/code/form/Form21c;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S

    move-result v2

    int-to-short v3, v1

    .line 148
    invoke-static {p1, v2, v3}, Lcom/android/dx/dex/code/form/Form21c;->write(Lcom/android/dx/util/AnnotatedOutput;SS)V

    .line 151
    return-void
.end method
