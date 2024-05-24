.class public final Lcom/android/dx/dex/code/form/Form32x;
.super Lcom/android/dx/dex/code/InsnFormat;
.source "Form32x.java"


# static fields
.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/android/dx/dex/code/form/Form32x;

    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form32x;-><init>()V

    sput-object v0, Lcom/android/dx/dex/code/form/Form32x;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/dx/dex/code/InsnFormat;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public codeSize()I
    .locals 1

    .line 59
    const/4 v0, 0x3

    return v0
.end method

.method public compatibleRegs(Lcom/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .locals 4
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 75
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 76
    .local v0, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    new-instance v1, Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 78
    .local v1, "bits":Ljava/util/BitSet;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    invoke-static {v3}, Lcom/android/dx/dex/code/form/Form32x;->unsignedFitsInShort(I)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 79
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    invoke-static {v3}, Lcom/android/dx/dex/code/form/Form32x;->unsignedFitsInShort(I)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 80
    return-object v1
.end method

.method public insnArgString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .locals 3
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 45
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 46
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

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->regString()Ljava/lang/String;

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

    .line 53
    const-string v0, ""

    return-object v0
.end method

.method public isCompatible(Lcom/android/dx/dex/code/DalvInsn;)Z
    .locals 4
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 65
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 66
    .local v0, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    instance-of v1, p1, Lcom/android/dx/dex/code/SimpleInsn;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 68
    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-static {v1}, Lcom/android/dx/dex/code/form/Form32x;->unsignedFitsInShort(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    invoke-static {v3}, Lcom/android/dx/dex/code/form/Form32x;->unsignedFitsInShort(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    nop

    .line 66
    :goto_0
    return v2
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 4
    .param p1, "out"    # Lcom/android/dx/util/AnnotatedOutput;
    .param p2, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 86
    invoke-virtual {p2}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 88
    .local v0, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    nop

    .line 89
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/android/dx/dex/code/form/Form32x;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S

    move-result v2

    .line 90
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    int-to-short v1, v1

    .line 91
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    int-to-short v3, v3

    .line 88
    invoke-static {p1, v2, v1, v3}, Lcom/android/dx/dex/code/form/Form32x;->write(Lcom/android/dx/util/AnnotatedOutput;SSS)V

    .line 92
    return-void
.end method