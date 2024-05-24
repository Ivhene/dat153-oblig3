.class public final Lcom/android/dx/dex/code/form/Form45cc;
.super Lcom/android/dx/dex/code/InsnFormat;
.source "Form45cc.java"


# static fields
.field private static final MAX_NUM_OPS:I = 0x5

.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/android/dx/dex/code/form/Form45cc;

    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form45cc;-><init>()V

    sput-object v0, Lcom/android/dx/dex/code/form/Form45cc;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/dx/dex/code/InsnFormat;-><init>()V

    .line 48
    return-void
.end method

.method private static explicitize(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 9
    .param p0, "orig"    # Lcom/android/dx/rop/code/RegisterSpecList;

    .line 197
    invoke-static {p0}, Lcom/android/dx/dex/code/form/Form45cc;->wordCount(Lcom/android/dx/rop/code/RegisterSpecList;)I

    move-result v0

    .line 198
    .local v0, "wordCount":I
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    .line 200
    .local v1, "sz":I
    if-ne v0, v1, :cond_0

    .line 201
    return-object p0

    .line 204
    :cond_0
    new-instance v2, Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v2, v0}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 205
    .local v2, "result":Lcom/android/dx/rop/code/RegisterSpecList;
    const/4 v3, 0x0

    .line 207
    .local v3, "wordAt":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 208
    invoke-virtual {p0, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    .line 209
    .local v5, "one":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v2, v3, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 210
    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 211
    add-int/lit8 v6, v3, 0x1

    .line 212
    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    sget-object v8, Lcom/android/dx/rop/type/Type;->VOID:Lcom/android/dx/rop/type/Type;

    invoke-static {v7, v8}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    .line 211
    invoke-virtual {v2, v6, v7}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 213
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 215
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 207
    .end local v5    # "one":Lcom/android/dx/rop/code/RegisterSpec;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 219
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    .line 220
    return-object v2
.end method

.method private static wordCount(Lcom/android/dx/rop/code/RegisterSpecList;)I
    .locals 8
    .param p0, "regs"    # Lcom/android/dx/rop/code/RegisterSpecList;

    .line 161
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    .line 163
    .local v0, "sz":I
    const/4 v1, -0x1

    const/4 v2, 0x5

    if-le v0, v2, :cond_0

    .line 165
    return v1

    .line 168
    :cond_0
    const/4 v3, 0x0

    .line 170
    .local v3, "result":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 171
    invoke-virtual {p0, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    .line 172
    .local v5, "one":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v6

    add-int/2addr v3, v6

    .line 179
    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Lcom/android/dx/dex/code/form/Form45cc;->unsignedFitsInNibble(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 180
    return v1

    .line 170
    .end local v5    # "one":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 184
    .end local v4    # "i":I
    :cond_2
    if-gt v3, v2, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method


# virtual methods
.method public codeSize()I
    .locals 1

    .line 70
    const/4 v0, 0x4

    return v0
.end method

.method public compatibleRegs(Lcom/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .locals 7
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 108
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 109
    .local v0, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    .line 110
    .local v1, "sz":I
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 112
    .local v2, "bits":Ljava/util/BitSet;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 113
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 120
    .local v4, "reg":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    .line 121
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    .line 120
    invoke-static {v5}, Lcom/android/dx/dex/code/form/Form45cc;->unsignedFitsInNibble(I)Z

    move-result v5

    invoke-virtual {v2, v3, v5}, Ljava/util/BitSet;->set(IZ)V

    .line 112
    .end local v4    # "reg":Lcom/android/dx/rop/code/RegisterSpec;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method

.method public insnArgString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .locals 3
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 53
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form45cc;->explicitize(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 54
    .local v0, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form45cc;->regListString(Lcom/android/dx/rop/code/RegisterSpecList;)Ljava/lang/String;

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

    .line 60
    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->cstComment()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public isCompatible(Lcom/android/dx/dex/code/DalvInsn;)Z
    .locals 9
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 76
    instance-of v0, p1, Lcom/android/dx/dex/code/MultiCstInsn;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 77
    return v1

    .line 80
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/dx/dex/code/MultiCstInsn;

    .line 81
    .local v0, "mci":Lcom/android/dx/dex/code/MultiCstInsn;
    invoke-virtual {v0}, Lcom/android/dx/dex/code/MultiCstInsn;->getNumberOfConstants()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 82
    return v1

    .line 85
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v2

    .line 86
    .local v2, "methodIdx":I
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v4

    .line 87
    .local v4, "protoIdx":I
    invoke-static {v2}, Lcom/android/dx/dex/code/form/Form45cc;->unsignedFitsInShort(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v4}, Lcom/android/dx/dex/code/form/Form45cc;->unsignedFitsInShort(I)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/code/MultiCstInsn;->getConstant(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v5

    .line 92
    .local v5, "methodRef":Lcom/android/dx/rop/cst/Constant;
    instance-of v6, v5, Lcom/android/dx/rop/cst/CstMethodRef;

    if-nez v6, :cond_3

    .line 93
    return v1

    .line 96
    :cond_3
    invoke-virtual {v0, v3}, Lcom/android/dx/dex/code/MultiCstInsn;->getConstant(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v6

    .line 97
    .local v6, "protoRef":Lcom/android/dx/rop/cst/Constant;
    instance-of v7, v6, Lcom/android/dx/rop/cst/CstProtoRef;

    if-nez v7, :cond_4

    .line 98
    return v1

    .line 101
    :cond_4
    invoke-virtual {v0}, Lcom/android/dx/dex/code/MultiCstInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v7

    .line 102
    .local v7, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-static {v7}, Lcom/android/dx/dex/code/form/Form45cc;->wordCount(Lcom/android/dx/rop/code/RegisterSpecList;)I

    move-result v8

    if-ltz v8, :cond_5

    move v1, v3

    :cond_5
    return v1

    .line 88
    .end local v5    # "methodRef":Lcom/android/dx/rop/cst/Constant;
    .end local v6    # "protoRef":Lcom/android/dx/rop/cst/Constant;
    .end local v7    # "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    :cond_6
    :goto_0
    return v1
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 12
    .param p1, "out"    # Lcom/android/dx/util/AnnotatedOutput;
    .param p2, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 130
    move-object v0, p2

    check-cast v0, Lcom/android/dx/dex/code/MultiCstInsn;

    .line 131
    .local v0, "mci":Lcom/android/dx/dex/code/MultiCstInsn;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v2

    int-to-short v2, v2

    .line 132
    .local v2, "regB":S
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/dx/dex/code/MultiCstInsn;->getIndex(I)I

    move-result v4

    int-to-short v4, v4

    .line 134
    .local v4, "regH":S
    invoke-virtual {p2}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v5

    invoke-static {v5}, Lcom/android/dx/dex/code/form/Form45cc;->explicitize(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v5

    .line 135
    .local v5, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v6

    .line 136
    .local v6, "regA":I
    if-lez v6, :cond_0

    invoke-virtual {v5, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v7

    goto :goto_0

    :cond_0
    move v7, v1

    .line 137
    .local v7, "regC":I
    :goto_0
    if-le v6, v3, :cond_1

    invoke-virtual {v5, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    .line 138
    .local v3, "regD":I
    :goto_1
    const/4 v8, 0x2

    if-le v6, v8, :cond_2

    invoke-virtual {v5, v8}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v8

    goto :goto_2

    :cond_2
    move v8, v1

    .line 139
    .local v8, "regE":I
    :goto_2
    const/4 v9, 0x3

    if-le v6, v9, :cond_3

    invoke-virtual {v5, v9}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v9

    goto :goto_3

    :cond_3
    move v9, v1

    .line 140
    .local v9, "regF":I
    :goto_3
    const/4 v10, 0x4

    if-le v6, v10, :cond_4

    invoke-virtual {v5, v10}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    .line 143
    .local v1, "regG":I
    :cond_4
    nop

    .line 144
    invoke-static {v1, v6}, Lcom/android/dx/dex/code/form/Form45cc;->makeByte(II)I

    move-result v10

    invoke-static {p2, v10}, Lcom/android/dx/dex/code/form/Form45cc;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S

    move-result v10

    .line 146
    invoke-static {v7, v3, v8, v9}, Lcom/android/dx/dex/code/form/Form45cc;->codeUnit(IIII)S

    move-result v11

    .line 143
    invoke-static {p1, v10, v2, v11, v4}, Lcom/android/dx/dex/code/form/Form45cc;->write(Lcom/android/dx/util/AnnotatedOutput;SSSS)V

    .line 148
    return-void
.end method
