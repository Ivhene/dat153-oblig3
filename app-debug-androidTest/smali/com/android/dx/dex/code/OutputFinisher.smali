.class public final Lcom/android/dx/dex/code/OutputFinisher;
.super Ljava/lang/Object;
.source "OutputFinisher.java"


# instance fields
.field private final dexOptions:Lcom/android/dx/dex/DexOptions;

.field private hasAnyLocalInfo:Z

.field private hasAnyPositionInfo:Z

.field private insns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/dex/code/DalvInsn;",
            ">;"
        }
    .end annotation
.end field

.field private final paramSize:I

.field private reservedCount:I

.field private reservedParameterCount:I

.field private final unreservedRegCount:I


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/DexOptions;III)V
    .locals 1
    .param p1, "dexOptions"    # Lcom/android/dx/dex/DexOptions;
    .param p2, "initialCapacity"    # I
    .param p3, "regCount"    # I
    .param p4, "paramSize"    # I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/dx/dex/code/OutputFinisher;->dexOptions:Lcom/android/dx/dex/DexOptions;

    .line 90
    iput p3, p0, Lcom/android/dx/dex/code/OutputFinisher;->unreservedRegCount:I

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyPositionInfo:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyLocalInfo:Z

    .line 95
    iput p4, p0, Lcom/android/dx/dex/code/OutputFinisher;->paramSize:I

    .line 96
    return-void
.end method

.method private static addConstants(Ljava/util/HashSet;Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 4
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/android/dx/rop/cst/Constant;",
            ">;",
            "Lcom/android/dx/dex/code/DalvInsn;",
            ")V"
        }
    .end annotation

    .line 183
    .local p0, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/dx/rop/cst/Constant;>;"
    instance-of v0, p1, Lcom/android/dx/dex/code/CstInsn;

    if-eqz v0, :cond_0

    .line 184
    move-object v0, p1

    check-cast v0, Lcom/android/dx/dex/code/CstInsn;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v0

    .line 185
    .local v0, "cst":Lcom/android/dx/rop/cst/Constant;
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 186
    .end local v0    # "cst":Lcom/android/dx/rop/cst/Constant;
    goto :goto_3

    :cond_0
    instance-of v0, p1, Lcom/android/dx/dex/code/MultiCstInsn;

    if-eqz v0, :cond_2

    .line 187
    move-object v0, p1

    check-cast v0, Lcom/android/dx/dex/code/MultiCstInsn;

    .line 188
    .local v0, "m":Lcom/android/dx/dex/code/MultiCstInsn;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/android/dx/dex/code/MultiCstInsn;->getNumberOfConstants()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 189
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/code/MultiCstInsn;->getConstant(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "m":Lcom/android/dx/dex/code/MultiCstInsn;
    .end local v1    # "i":I
    :cond_1
    goto :goto_3

    :cond_2
    instance-of v0, p1, Lcom/android/dx/dex/code/LocalSnapshot;

    if-eqz v0, :cond_4

    .line 192
    move-object v0, p1

    check-cast v0, Lcom/android/dx/dex/code/LocalSnapshot;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalSnapshot;->getLocals()Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v0

    .line 193
    .local v0, "specs":Lcom/android/dx/rop/code/RegisterSpecSet;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->size()I

    move-result v1

    .line 194
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 195
    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/dx/dex/code/OutputFinisher;->addConstants(Ljava/util/HashSet;Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "specs":Lcom/android/dx/rop/code/RegisterSpecSet;
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_3
    goto :goto_2

    .line 197
    :cond_4
    instance-of v0, p1, Lcom/android/dx/dex/code/LocalStart;

    if-eqz v0, :cond_5

    .line 198
    move-object v0, p1

    check-cast v0, Lcom/android/dx/dex/code/LocalStart;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalStart;->getLocal()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 199
    .local v0, "spec":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-static {p0, v0}, Lcom/android/dx/dex/code/OutputFinisher;->addConstants(Ljava/util/HashSet;Lcom/android/dx/rop/code/RegisterSpec;)V

    goto :goto_3

    .line 197
    .end local v0    # "spec":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_5
    :goto_2
    nop

    .line 201
    :goto_3
    return-void
.end method

.method private static addConstants(Ljava/util/HashSet;Lcom/android/dx/rop/code/RegisterSpec;)V
    .locals 5
    .param p1, "spec"    # Lcom/android/dx/rop/code/RegisterSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/android/dx/rop/cst/Constant;",
            ">;",
            "Lcom/android/dx/rop/code/RegisterSpec;",
            ")V"
        }
    .end annotation

    .line 212
    .local p0, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/dx/rop/cst/Constant;>;"
    if-nez p1, :cond_0

    .line 213
    return-void

    .line 216
    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v0

    .line 217
    .local v0, "local":Lcom/android/dx/rop/code/LocalItem;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/LocalItem;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v1

    .line 218
    .local v1, "name":Lcom/android/dx/rop/cst/CstString;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/LocalItem;->getSignature()Lcom/android/dx/rop/cst/CstString;

    move-result-object v2

    .line 219
    .local v2, "signature":Lcom/android/dx/rop/cst/CstString;
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v3

    .line 221
    .local v3, "type":Lcom/android/dx/rop/type/Type;
    sget-object v4, Lcom/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/android/dx/rop/type/Type;

    if-eq v3, v4, :cond_1

    .line 222
    invoke-static {v3}, Lcom/android/dx/rop/cst/CstType;->intern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstType;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    :cond_1
    sget-object v4, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    invoke-static {v4}, Lcom/android/dx/rop/cst/CstType;->intern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstType;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 229
    :goto_0
    if-eqz v1, :cond_2

    .line 230
    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_2
    if-eqz v2, :cond_3

    .line 234
    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_3
    return-void
.end method

.method private addReservedParameters(I)V
    .locals 1
    .param p1, "delta"    # I

    .line 893
    invoke-direct {p0, p1}, Lcom/android/dx/dex/code/OutputFinisher;->shiftParameters(I)V

    .line 894
    iget v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedParameterCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedParameterCount:I

    .line 895
    return-void
.end method

.method private addReservedRegisters(I)V
    .locals 1
    .param p1, "delta"    # I

    .line 898
    invoke-direct {p0, p1}, Lcom/android/dx/dex/code/OutputFinisher;->shiftAllRegisters(I)V

    .line 899
    iget v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    .line 900
    return-void
.end method

.method private align64bits([Lcom/android/dx/dex/code/Dop;)V
    .locals 14
    .param p1, "opcodes"    # [Lcom/android/dx/dex/code/Dop;

    .line 837
    nop

    :goto_0
    const/4 v0, 0x0

    .line 838
    .local v0, "notAligned64bitRegAccess":I
    const/4 v1, 0x0

    .line 839
    .local v1, "aligned64bitRegAccess":I
    const/4 v2, 0x0

    .line 840
    .local v2, "notAligned64bitParamAccess":I
    const/4 v3, 0x0

    .line 841
    .local v3, "aligned64bitParamAccess":I
    iget v4, p0, Lcom/android/dx/dex/code/OutputFinisher;->unreservedRegCount:I

    iget v5, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedParameterCount:I

    add-int/2addr v4, v5

    .line 842
    .local v4, "lastParameter":I
    iget v5, p0, Lcom/android/dx/dex/code/OutputFinisher;->paramSize:I

    sub-int v5, v4, v5

    .line 845
    .local v5, "firstParameter":I
    iget-object v6, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/dx/dex/code/DalvInsn;

    .line 846
    .local v7, "insn":Lcom/android/dx/dex/code/DalvInsn;
    invoke-virtual {v7}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v9

    .line 847
    .local v9, "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    const/4 v10, 0x0

    .local v10, "usedRegIdx":I
    :goto_2
    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v11

    if-ge v10, v11, :cond_5

    .line 848
    invoke-virtual {v9, v10}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v11

    .line 849
    .local v11, "reg":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v11}, Lcom/android/dx/rop/code/RegisterSpec;->isCategory2()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 850
    invoke-virtual {v11}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v12

    if-lt v12, v5, :cond_0

    move v12, v8

    goto :goto_3

    :cond_0
    const/4 v12, 0x0

    .line 851
    .local v12, "isParameter":Z
    :goto_3
    invoke-virtual {v11}, Lcom/android/dx/rop/code/RegisterSpec;->isEvenRegister()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 852
    if-eqz v12, :cond_1

    .line 853
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 855
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 858
    :cond_2
    if-eqz v12, :cond_3

    .line 859
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 861
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 847
    .end local v11    # "reg":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v12    # "isParameter":Z
    :cond_4
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 866
    .end local v7    # "insn":Lcom/android/dx/dex/code/DalvInsn;
    .end local v9    # "regs":Lcom/android/dx/rop/code/RegisterSpecList;
    .end local v10    # "usedRegIdx":I
    :cond_5
    goto :goto_1

    .line 868
    :cond_6
    if-le v2, v3, :cond_7

    if-le v0, v1, :cond_7

    .line 870
    invoke-direct {p0, v8}, Lcom/android/dx/dex/code/OutputFinisher;->addReservedRegisters(I)V

    goto :goto_5

    .line 871
    :cond_7
    if-le v2, v3, :cond_8

    .line 872
    invoke-direct {p0, v8}, Lcom/android/dx/dex/code/OutputFinisher;->addReservedParameters(I)V

    goto :goto_5

    .line 873
    :cond_8
    if-le v0, v1, :cond_b

    .line 874
    invoke-direct {p0, v8}, Lcom/android/dx/dex/code/OutputFinisher;->addReservedRegisters(I)V

    .line 879
    iget v6, p0, Lcom/android/dx/dex/code/OutputFinisher;->paramSize:I

    if-eqz v6, :cond_9

    if-le v3, v2, :cond_9

    .line 880
    invoke-direct {p0, v8}, Lcom/android/dx/dex/code/OutputFinisher;->addReservedParameters(I)V

    .line 886
    :cond_9
    :goto_5
    invoke-direct {p0, p1}, Lcom/android/dx/dex/code/OutputFinisher;->reserveRegisters([Lcom/android/dx/dex/code/Dop;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 887
    goto :goto_6

    .line 889
    .end local v0    # "notAligned64bitRegAccess":I
    .end local v1    # "aligned64bitRegAccess":I
    .end local v2    # "notAligned64bitParamAccess":I
    .end local v3    # "aligned64bitParamAccess":I
    .end local v4    # "lastParameter":I
    .end local v5    # "firstParameter":I
    :cond_a
    goto :goto_0

    .line 890
    :cond_b
    :goto_6
    return-void
.end method

.method private assignAddresses()V
    .locals 5

    .line 740
    const/4 v0, 0x0

    .line 741
    .local v0, "address":I
    iget-object v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 743
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 744
    iget-object v3, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/dex/code/DalvInsn;

    .line 745
    .local v3, "insn":Lcom/android/dx/dex/code/DalvInsn;
    invoke-virtual {v3, v0}, Lcom/android/dx/dex/code/DalvInsn;->setAddress(I)V

    .line 746
    invoke-virtual {v3}, Lcom/android/dx/dex/code/DalvInsn;->codeSize()I

    move-result v4

    add-int/2addr v0, v4

    .line 743
    .end local v3    # "insn":Lcom/android/dx/dex/code/DalvInsn;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 748
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private assignAddressesAndFixBranches()V
    .locals 1

    .line 728
    nop

    :cond_0
    invoke-direct {p0}, Lcom/android/dx/dex/code/OutputFinisher;->assignAddresses()V

    .line 729
    invoke-direct {p0}, Lcom/android/dx/dex/code/OutputFinisher;->fixBranches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 730
    nop

    .line 733
    return-void
.end method

.method private static assignIndices(Lcom/android/dx/dex/code/CstInsn;Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V
    .locals 4
    .param p0, "insn"    # Lcom/android/dx/dex/code/CstInsn;
    .param p1, "callback"    # Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;

    .line 339
    invoke-virtual {p0}, Lcom/android/dx/dex/code/CstInsn;->getConstant()Lcom/android/dx/rop/cst/Constant;

    move-result-object v0

    .line 340
    .local v0, "cst":Lcom/android/dx/rop/cst/Constant;
    invoke-interface {p1, v0}, Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;->getIndex(Lcom/android/dx/rop/cst/Constant;)I

    move-result v1

    .line 342
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 343
    invoke-virtual {p0, v1}, Lcom/android/dx/dex/code/CstInsn;->setIndex(I)V

    .line 346
    :cond_0
    instance-of v2, v0, Lcom/android/dx/rop/cst/CstMemberRef;

    if-eqz v2, :cond_1

    .line 347
    move-object v2, v0

    check-cast v2, Lcom/android/dx/rop/cst/CstMemberRef;

    .line 348
    .local v2, "member":Lcom/android/dx/rop/cst/CstMemberRef;
    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstMemberRef;->getDefiningClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v3

    .line 349
    .local v3, "definer":Lcom/android/dx/rop/cst/CstType;
    invoke-interface {p1, v3}, Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;->getIndex(Lcom/android/dx/rop/cst/Constant;)I

    move-result v1

    .line 351
    if-ltz v1, :cond_1

    .line 352
    invoke-virtual {p0, v1}, Lcom/android/dx/dex/code/CstInsn;->setClassIndex(I)V

    .line 355
    .end local v2    # "member":Lcom/android/dx/rop/cst/CstMemberRef;
    .end local v3    # "definer":Lcom/android/dx/rop/cst/CstType;
    :cond_1
    return-void
.end method

.method private static assignIndices(Lcom/android/dx/dex/code/MultiCstInsn;Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V
    .locals 5
    .param p0, "insn"    # Lcom/android/dx/dex/code/MultiCstInsn;
    .param p1, "callback"    # Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;

    .line 365
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/dx/dex/code/MultiCstInsn;->getNumberOfConstants()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 366
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/MultiCstInsn;->getConstant(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v1

    .line 367
    .local v1, "cst":Lcom/android/dx/rop/cst/Constant;
    invoke-interface {p1, v1}, Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;->getIndex(Lcom/android/dx/rop/cst/Constant;)I

    move-result v2

    .line 368
    .local v2, "index":I
    invoke-virtual {p0, v0, v2}, Lcom/android/dx/dex/code/MultiCstInsn;->setIndex(II)V

    .line 370
    instance-of v3, v1, Lcom/android/dx/rop/cst/CstMemberRef;

    if-eqz v3, :cond_0

    .line 371
    move-object v3, v1

    check-cast v3, Lcom/android/dx/rop/cst/CstMemberRef;

    .line 372
    .local v3, "member":Lcom/android/dx/rop/cst/CstMemberRef;
    invoke-virtual {v3}, Lcom/android/dx/rop/cst/CstMemberRef;->getDefiningClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v4

    .line 373
    .local v4, "definer":Lcom/android/dx/rop/cst/CstType;
    invoke-interface {p1, v4}, Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;->getIndex(Lcom/android/dx/rop/cst/Constant;)I

    move-result v2

    .line 374
    invoke-virtual {p0, v2}, Lcom/android/dx/dex/code/MultiCstInsn;->setClassIndex(I)V

    .line 365
    .end local v1    # "cst":Lcom/android/dx/rop/cst/Constant;
    .end local v2    # "index":I
    .end local v3    # "member":Lcom/android/dx/rop/cst/CstMemberRef;
    .end local v4    # "definer":Lcom/android/dx/rop/cst/CstType;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private calculateReservedCount([Lcom/android/dx/dex/code/Dop;)I
    .locals 9
    .param p1, "opcodes"    # [Lcom/android/dx/dex/code/Dop;

    .line 503
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 511
    .local v0, "size":I
    iget v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    .line 513
    .local v1, "newReservedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 514
    iget-object v3, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/dex/code/DalvInsn;

    .line 515
    .local v3, "insn":Lcom/android/dx/dex/code/DalvInsn;
    aget-object v4, p1, v2

    .line 516
    .local v4, "originalOpcode":Lcom/android/dx/dex/code/Dop;
    invoke-direct {p0, v3, v4}, Lcom/android/dx/dex/code/OutputFinisher;->findOpcodeForInsn(Lcom/android/dx/dex/code/DalvInsn;Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/Dop;

    move-result-object v5

    .line 518
    .local v5, "newOpcode":Lcom/android/dx/dex/code/Dop;
    if-nez v5, :cond_0

    .line 523
    invoke-direct {p0, v3}, Lcom/android/dx/dex/code/OutputFinisher;->findExpandedOpcodeForInsn(Lcom/android/dx/dex/code/DalvInsn;)Lcom/android/dx/dex/code/Dop;

    move-result-object v6

    .line 524
    .local v6, "expandedOp":Lcom/android/dx/dex/code/Dop;
    invoke-virtual {v6}, Lcom/android/dx/dex/code/Dop;->getFormat()Lcom/android/dx/dex/code/InsnFormat;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/dx/dex/code/InsnFormat;->compatibleRegs(Lcom/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;

    move-result-object v7

    .line 525
    .local v7, "compatRegs":Ljava/util/BitSet;
    invoke-virtual {v3, v7}, Lcom/android/dx/dex/code/DalvInsn;->getMinimumRegisterRequirement(Ljava/util/BitSet;)I

    move-result v8

    .line 526
    .local v8, "reserve":I
    if-le v8, v1, :cond_1

    .line 527
    move v1, v8

    goto :goto_1

    .line 529
    .end local v6    # "expandedOp":Lcom/android/dx/dex/code/Dop;
    .end local v7    # "compatRegs":Ljava/util/BitSet;
    .end local v8    # "reserve":I
    :cond_0
    if-ne v4, v5, :cond_1

    .line 530
    goto :goto_2

    .line 529
    :cond_1
    :goto_1
    nop

    .line 533
    aput-object v5, p1, v2

    .line 513
    .end local v3    # "insn":Lcom/android/dx/dex/code/DalvInsn;
    .end local v4    # "originalOpcode":Lcom/android/dx/dex/code/Dop;
    .end local v5    # "newOpcode":Lcom/android/dx/dex/code/Dop;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 536
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method private findExpandedOpcodeForInsn(Lcom/android/dx/dex/code/DalvInsn;)Lcom/android/dx/dex/code/Dop;
    .locals 4
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 587
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getLowRegVersion()Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/code/OutputFinisher;->findOpcodeForInsn(Lcom/android/dx/dex/code/DalvInsn;Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/Dop;

    move-result-object v0

    .line 588
    .local v0, "result":Lcom/android/dx/dex/code/Dop;
    if-eqz v0, :cond_0

    .line 591
    return-object v0

    .line 589
    :cond_0
    new-instance v1, Lcom/android/dex/DexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No expanded opcode for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/dex/DexException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private findOpcodeForInsn(Lcom/android/dx/dex/code/DalvInsn;Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/Dop;
    .locals 2
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;
    .param p2, "guess"    # Lcom/android/dx/dex/code/Dop;

    .line 561
    nop

    :goto_0
    if-eqz p2, :cond_1

    .line 562
    invoke-virtual {p2}, Lcom/android/dx/dex/code/Dop;->getFormat()Lcom/android/dx/dex/code/InsnFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/code/InsnFormat;->isCompatible(Lcom/android/dx/dex/code/DalvInsn;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->dexOptions:Lcom/android/dx/dex/DexOptions;

    iget-boolean v0, v0, Lcom/android/dx/dex/DexOptions;->forceJumbo:Z

    if-eqz v0, :cond_1

    .line 568
    invoke-virtual {p2}, Lcom/android/dx/dex/code/Dop;->getOpcode()I

    move-result v0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    .line 569
    goto :goto_1

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->dexOptions:Lcom/android/dx/dex/DexOptions;

    invoke-static {p2, v0}, Lcom/android/dx/dex/code/Dops;->getNextOrNull(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/dex/DexOptions;)Lcom/android/dx/dex/code/Dop;

    move-result-object p2

    goto :goto_0

    .line 576
    :cond_1
    :goto_1
    return-object p2
.end method

.method private fixBranches()Z
    .locals 12

    .line 762
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 763
    .local v0, "size":I
    const/4 v1, 0x0

    .line 765
    .local v1, "anyFixed":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 766
    iget-object v3, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/dex/code/DalvInsn;

    .line 767
    .local v3, "insn":Lcom/android/dx/dex/code/DalvInsn;
    instance-of v4, v3, Lcom/android/dx/dex/code/TargetInsn;

    if-nez v4, :cond_0

    .line 769
    goto :goto_2

    .line 772
    :cond_0
    invoke-virtual {v3}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v4

    .line 773
    .local v4, "opcode":Lcom/android/dx/dex/code/Dop;
    move-object v5, v3

    check-cast v5, Lcom/android/dx/dex/code/TargetInsn;

    .line 775
    .local v5, "target":Lcom/android/dx/dex/code/TargetInsn;
    invoke-virtual {v4}, Lcom/android/dx/dex/code/Dop;->getFormat()Lcom/android/dx/dex/code/InsnFormat;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/dx/dex/code/InsnFormat;->branchFits(Lcom/android/dx/dex/code/TargetInsn;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 776
    goto :goto_2

    .line 779
    :cond_1
    invoke-virtual {v4}, Lcom/android/dx/dex/code/Dop;->getFamily()I

    move-result v6

    const/16 v7, 0x28

    if-ne v6, v7, :cond_3

    .line 781
    invoke-direct {p0, v3, v4}, Lcom/android/dx/dex/code/OutputFinisher;->findOpcodeForInsn(Lcom/android/dx/dex/code/DalvInsn;Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/Dop;

    move-result-object v4

    .line 782
    if-eqz v4, :cond_2

    .line 790
    iget-object v6, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/dx/dex/code/DalvInsn;->withOpcode(Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 788
    :cond_2
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string v7, "method too long"

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 811
    :cond_3
    :try_start_0
    iget-object v6, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/dx/dex/code/CodeAddress;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    .local v6, "newTarget":Lcom/android/dx/dex/code/CodeAddress;
    nop

    .line 820
    new-instance v7, Lcom/android/dx/dex/code/TargetInsn;

    sget-object v8, Lcom/android/dx/dex/code/Dops;->GOTO:Lcom/android/dx/dex/code/Dop;

    .line 821
    invoke-virtual {v5}, Lcom/android/dx/dex/code/TargetInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v9

    sget-object v10, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    .line 822
    invoke-virtual {v5}, Lcom/android/dx/dex/code/TargetInsn;->getTarget()Lcom/android/dx/dex/code/CodeAddress;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/dx/dex/code/TargetInsn;-><init>(Lcom/android/dx/dex/code/Dop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/dex/code/CodeAddress;)V

    .line 823
    .local v7, "gotoInsn":Lcom/android/dx/dex/code/TargetInsn;
    iget-object v8, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v8, v2, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 824
    iget-object v8, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/android/dx/dex/code/TargetInsn;->withNewTargetAndReversed(Lcom/android/dx/dex/code/CodeAddress;)Lcom/android/dx/dex/code/TargetInsn;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 825
    add-int/lit8 v0, v0, 0x1

    .line 826
    add-int/lit8 v2, v2, 0x1

    .line 829
    .end local v6    # "newTarget":Lcom/android/dx/dex/code/CodeAddress;
    .end local v7    # "gotoInsn":Lcom/android/dx/dex/code/TargetInsn;
    :goto_1
    const/4 v1, 0x1

    .line 765
    .end local v3    # "insn":Lcom/android/dx/dex/code/DalvInsn;
    .end local v4    # "opcode":Lcom/android/dx/dex/code/Dop;
    .end local v5    # "target":Lcom/android/dx/dex/code/TargetInsn;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 816
    .restart local v3    # "insn":Lcom/android/dx/dex/code/DalvInsn;
    .restart local v4    # "opcode":Lcom/android/dx/dex/code/Dop;
    .restart local v5    # "target":Lcom/android/dx/dex/code/TargetInsn;
    :catch_0
    move-exception v6

    .line 818
    .local v6, "ex":Ljava/lang/ClassCastException;
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "unpaired TargetInsn"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 812
    .end local v6    # "ex":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v6

    .line 814
    .local v6, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "unpaired TargetInsn (dangling)"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 832
    .end local v2    # "i":I
    .end local v3    # "insn":Lcom/android/dx/dex/code/DalvInsn;
    .end local v4    # "opcode":Lcom/android/dx/dex/code/Dop;
    .end local v5    # "target":Lcom/android/dx/dex/code/TargetInsn;
    .end local v6    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    return v1
.end method

.method private static hasLocalInfo(Lcom/android/dx/dex/code/DalvInsn;)Z
    .locals 5
    .param p0, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 127
    instance-of v0, p0, Lcom/android/dx/dex/code/LocalSnapshot;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 128
    move-object v0, p0

    check-cast v0, Lcom/android/dx/dex/code/LocalSnapshot;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalSnapshot;->getLocals()Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v0

    .line 129
    .local v0, "specs":Lcom/android/dx/rop/code/RegisterSpecSet;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->size()I

    move-result v2

    .line 130
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 131
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-static {v4}, Lcom/android/dx/dex/code/OutputFinisher;->hasLocalInfo(Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    return v1

    .line 130
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "specs":Lcom/android/dx/rop/code/RegisterSpecSet;
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_1
    goto :goto_1

    .line 135
    :cond_2
    instance-of v0, p0, Lcom/android/dx/dex/code/LocalStart;

    if-eqz v0, :cond_3

    .line 136
    move-object v0, p0

    check-cast v0, Lcom/android/dx/dex/code/LocalStart;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalStart;->getLocal()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 137
    .local v0, "spec":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-static {v0}, Lcom/android/dx/dex/code/OutputFinisher;->hasLocalInfo(Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 138
    return v1

    .line 135
    .end local v0    # "spec":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_3
    :goto_1
    nop

    .line 142
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private static hasLocalInfo(Lcom/android/dx/rop/code/RegisterSpec;)Z
    .locals 1
    .param p0, "spec"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 154
    if-eqz p0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/LocalItem;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 154
    :goto_0
    return v0
.end method

.method private makeOpcodesArray()[Lcom/android/dx/dex/code/Dop;
    .locals 5

    .line 424
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 425
    .local v0, "size":I
    new-array v1, v0, [Lcom/android/dx/dex/code/Dop;

    .line 427
    .local v1, "result":[Lcom/android/dx/dex/code/Dop;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 428
    iget-object v3, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/dex/code/DalvInsn;

    .line 429
    .local v3, "insn":Lcom/android/dx/dex/code/DalvInsn;
    invoke-virtual {v3}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v4

    aput-object v4, v1, v2

    .line 427
    .end local v3    # "insn":Lcom/android/dx/dex/code/DalvInsn;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 432
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private massageInstructions([Lcom/android/dx/dex/code/Dop;)V
    .locals 7
    .param p1, "opcodes"    # [Lcom/android/dx/dex/code/Dop;

    .line 617
    iget v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    if-nez v0, :cond_2

    .line 625
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 627
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 628
    iget-object v2, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/dex/code/DalvInsn;

    .line 629
    .local v2, "insn":Lcom/android/dx/dex/code/DalvInsn;
    invoke-virtual {v2}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v3

    .line 630
    .local v3, "originalOpcode":Lcom/android/dx/dex/code/Dop;
    aget-object v4, p1, v1

    .line 632
    .local v4, "currentOpcode":Lcom/android/dx/dex/code/Dop;
    if-eq v3, v4, :cond_0

    .line 633
    iget-object v5, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Lcom/android/dx/dex/code/DalvInsn;->withOpcode(Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 627
    .end local v2    # "insn":Lcom/android/dx/dex/code/DalvInsn;
    .end local v3    # "originalOpcode":Lcom/android/dx/dex/code/Dop;
    .end local v4    # "currentOpcode":Lcom/android/dx/dex/code/Dop;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 636
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_1
    goto :goto_1

    .line 641
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/dx/dex/code/OutputFinisher;->performExpansion([Lcom/android/dx/dex/code/Dop;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    .line 643
    :goto_1
    return-void
.end method

.method private performExpansion([Lcom/android/dx/dex/code/Dop;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "opcodes"    # [Lcom/android/dx/dex/code/Dop;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/dx/dex/code/Dop;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/dex/code/DalvInsn;",
            ">;"
        }
    .end annotation

    .line 657
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 658
    .local v0, "size":I
    new-instance v1, Ljava/util/ArrayList;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 660
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/dex/code/DalvInsn;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 662
    .local v2, "closelyBoundAddresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/dex/code/CodeAddress;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_7

    .line 663
    iget-object v4, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dx/dex/code/DalvInsn;

    .line 664
    .local v4, "insn":Lcom/android/dx/dex/code/DalvInsn;
    invoke-virtual {v4}, Lcom/android/dx/dex/code/DalvInsn;->getOpcode()Lcom/android/dx/dex/code/Dop;

    move-result-object v5

    .line 665
    .local v5, "originalOpcode":Lcom/android/dx/dex/code/Dop;
    aget-object v6, p1, v3

    .line 669
    .local v6, "currentOpcode":Lcom/android/dx/dex/code/Dop;
    if-eqz v6, :cond_0

    .line 671
    const/4 v7, 0x0

    .line 672
    .local v7, "prefix":Lcom/android/dx/dex/code/DalvInsn;
    const/4 v8, 0x0

    .local v8, "suffix":Lcom/android/dx/dex/code/DalvInsn;
    goto :goto_1

    .line 675
    .end local v7    # "prefix":Lcom/android/dx/dex/code/DalvInsn;
    .end local v8    # "suffix":Lcom/android/dx/dex/code/DalvInsn;
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/dx/dex/code/OutputFinisher;->findExpandedOpcodeForInsn(Lcom/android/dx/dex/code/DalvInsn;)Lcom/android/dx/dex/code/Dop;

    move-result-object v6

    .line 676
    nop

    .line 677
    invoke-virtual {v6}, Lcom/android/dx/dex/code/Dop;->getFormat()Lcom/android/dx/dex/code/InsnFormat;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/dx/dex/code/InsnFormat;->compatibleRegs(Lcom/android/dx/dex/code/DalvInsn;)Ljava/util/BitSet;

    move-result-object v7

    .line 678
    .local v7, "compatRegs":Ljava/util/BitSet;
    invoke-virtual {v4, v7}, Lcom/android/dx/dex/code/DalvInsn;->expandedPrefix(Ljava/util/BitSet;)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v8

    .line 679
    .local v8, "prefix":Lcom/android/dx/dex/code/DalvInsn;
    invoke-virtual {v4, v7}, Lcom/android/dx/dex/code/DalvInsn;->expandedSuffix(Ljava/util/BitSet;)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v9

    .line 682
    .local v9, "suffix":Lcom/android/dx/dex/code/DalvInsn;
    invoke-virtual {v4, v7}, Lcom/android/dx/dex/code/DalvInsn;->expandedVersion(Ljava/util/BitSet;)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v4

    move-object v7, v8

    move-object v8, v9

    .line 685
    .end local v9    # "suffix":Lcom/android/dx/dex/code/DalvInsn;
    .local v7, "prefix":Lcom/android/dx/dex/code/DalvInsn;
    .local v8, "suffix":Lcom/android/dx/dex/code/DalvInsn;
    :goto_1
    instance-of v9, v4, Lcom/android/dx/dex/code/CodeAddress;

    if-eqz v9, :cond_1

    .line 689
    move-object v9, v4

    check-cast v9, Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {v9}, Lcom/android/dx/dex/code/CodeAddress;->getBindsClosely()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 690
    move-object v9, v4

    check-cast v9, Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    goto :goto_3

    .line 695
    :cond_1
    if-eqz v7, :cond_2

    .line 696
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    :cond_2
    instance-of v9, v4, Lcom/android/dx/dex/code/ZeroSizeInsn;

    if-nez v9, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 701
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/dx/dex/code/CodeAddress;

    .line 702
    .local v10, "codeAddress":Lcom/android/dx/dex/code/CodeAddress;
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    .end local v10    # "codeAddress":Lcom/android/dx/dex/code/CodeAddress;
    goto :goto_2

    .line 704
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 707
    :cond_4
    if-eq v6, v5, :cond_5

    .line 708
    invoke-virtual {v4, v6}, Lcom/android/dx/dex/code/DalvInsn;->withOpcode(Lcom/android/dx/dex/code/Dop;)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v4

    .line 710
    :cond_5
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    if-eqz v8, :cond_6

    .line 713
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    .end local v4    # "insn":Lcom/android/dx/dex/code/DalvInsn;
    .end local v5    # "originalOpcode":Lcom/android/dx/dex/code/Dop;
    .end local v6    # "currentOpcode":Lcom/android/dx/dex/code/Dop;
    .end local v7    # "prefix":Lcom/android/dx/dex/code/DalvInsn;
    .end local v8    # "suffix":Lcom/android/dx/dex/code/DalvInsn;
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 717
    .end local v3    # "i":I
    :cond_7
    return-object v1
.end method

.method private reserveRegisters([Lcom/android/dx/dex/code/Dop;)Z
    .locals 9
    .param p1, "opcodes"    # [Lcom/android/dx/dex/code/Dop;

    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, "reservedCountExpanded":Z
    iget v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 455
    .local v1, "oldReservedCount":I
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/dx/dex/code/OutputFinisher;->calculateReservedCount([Lcom/android/dx/dex/code/Dop;)I

    move-result v2

    .line 456
    .local v2, "newReservedCount":I
    if-lt v1, v2, :cond_1

    .line 457
    nop

    .line 486
    .end local v2    # "newReservedCount":I
    iput v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    .line 488
    return v0

    .line 460
    .restart local v2    # "newReservedCount":I
    :cond_1
    const/4 v0, 0x1

    .line 462
    sub-int v3, v2, v1

    .line 463
    .local v3, "reservedDifference":I
    iget-object v4, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 465
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_3

    .line 473
    iget-object v6, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/dx/dex/code/DalvInsn;

    .line 474
    .local v6, "insn":Lcom/android/dx/dex/code/DalvInsn;
    instance-of v7, v6, Lcom/android/dx/dex/code/CodeAddress;

    if-nez v7, :cond_2

    .line 479
    iget-object v7, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Lcom/android/dx/dex/code/DalvInsn;->withRegisterOffset(I)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 465
    .end local v6    # "insn":Lcom/android/dx/dex/code/DalvInsn;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 483
    .end local v5    # "i":I
    :cond_3
    move v1, v2

    .line 484
    .end local v2    # "newReservedCount":I
    .end local v3    # "reservedDifference":I
    .end local v4    # "size":I
    goto :goto_0
.end method

.method private shiftAllRegisters(I)V
    .locals 5
    .param p1, "delta"    # I

    .line 903
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 905
    .local v0, "insnSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 906
    iget-object v2, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/dex/code/DalvInsn;

    .line 909
    .local v2, "insn":Lcom/android/dx/dex/code/DalvInsn;
    instance-of v3, v2, Lcom/android/dx/dex/code/CodeAddress;

    if-nez v3, :cond_0

    .line 910
    iget-object v3, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Lcom/android/dx/dex/code/DalvInsn;->withRegisterOffset(I)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 905
    .end local v2    # "insn":Lcom/android/dx/dex/code/DalvInsn;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 913
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private shiftParameters(I)V
    .locals 8
    .param p1, "delta"    # I

    .line 916
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 917
    .local v0, "insnSize":I
    iget v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->unreservedRegCount:I

    iget v2, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedParameterCount:I

    add-int/2addr v1, v2

    .line 918
    .local v1, "lastParameter":I
    iget v2, p0, Lcom/android/dx/dex/code/OutputFinisher;->paramSize:I

    sub-int v2, v1, v2

    .line 920
    .local v2, "firstParameter":I
    new-instance v3, Lcom/android/dx/ssa/BasicRegisterMapper;

    invoke-direct {v3, v1}, Lcom/android/dx/ssa/BasicRegisterMapper;-><init>(I)V

    .line 921
    .local v3, "mapper":Lcom/android/dx/ssa/BasicRegisterMapper;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 922
    const/4 v5, 0x1

    if-lt v4, v2, :cond_0

    .line 923
    add-int v6, v4, p1

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    goto :goto_1

    .line 925
    :cond_0
    invoke-virtual {v3, v4, v4, v5}, Lcom/android/dx/ssa/BasicRegisterMapper;->addMapping(III)V

    .line 921
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 929
    .end local v4    # "i":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v0, :cond_3

    .line 930
    iget-object v5, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dx/dex/code/DalvInsn;

    .line 933
    .local v5, "insn":Lcom/android/dx/dex/code/DalvInsn;
    instance-of v6, v5, Lcom/android/dx/dex/code/CodeAddress;

    if-nez v6, :cond_2

    .line 934
    iget-object v6, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Lcom/android/dx/dex/code/DalvInsn;->withMapper(Lcom/android/dx/ssa/RegisterMapper;)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 929
    .end local v5    # "insn":Lcom/android/dx/dex/code/DalvInsn;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 937
    .end local v4    # "i":I
    :cond_3
    return-void
.end method

.method private updateInfo(Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 3
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 266
    iget-boolean v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyPositionInfo:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 267
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v0

    .line 268
    .local v0, "pos":Lcom/android/dx/rop/code/SourcePosition;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/SourcePosition;->getLine()I

    move-result v2

    if-ltz v2, :cond_0

    .line 269
    iput-boolean v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyPositionInfo:Z

    .line 273
    .end local v0    # "pos":Lcom/android/dx/rop/code/SourcePosition;
    :cond_0
    iget-boolean v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyLocalInfo:Z

    if-nez v0, :cond_1

    .line 274
    invoke-static {p1}, Lcom/android/dx/dex/code/OutputFinisher;->hasLocalInfo(Lcom/android/dx/dex/code/DalvInsn;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iput-boolean v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyLocalInfo:Z

    .line 278
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 1
    .param p1, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 244
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-direct {p0, p1}, Lcom/android/dx/dex/code/OutputFinisher;->updateInfo(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 246
    return-void
.end method

.method public assignIndices(Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;

    .line 321
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/dex/code/DalvInsn;

    .line 322
    .local v1, "insn":Lcom/android/dx/dex/code/DalvInsn;
    instance-of v2, v1, Lcom/android/dx/dex/code/CstInsn;

    if-eqz v2, :cond_0

    .line 323
    move-object v2, v1

    check-cast v2, Lcom/android/dx/dex/code/CstInsn;

    invoke-static {v2, p1}, Lcom/android/dx/dex/code/OutputFinisher;->assignIndices(Lcom/android/dx/dex/code/CstInsn;Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V

    goto :goto_1

    .line 324
    :cond_0
    instance-of v2, v1, Lcom/android/dx/dex/code/MultiCstInsn;

    if-eqz v2, :cond_1

    .line 325
    move-object v2, v1

    check-cast v2, Lcom/android/dx/dex/code/MultiCstInsn;

    invoke-static {v2, p1}, Lcom/android/dx/dex/code/OutputFinisher;->assignIndices(Lcom/android/dx/dex/code/MultiCstInsn;Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;)V

    .line 327
    .end local v1    # "insn":Lcom/android/dx/dex/code/DalvInsn;
    :cond_1
    :goto_1
    goto :goto_0

    .line 328
    :cond_2
    return-void
.end method

.method public finishProcessingAndGetList()Lcom/android/dx/dex/code/DalvInsnList;
    .locals 4

    .line 400
    iget v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    if-gez v0, :cond_1

    .line 404
    invoke-direct {p0}, Lcom/android/dx/dex/code/OutputFinisher;->makeOpcodesArray()[Lcom/android/dx/dex/code/Dop;

    move-result-object v0

    .line 405
    .local v0, "opcodes":[Lcom/android/dx/dex/code/Dop;
    invoke-direct {p0, v0}, Lcom/android/dx/dex/code/OutputFinisher;->reserveRegisters([Lcom/android/dx/dex/code/Dop;)Z

    .line 406
    iget-object v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->dexOptions:Lcom/android/dx/dex/DexOptions;

    iget-boolean v1, v1, Lcom/android/dx/dex/DexOptions;->ALIGN_64BIT_REGS_IN_OUTPUT_FINISHER:Z

    if-eqz v1, :cond_0

    .line 407
    invoke-direct {p0, v0}, Lcom/android/dx/dex/code/OutputFinisher;->align64bits([Lcom/android/dx/dex/code/Dop;)V

    .line 409
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/dx/dex/code/OutputFinisher;->massageInstructions([Lcom/android/dx/dex/code/Dop;)V

    .line 410
    invoke-direct {p0}, Lcom/android/dx/dex/code/OutputFinisher;->assignAddressesAndFixBranches()V

    .line 412
    iget-object v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedCount:I

    iget v3, p0, Lcom/android/dx/dex/code/OutputFinisher;->unreservedRegCount:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/dx/dex/code/OutputFinisher;->reservedParameterCount:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/android/dx/dex/code/DalvInsnList;->makeImmutable(Ljava/util/ArrayList;I)Lcom/android/dx/dex/code/DalvInsnList;

    move-result-object v1

    return-object v1

    .line 401
    .end local v0    # "opcodes":[Lcom/android/dx/dex/code/Dop;
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already processed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAllConstants()Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/android/dx/rop/cst/Constant;",
            ">;"
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 167
    .local v0, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/dx/rop/cst/Constant;>;"
    iget-object v1, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/dex/code/DalvInsn;

    .line 168
    .local v2, "insn":Lcom/android/dx/dex/code/DalvInsn;
    invoke-static {v0, v2}, Lcom/android/dx/dex/code/OutputFinisher;->addConstants(Ljava/util/HashSet;Lcom/android/dx/dex/code/DalvInsn;)V

    .line 169
    .end local v2    # "insn":Lcom/android/dx/dex/code/DalvInsn;
    goto :goto_0

    .line 171
    :cond_0
    return-object v0
.end method

.method public hasAnyLocalInfo()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyLocalInfo:Z

    return v0
.end method

.method public hasAnyPositionInfo()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->hasAnyPositionInfo:Z

    return v0
.end method

.method public insert(ILcom/android/dx/dex/code/DalvInsn;)V
    .locals 1
    .param p1, "at"    # I
    .param p2, "insn"    # Lcom/android/dx/dex/code/DalvInsn;

    .line 255
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 256
    invoke-direct {p0, p2}, Lcom/android/dx/dex/code/OutputFinisher;->updateInfo(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 257
    return-void
.end method

.method public reverseBranch(ILcom/android/dx/dex/code/CodeAddress;)V
    .locals 5
    .param p1, "which"    # I
    .param p2, "newTarget"    # Lcom/android/dx/dex/code/CodeAddress;

    .line 292
    iget-object v0, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 293
    .local v0, "size":I
    sub-int v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    .line 297
    .local v1, "index":I
    :try_start_0
    iget-object v2, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/dex/code/TargetInsn;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .local v2, "targetInsn":Lcom/android/dx/dex/code/TargetInsn;
    nop

    .line 310
    iget-object v3, p0, Lcom/android/dx/dex/code/OutputFinisher;->insns:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Lcom/android/dx/dex/code/TargetInsn;->withNewTargetAndReversed(Lcom/android/dx/dex/code/CodeAddress;)Lcom/android/dx/dex/code/TargetInsn;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 311
    return-void

    .line 301
    .end local v2    # "targetInsn":Lcom/android/dx/dex/code/TargetInsn;
    :catch_0
    move-exception v2

    .line 303
    .local v2, "ex":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "non-reversible instruction"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 298
    .end local v2    # "ex":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v2

    .line 300
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "too few instructions"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
