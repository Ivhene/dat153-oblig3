.class public final Lcom/android/dx/dex/code/form/Form35c;
.super Lcom/android/dx/dex/code/InsnFormat;
.source "Form35c.java"


# static fields
.field private static final MAX_NUM_OPS:I = 0x5

.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/android/dx/dex/code/form/Form35c;

    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form35c;-><init>()V

    sput-object v0, Lcom/android/dx/dex/code/form/Form35c;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/dx/dex/code/InsnFormat;-><init>()V

    .line 49
    return-void
.end method

.method private static explicitize(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 9
    .param p0, "orig"    # Lcom/android/dx/rop/code/RegisterSpecList;

    .line 187
    invoke-static {p0}, Lcom/android/dx/dex/code/form/Form35c;->wordCount(Lcom/android/dx/rop/code/RegisterSpecList;)I

    move-result v0

    .line 188
    .local v0, "wordCount":I
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    .line 190
    .local v1, "sz":I
    if-ne v0, v1, :cond_0

    .line 191
    return-object p0

    .line 194
    :cond_0
    new-instance v2, Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v2, v0}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 195
    .local v2, "result":Lcom/android/dx/rop/code/RegisterSpecList;
    const/4 v3, 0x0

    .line 197
    .local v3, "wordAt":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 198
    invoke-virtual {p0, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    .line 199
    .local v5, "one":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v2, v3, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 200
    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 201
    add-int/lit8 v6, v3, 0x1

    .line 202
    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    sget-object v8, Lcom/android/dx/rop/type/Type;->VOID:Lcom/android/dx/rop/type/Type;

    invoke-static {v7, v8}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    .line 201
    invoke-virtual {v2, v6, v7}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 203
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 205
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 197
    .end local v5    # "one":Lcom/android/dx/rop/code/RegisterSpec;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 209
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    .line 210
    return-object v2
.end method

.method private static wordCount(Lcom/android/dx/rop/code/RegisterSpecList;)I
    .locals 8
    .param p0, "regs"    # Lcom/android/dx/rop/code/RegisterSpecList;

    .line 151
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    .line 153
    .local v0, "sz":I
    const/4 v1, -0x1

    const/4 v2, 0x5

    if-le v0, v2, :cond_0

    .line 155
    return v1

    .line 158
    :cond_0
    const/4 v3, 0x0

    .line 160
    .local v3, "result":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 161
    invoke-virtual {p0, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    .line 162
    .local v5, "one":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v6

    add-int/2addr v3, v6

    .line 169
    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Lcom/android/dx/dex/code/form/Form35c;->unsignedFitsInNibble(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 170
    return v1

    .line 160
    .end local v5    # "one":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 174
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

    .line 71
    const/4 v0, 0x3

    return v0
.end method

.method public compatibleRegs(Lcom/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;
    .locals 7
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 102
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 103
    .local v0, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    .line 104
    .local v1, "sz":I
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 106
    .local v2, "bits":Ljava/util/BitSet;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 107
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 114
    .local v4, "reg":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    .line 115
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    .line 114
    invoke-static {v5}, Lcom/android/dx/dex/code/form/Form35c;->unsignedFitsInNibble(I)Z

    move-result v5

    invoke-virtual {v2, v3, v5}, Ljava/util/BitSet;->set(IZ)V

    .line 106
    .end local v4    # "reg":Lcom/android/dx/rop/code/RegisterSpec;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method

.method public insnArgString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .locals 3
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 54
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form35c;->explicitize(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 55
    .local v0, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form35c;->regListString(Lcom/android/dx/rop/code/RegisterSpecList;)Ljava/lang/String;

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

    .line 61
    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->cstComment()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public isCompatible(Lcom/android/dx/dex/code/DalvInsn;)Z
    .locals 6
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 77
    instance-of v0, p1, Lcom/android/dx/dex/code/CstInsn;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 78
    return v1

    .line 81
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/dx/dex/code/CstInsn;

    .line 82
    .local v0, "ci":Lcom/android/dx/dex/code/CstInsn;
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CstInsn;->getIndex()I

    move-result v2

    .line 84
    .local v2, "cpi":I
    invoke-static {v2}, Lcom/android/dx/dex/code/form/Form35c;->unsignedFitsInShort(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 85
    return v1

    .line 88
    :cond_1
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v3

    .line 89
    .local v3, "cst":Lcom/android/dx/rop/cst/Constant;
    instance-of v4, v3, Lcom/android/dx/rop/cst/CstMethodRef;

    if-nez v4, :cond_2

    instance-of v4, v3, Lcom/android/dx/rop/cst/CstType;

    if-nez v4, :cond_2

    instance-of v4, v3, Lcom/android/dx/rop/cst/CstCallSiteRef;

    if-nez v4, :cond_2

    .line 92
    return v1

    .line 95
    :cond_2
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CstInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    .line 96
    .local v4, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-static {v4}, Lcom/android/dx/dex/code/form/Form35c;->wordCount(Lcom/android/dx/rop/code/RegisterSpecList;)I

    move-result v5

    if-ltz v5, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 11
    .param p1, "out"    # Lcom/android/dx/util/AnnotatedOutput;
    .param p2, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 124
    move-object v0, p2

    check-cast v0, Lcom/android/dx/dex/code/CstInsn;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/CstInsn;->getIndex()I

    move-result v0

    .line 125
    .local v0, "cpi":I
    invoke-virtual {p2}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dx/dex/code/form/Form35c;->explicitize(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v1

    .line 126
    .local v1, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v2

    .line 127
    .local v2, "sz":I
    const/4 v3, 0x0

    if-lez v2, :cond_0

    invoke-virtual {v1, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    .line 128
    .local v4, "r0":I
    :goto_0
    const/4 v5, 0x1

    if-le v2, v5, :cond_1

    invoke-virtual {v1, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v3

    .line 129
    .local v5, "r1":I
    :goto_1
    const/4 v6, 0x2

    if-le v2, v6, :cond_2

    invoke-virtual {v1, v6}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v3

    .line 130
    .local v6, "r2":I
    :goto_2
    const/4 v7, 0x3

    if-le v2, v7, :cond_3

    invoke-virtual {v1, v7}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v7

    goto :goto_3

    :cond_3
    move v7, v3

    .line 131
    .local v7, "r3":I
    :goto_3
    const/4 v8, 0x4

    if-le v2, v8, :cond_4

    invoke-virtual {v1, v8}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    .line 133
    .local v3, "r4":I
    :cond_4
    nop

    .line 135
    invoke-static {v3, v2}, Lcom/android/dx/dex/code/form/Form35c;->makeByte(II)I

    move-result v8

    .line 134
    invoke-static {p2, v8}, Lcom/android/dx/dex/code/form/Form35c;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S

    move-result v8

    int-to-short v9, v0

    .line 137
    invoke-static {v4, v5, v6, v7}, Lcom/android/dx/dex/code/form/Form35c;->codeUnit(IIII)S

    move-result v10

    .line 133
    invoke-static {p1, v8, v9, v10}, Lcom/android/dx/dex/code/form/Form35c;->write(Lcom/android/dx/util/AnnotatedOutput;SSS)V

    .line 138
    return-void
.end method
