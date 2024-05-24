.class public final Lcom/android/dx/rop/code/BasicBlockList;
.super Lcom/android/dx/util/LabeledList;
.source "BasicBlockList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/rop/code/BasicBlockList$RegCountVisitor;
    }
.end annotation


# instance fields
.field private regCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 42
    invoke-direct {p0, p1}, Lcom/android/dx/util/LabeledList;-><init>(I)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dx/rop/code/BasicBlockList;->regCount:I

    .line 45
    return-void
.end method

.method private constructor <init>(Lcom/android/dx/rop/code/BasicBlockList;)V
    .locals 1
    .param p1, "old"    # Lcom/android/dx/rop/code/BasicBlockList;

    .line 53
    invoke-direct {p0, p1}, Lcom/android/dx/util/LabeledList;-><init>(Lcom/android/dx/util/LabeledList;)V

    .line 54
    iget v0, p1, Lcom/android/dx/rop/code/BasicBlockList;->regCount:I

    iput v0, p0, Lcom/android/dx/rop/code/BasicBlockList;->regCount:I

    .line 55
    return-void
.end method


# virtual methods
.method public catchesEqual(Lcom/android/dx/rop/code/BasicBlock;Lcom/android/dx/rop/code/BasicBlock;)Z
    .locals 11
    .param p1, "block1"    # Lcom/android/dx/rop/code/BasicBlock;
    .param p2, "block2"    # Lcom/android/dx/rop/code/BasicBlock;

    .line 260
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getExceptionHandlerTypes()Lcom/android/dx/rop/type/TypeList;

    move-result-object v0

    .line 261
    .local v0, "catches1":Lcom/android/dx/rop/type/TypeList;
    invoke-virtual {p2}, Lcom/android/dx/rop/code/BasicBlock;->getExceptionHandlerTypes()Lcom/android/dx/rop/type/TypeList;

    move-result-object v1

    .line 263
    .local v1, "catches2":Lcom/android/dx/rop/type/TypeList;
    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->equalContents(Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/type/TypeList;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 264
    return v3

    .line 267
    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v2

    .line 268
    .local v2, "succ1":Lcom/android/dx/util/IntList;
    invoke-virtual {p2}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v4

    .line 269
    .local v4, "succ2":Lcom/android/dx/util/IntList;
    invoke-virtual {v2}, Lcom/android/dx/util/IntList;->size()I

    move-result v5

    .line 271
    .local v5, "size":I
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v6

    .line 272
    .local v6, "primary1":I
    invoke-virtual {p2}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v7

    .line 274
    .local v7, "primary2":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    if-ne v7, v8, :cond_2

    :cond_1
    if-eq v6, v7, :cond_2

    .line 282
    return v3

    .line 285
    :cond_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v5, :cond_5

    .line 286
    invoke-virtual {v2, v8}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v9

    .line 287
    .local v9, "label1":I
    invoke-virtual {v4, v8}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v10

    .line 289
    .local v10, "label2":I
    if-ne v9, v6, :cond_3

    .line 295
    if-eq v10, v7, :cond_4

    .line 296
    return v3

    .line 301
    :cond_3
    if-eq v9, v10, :cond_4

    .line 302
    return v3

    .line 285
    .end local v9    # "label1":I
    .end local v10    # "label2":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 306
    .end local v8    # "i":I
    :cond_5
    const/4 v3, 0x1

    return v3
.end method

.method public forEachInsn(Lcom/android/dx/rop/code/Insn$Visitor;)V
    .locals 4
    .param p1, "visitor"    # Lcom/android/dx/rop/code/Insn$Visitor;

    .line 174
    invoke-virtual {p0}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    move-result v0

    .line 176
    .local v0, "sz":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 177
    invoke-virtual {p0, v1}, Lcom/android/dx/rop/code/BasicBlockList;->get(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v2

    .line 178
    .local v2, "one":Lcom/android/dx/rop/code/BasicBlock;
    invoke-virtual {v2}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    move-result-object v3

    .line 179
    .local v3, "insns":Lcom/android/dx/rop/code/InsnList;
    invoke-virtual {v3, p1}, Lcom/android/dx/rop/code/InsnList;->forEach(Lcom/android/dx/rop/code/Insn$Visitor;)V

    .line 176
    .end local v2    # "one":Lcom/android/dx/rop/code/BasicBlock;
    .end local v3    # "insns":Lcom/android/dx/rop/code/InsnList;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public get(I)Lcom/android/dx/rop/code/BasicBlock;
    .locals 1
    .param p1, "n"    # I

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/code/BasicBlockList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/code/BasicBlock;

    return-object v0
.end method

.method public getEffectiveInstructionCount()I
    .locals 10

    .line 128
    invoke-virtual {p0}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    move-result v0

    .line 129
    .local v0, "sz":I
    const/4 v1, 0x0

    .line 131
    .local v1, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 132
    invoke-virtual {p0, v2}, Lcom/android/dx/rop/code/BasicBlockList;->getOrNull0(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/rop/code/BasicBlock;

    .line 133
    .local v3, "one":Lcom/android/dx/rop/code/BasicBlock;
    if-eqz v3, :cond_1

    .line 134
    invoke-virtual {v3}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    move-result-object v4

    .line 135
    .local v4, "insns":Lcom/android/dx/rop/code/InsnList;
    invoke-virtual {v4}, Lcom/android/dx/rop/code/InsnList;->size()I

    move-result v5

    .line 137
    .local v5, "insnsSz":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v5, :cond_1

    .line 138
    invoke-virtual {v4, v6}, Lcom/android/dx/rop/code/InsnList;->get(I)Lcom/android/dx/rop/code/Insn;

    move-result-object v7

    .line 140
    .local v7, "insn":Lcom/android/dx/rop/code/Insn;
    invoke-virtual {v7}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v8

    const/16 v9, 0x36

    if-eq v8, v9, :cond_0

    .line 141
    add-int/lit8 v1, v1, 0x1

    .line 137
    .end local v7    # "insn":Lcom/android/dx/rop/code/Insn;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 131
    .end local v3    # "one":Lcom/android/dx/rop/code/BasicBlock;
    .end local v4    # "insns":Lcom/android/dx/rop/code/InsnList;
    .end local v5    # "insnsSz":I
    .end local v6    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method public getInstructionCount()I
    .locals 5

    .line 108
    invoke-virtual {p0}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    move-result v0

    .line 109
    .local v0, "sz":I
    const/4 v1, 0x0

    .line 111
    .local v1, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 112
    invoke-virtual {p0, v2}, Lcom/android/dx/rop/code/BasicBlockList;->getOrNull0(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/rop/code/BasicBlock;

    .line 113
    .local v3, "one":Lcom/android/dx/rop/code/BasicBlock;
    if-eqz v3, :cond_0

    .line 114
    invoke-virtual {v3}, Lcom/android/dx/rop/code/BasicBlock;->getInsns()Lcom/android/dx/rop/code/InsnList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/rop/code/InsnList;->size()I

    move-result v4

    add-int/2addr v1, v4

    .line 111
    .end local v3    # "one":Lcom/android/dx/rop/code/BasicBlock;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method public getMutableCopy()Lcom/android/dx/rop/code/BasicBlockList;
    .locals 1

    .line 216
    new-instance v0, Lcom/android/dx/rop/code/BasicBlockList;

    invoke-direct {v0, p0}, Lcom/android/dx/rop/code/BasicBlockList;-><init>(Lcom/android/dx/rop/code/BasicBlockList;)V

    return-object v0
.end method

.method public getRegCount()I
    .locals 2

    .line 92
    iget v0, p0, Lcom/android/dx/rop/code/BasicBlockList;->regCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 93
    new-instance v0, Lcom/android/dx/rop/code/BasicBlockList$RegCountVisitor;

    invoke-direct {v0}, Lcom/android/dx/rop/code/BasicBlockList$RegCountVisitor;-><init>()V

    .line 94
    .local v0, "visitor":Lcom/android/dx/rop/code/BasicBlockList$RegCountVisitor;
    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/BasicBlockList;->forEachInsn(Lcom/android/dx/rop/code/Insn$Visitor;)V

    .line 95
    invoke-virtual {v0}, Lcom/android/dx/rop/code/BasicBlockList$RegCountVisitor;->getRegCount()I

    move-result v1

    iput v1, p0, Lcom/android/dx/rop/code/BasicBlockList;->regCount:I

    .line 98
    .end local v0    # "visitor":Lcom/android/dx/rop/code/BasicBlockList$RegCountVisitor;
    :cond_0
    iget v0, p0, Lcom/android/dx/rop/code/BasicBlockList;->regCount:I

    return v0
.end method

.method public labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;
    .locals 4
    .param p1, "label"    # I

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/code/BasicBlockList;->indexOfLabel(I)I

    move-result v0

    .line 160
    .local v0, "idx":I
    if-ltz v0, :cond_0

    .line 165
    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/BasicBlockList;->get(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v1

    return-object v1

    .line 161
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no such label: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 162
    invoke-static {p1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public preferredSuccessorOf(Lcom/android/dx/rop/code/BasicBlock;)Lcom/android/dx/rop/code/BasicBlock;
    .locals 5
    .param p1, "block"    # Lcom/android/dx/rop/code/BasicBlock;

    .line 230
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getPrimarySuccessor()I

    move-result v0

    .line 231
    .local v0, "primarySuccessor":I
    invoke-virtual {p1}, Lcom/android/dx/rop/code/BasicBlock;->getSuccessors()Lcom/android/dx/util/IntList;

    move-result-object v1

    .line 232
    .local v1, "successors":Lcom/android/dx/util/IntList;
    invoke-virtual {v1}, Lcom/android/dx/util/IntList;->size()I

    move-result v2

    .line 234
    .local v2, "succSize":I
    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 243
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 244
    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v3

    return-object v3

    .line 239
    :pswitch_0
    invoke-virtual {v1, v3}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v3

    return-object v3

    .line 236
    :pswitch_1
    const/4 v3, 0x0

    return-object v3

    .line 246
    :cond_0
    invoke-virtual {v1, v3}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/dx/rop/code/BasicBlockList;->labelToBlock(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v3

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public set(ILcom/android/dx/rop/code/BasicBlock;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "bb"    # Lcom/android/dx/rop/code/BasicBlock;

    .line 77
    invoke-super {p0, p1, p2}, Lcom/android/dx/util/LabeledList;->set(ILcom/android/dx/util/LabeledItem;)V

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dx/rop/code/BasicBlockList;->regCount:I

    .line 81
    return-void
.end method

.method public withRegisterOffset(I)Lcom/android/dx/rop/code/BasicBlockList;
    .locals 5
    .param p1, "delta"    # I

    .line 193
    invoke-virtual {p0}, Lcom/android/dx/rop/code/BasicBlockList;->size()I

    move-result v0

    .line 194
    .local v0, "sz":I
    new-instance v1, Lcom/android/dx/rop/code/BasicBlockList;

    invoke-direct {v1, v0}, Lcom/android/dx/rop/code/BasicBlockList;-><init>(I)V

    .line 196
    .local v1, "result":Lcom/android/dx/rop/code/BasicBlockList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 197
    invoke-virtual {p0, v2}, Lcom/android/dx/rop/code/BasicBlockList;->get0(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/rop/code/BasicBlock;

    .line 198
    .local v3, "one":Lcom/android/dx/rop/code/BasicBlock;
    if-eqz v3, :cond_0

    .line 199
    invoke-virtual {v3, p1}, Lcom/android/dx/rop/code/BasicBlock;->withRegisterOffset(I)Lcom/android/dx/rop/code/BasicBlock;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/android/dx/rop/code/BasicBlockList;->set(ILcom/android/dx/rop/code/BasicBlock;)V

    .line 196
    .end local v3    # "one":Lcom/android/dx/rop/code/BasicBlock;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/dx/rop/code/BasicBlockList;->isImmutable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 204
    invoke-virtual {v1}, Lcom/android/dx/rop/code/BasicBlockList;->setImmutable()V

    .line 207
    :cond_2
    return-object v1
.end method
