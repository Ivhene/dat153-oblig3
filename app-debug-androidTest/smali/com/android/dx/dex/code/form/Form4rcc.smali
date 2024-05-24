.class public final Lcom/android/dx/dex/code/form/Form4rcc;
.super Lcom/android/dx/dex/code/InsnFormat;
.source "Form4rcc.java"


# static fields
.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/android/dx/dex/code/form/Form4rcc;

    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form4rcc;-><init>()V

    sput-object v0, Lcom/android/dx/dex/code/form/Form4rcc;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/dx/dex/code/InsnFormat;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public codeSize()I
    .locals 1

    .line 64
    const/4 v0, 0x4

    return v0
.end method

.method public insnArgString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .locals 2
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dx/dex/code/form/Form4rcc;->regRangeString(Lcom/android/dx/rop/code/RegisterSpecList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->cstString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    return-object v0
.end method

.method public insnCommentString(Lcom/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .locals 1
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;
    .param p2, "noteIndices"    # Z

    .line 54
    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->cstComment()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 57
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public isCompatible(Lcom/android/dx/dex/code/DalvInsn;)Z
    .locals 10
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 70
    instance-of v0, p1, Lcom/android/dx/dex/code/MultiCstInsn;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 71
    return v1

    .line 74
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/dx/dex/code/MultiCstInsn;

    .line 75
    .local v0, "mci":Lcom/android/dx/dex/code/MultiCstInsn;
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v2

    .line 76
    .local v2, "methodIdx":I
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v4

    .line 77
    .local v4, "protoIdx":I
    invoke-static {v2}, Lcom/android/dx/dex/code/form/Form4rcc;->unsignedFitsInShort(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v4}, Lcom/android/dx/dex/code/form/Form4rcc;->unsignedFitsInShort(I)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/code/MultiCstInsn;->getConstant(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v5

    .line 82
    .local v5, "methodRef":Lcom/android/dx/rop/cst/Constant;
    instance-of v6, v5, Lcom/android/dx/rop/cst/CstMethodRef;

    if-nez v6, :cond_2

    .line 83
    return v1

    .line 86
    :cond_2
    invoke-virtual {v0, v3}, Lcom/android/dx/dex/code/MultiCstInsn;->getConstant(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v6

    .line 87
    .local v6, "protoRef":Lcom/android/dx/rop/cst/Constant;
    instance-of v7, v6, Lcom/android/dx/rop/cst/CstProtoRef;

    if-nez v7, :cond_3

    .line 88
    return v1

    .line 91
    :cond_3
    invoke-virtual {v0}, Lcom/android/dx/dex/code/MultiCstInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v7

    .line 92
    .local v7, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-virtual {v7}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v8

    .line 93
    .local v8, "sz":I
    if-nez v8, :cond_4

    .line 94
    return v3

    .line 97
    :cond_4
    invoke-virtual {v7}, Lcom/android/dx/rop/code/RegisterSpecList;->getWordCount()I

    move-result v9

    invoke-static {v9}, Lcom/android/dx/dex/code/form/Form4rcc;->unsignedFitsInByte(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 98
    invoke-static {v8}, Lcom/android/dx/dex/code/form/Form4rcc;->unsignedFitsInShort(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 99
    invoke-virtual {v7, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v9

    invoke-static {v9}, Lcom/android/dx/dex/code/form/Form4rcc;->unsignedFitsInShort(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 100
    invoke-static {v7}, Lcom/android/dx/dex/code/form/Form4rcc;->isRegListSequential(Lcom/android/dx/rop/code/RegisterSpecList;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v1, v3

    goto :goto_0

    :cond_5
    nop

    .line 97
    :goto_0
    return v1

    .line 78
    .end local v5    # "methodRef":Lcom/android/dx/rop/cst/Constant;
    .end local v6    # "protoRef":Lcom/android/dx/rop/cst/Constant;
    .end local v7    # "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    .end local v8    # "sz":I
    :cond_6
    :goto_1
    return v1
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 7
    .param p1, "out"    # Lcom/android/dx/util/AnnotatedOutput;
    .param p2, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 106
    move-object v0, p2

    check-cast v0, Lcom/android/dx/dex/code/MultiCstInsn;

    .line 107
    .local v0, "mci":Lcom/android/dx/dex/code/MultiCstInsn;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v2

    int-to-short v2, v2

    .line 108
    .local v2, "regB":S
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v3

    int-to-short v3, v3

    .line 110
    .local v3, "regH":S
    invoke-virtual {p2}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    .line 111
    .local v4, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    const/4 v5, 0x0

    .line 112
    .local v5, "regC":S
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 113
    invoke-virtual {v4, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    int-to-short v5, v1

    .line 115
    :cond_0
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpecList;->getWordCount()I

    move-result v1

    .line 118
    .local v1, "regA":I
    invoke-static {p2, v1}, Lcom/android/dx/dex/code/form/Form4rcc;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S

    move-result v6

    invoke-static {p1, v6, v2, v5, v3}, Lcom/android/dx/dex/code/form/Form4rcc;->write(Lcom/android/dx/util/AnnotatedOutput;SSSS)V

    .line 119
    return-void
.end method
