.class public final Lcom/android/dx/dex/code/form/Form3rc;
.super Lcom/android/dx/dex/code/InsnFormat;
.source "Form3rc.java"


# static fields
.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/android/dx/dex/code/form/Form3rc;

    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form3rc;-><init>()V

    sput-object v0, Lcom/android/dx/dex/code/form/Form3rc;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/dx/dex/code/InsnFormat;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public codeSize()I
    .locals 1

    .line 65
    const/4 v0, 0x3

    return v0
.end method

.method public insnArgString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .locals 2
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dx/dex/code/form/Form3rc;->regRangeString(Lcom/android/dx/rop/code/RegisterSpecList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->cstString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    return-object v0
.end method

.method public insnCommentString(Lcom/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .locals 1
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;
    .param p2, "noteIndices"    # Z

    .line 55
    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->cstComment()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 58
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public isCompatible(Lcom/android/dx/dex/code/DalvInsn;)Z
    .locals 7
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 71
    instance-of v0, p1, Lcom/android/dx/dex/code/CstInsn;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 72
    return v1

    .line 75
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/dx/dex/code/CstInsn;

    .line 76
    .local v0, "ci":Lcom/android/dx/dex/code/CstInsn;
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CstInsn;->getIndex()I

    move-result v2

    .line 77
    .local v2, "cpi":I
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v3

    .line 79
    .local v3, "cst":Lcom/android/dx/rop/cst/Constant;
    invoke-static {v2}, Lcom/android/dx/dex/code/form/Form3rc;->unsignedFitsInShort(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 80
    return v1

    .line 83
    :cond_1
    instance-of v4, v3, Lcom/android/dx/rop/cst/CstMethodRef;

    if-nez v4, :cond_2

    instance-of v4, v3, Lcom/android/dx/rop/cst/CstType;

    if-nez v4, :cond_2

    instance-of v4, v3, Lcom/android/dx/rop/cst/CstCallSiteRef;

    if-nez v4, :cond_2

    .line 86
    return v1

    .line 89
    :cond_2
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CstInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    .line 90
    .local v4, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v5

    .line 92
    .local v5, "sz":I
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v6

    if-eqz v6, :cond_4

    .line 93
    invoke-static {v4}, Lcom/android/dx/dex/code/form/Form3rc;->isRegListSequential(Lcom/android/dx/rop/code/RegisterSpecList;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 94
    invoke-virtual {v4, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    invoke-static {v6}, Lcom/android/dx/dex/code/form/Form3rc;->unsignedFitsInShort(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 95
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpecList;->getWordCount()I

    move-result v6

    invoke-static {v6}, Lcom/android/dx/dex/code/form/Form3rc;->unsignedFitsInByte(I)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    .line 92
    :goto_1
    return v1
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 7
    .param p1, "out"    # Lcom/android/dx/util/AnnotatedOutput;
    .param p2, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 101
    invoke-virtual {p2}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 102
    .local v0, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    move-object v1, p2

    check-cast v1, Lcom/android/dx/dex/code/CstInsn;

    invoke-virtual {v1}, Lcom/android/dx/dex/code/CstInsn;->getIndex()I

    move-result v1

    .line 103
    .local v1, "cpi":I
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    :goto_0
    move v2, v3

    .line 104
    .local v2, "firstReg":I
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->getWordCount()I

    move-result v3

    .line 106
    .local v3, "count":I
    invoke-static {p2, v3}, Lcom/android/dx/dex/code/form/Form3rc;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S

    move-result v4

    int-to-short v5, v1

    int-to-short v6, v2

    invoke-static {p1, v4, v5, v6}, Lcom/android/dx/dex/code/form/Form3rc;->write(Lcom/android/dx/util/AnnotatedOutput;SSS)V

    .line 107
    return-void
.end method
