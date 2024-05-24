.class public final Lcom/android/dx/ssa/PhiInsn;
.super Lcom/android/dx/ssa/SsaInsn;
.source "PhiInsn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/ssa/PhiInsn$Visitor;,
        Lcom/android/dx/ssa/PhiInsn$Operand;
    }
.end annotation


# instance fields
.field private final operands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/ssa/PhiInsn$Operand;",
            ">;"
        }
    .end annotation
.end field

.field private final ropResultReg:I

.field private sources:Lcom/android/dx/rop/code/RegisterSpecList;


# direct methods
.method public constructor <init>(ILcom/android/dx/ssa/SsaBasicBlock;)V
    .locals 1
    .param p1, "resultReg"    # I
    .param p2, "block"    # Lcom/android/dx/ssa/SsaBasicBlock;

    .line 75
    sget-object v0, Lcom/android/dx/rop/type/Type;->VOID:Lcom/android/dx/rop/type/Type;

    invoke-static {p1, v0}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/dx/ssa/SsaInsn;-><init>(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/ssa/SsaBasicBlock;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    .line 76
    iput p1, p0, Lcom/android/dx/ssa/PhiInsn;->ropResultReg:I

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/ssa/SsaBasicBlock;)V
    .locals 1
    .param p1, "resultReg"    # Lcom/android/dx/rop/code/RegisterSpec;
    .param p2, "block"    # Lcom/android/dx/ssa/SsaBasicBlock;

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/dx/ssa/SsaInsn;-><init>(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/ssa/SsaBasicBlock;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    iput v0, p0, Lcom/android/dx/ssa/PhiInsn;->ropResultReg:I

    .line 62
    return-void
.end method


# virtual methods
.method public accept(Lcom/android/dx/ssa/SsaInsn$Visitor;)V
    .locals 0
    .param p1, "v"    # Lcom/android/dx/ssa/SsaInsn$Visitor;

    .line 327
    invoke-interface {p1, p0}, Lcom/android/dx/ssa/SsaInsn$Visitor;->visitPhiInsn(Lcom/android/dx/ssa/PhiInsn;)V

    .line 328
    return-void
.end method

.method public addPhiOperand(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/ssa/SsaBasicBlock;)V
    .locals 4
    .param p1, "registerSpec"    # Lcom/android/dx/rop/code/RegisterSpec;
    .param p2, "predBlock"    # Lcom/android/dx/ssa/SsaBasicBlock;

    .line 134
    iget-object v0, p0, Lcom/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/dx/ssa/PhiInsn$Operand;

    invoke-virtual {p2}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v2

    .line 135
    invoke-virtual {p2}, Lcom/android/dx/ssa/SsaBasicBlock;->getRopLabel()I

    move-result v3

    invoke-direct {v1, p1, v2, v3}, Lcom/android/dx/ssa/PhiInsn$Operand;-><init>(Lcom/android/dx/rop/code/RegisterSpec;II)V

    .line 134
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dx/ssa/PhiInsn;->sources:Lcom/android/dx/rop/code/RegisterSpecList;

    .line 139
    return-void
.end method

.method public areAllOperandsEqual()Z
    .locals 6

    .line 252
    iget-object v0, p0, Lcom/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 254
    return v1

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/PhiInsn$Operand;

    iget-object v0, v0, Lcom/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 258
    .local v0, "firstReg":I
    iget-object v3, p0, Lcom/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dx/ssa/PhiInsn$Operand;

    .line 259
    .local v4, "o":Lcom/android/dx/ssa/PhiInsn$Operand;
    iget-object v5, v4, Lcom/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v5

    if-eq v0, v5, :cond_1

    .line 260
    return v2

    .line 262
    .end local v4    # "o":Lcom/android/dx/ssa/PhiInsn$Operand;
    :cond_1
    goto :goto_0

    .line 264
    :cond_2
    return v1
.end method

.method public canThrow()Z
    .locals 1

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public changeResultType(Lcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)V
    .locals 1
    .param p1, "type"    # Lcom/android/dx/rop/type/TypeBearer;
    .param p2, "local"    # Lcom/android/dx/rop/code/LocalItem;

    .line 113
    nop

    .line 114
    invoke-virtual {p0}, Lcom/android/dx/ssa/PhiInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    .line 113
    invoke-static {v0, p1, p2}, Lcom/android/dx/rop/code/RegisterSpec;->makeLocalOptional(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dx/ssa/PhiInsn;->setResult(Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 115
    return-void
.end method

.method public clone()Lcom/android/dx/ssa/PhiInsn;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t clone phi"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Lcom/android/dx/ssa/SsaInsn;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/android/dx/ssa/PhiInsn;->clone()Lcom/android/dx/ssa/PhiInsn;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/android/dx/ssa/PhiInsn;->clone()Lcom/android/dx/ssa/PhiInsn;

    move-result-object v0

    return-object v0
.end method

.method public getOpcode()Lcom/android/dx/rop/code/Rop;
    .locals 1

    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;
    .locals 1

    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRopResultReg()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/android/dx/ssa/PhiInsn;->ropResultReg:I

    return v0
.end method

.method public getSources()Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 5

    .line 209
    iget-object v0, p0, Lcom/android/dx/ssa/PhiInsn;->sources:Lcom/android/dx/rop/code/RegisterSpecList;

    if-eqz v0, :cond_0

    .line 210
    return-object v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 215
    sget-object v0, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    return-object v0

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 219
    .local v0, "szSources":I
    new-instance v1, Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v1, v0}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    iput-object v1, p0, Lcom/android/dx/ssa/PhiInsn;->sources:Lcom/android/dx/rop/code/RegisterSpecList;

    .line 221
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 222
    iget-object v2, p0, Lcom/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/ssa/PhiInsn$Operand;

    .line 224
    .local v2, "o":Lcom/android/dx/ssa/PhiInsn$Operand;
    iget-object v3, p0, Lcom/android/dx/ssa/PhiInsn;->sources:Lcom/android/dx/rop/code/RegisterSpecList;

    iget-object v4, v2, Lcom/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v3, v1, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 221
    .end local v2    # "o":Lcom/android/dx/ssa/PhiInsn$Operand;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/dx/ssa/PhiInsn;->sources:Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    .line 228
    iget-object v1, p0, Lcom/android/dx/ssa/PhiInsn;->sources:Lcom/android/dx/rop/code/RegisterSpecList;

    return-object v1
.end method

.method public hasSideEffect()Z
    .locals 1

    .line 321
    invoke-static {}, Lcom/android/dx/ssa/Optimizer;->getPreserveLocals()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dx/ssa/PhiInsn;->getLocalAssignment()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPhiOrMove()Z
    .locals 1

    .line 315
    const/4 v0, 0x1

    return v0
.end method

.method public isRegASource(I)Z
    .locals 3
    .param p1, "reg"    # I

    .line 239
    iget-object v0, p0, Lcom/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/PhiInsn$Operand;

    .line 240
    .local v1, "o":Lcom/android/dx/ssa/PhiInsn$Operand;
    iget-object v2, v1, Lcom/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 241
    const/4 v0, 0x1

    return v0

    .line 243
    .end local v1    # "o":Lcom/android/dx/ssa/PhiInsn$Operand;
    :cond_0
    goto :goto_0

    .line 245
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final mapSourceRegisters(Lcom/android/dx/ssa/RegisterMapper;)V
    .locals 5
    .param p1, "mapper"    # Lcom/android/dx/ssa/RegisterMapper;

    .line 270
    iget-object v0, p0, Lcom/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/PhiInsn$Operand;

    .line 271
    .local v1, "o":Lcom/android/dx/ssa/PhiInsn$Operand;
    iget-object v2, v1, Lcom/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/android/dx/rop/code/RegisterSpec;

    .line 272
    .local v2, "old":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {p1, v2}, Lcom/android/dx/ssa/RegisterMapper;->map(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    iput-object v3, v1, Lcom/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/android/dx/rop/code/RegisterSpec;

    .line 273
    iget-object v3, v1, Lcom/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/android/dx/rop/code/RegisterSpec;

    if-eq v2, v3, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/android/dx/ssa/PhiInsn;->getBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->getParent()Lcom/android/dx/ssa/SsaMethod;

    move-result-object v3

    iget-object v4, v1, Lcom/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v3, p0, v2, v4}, Lcom/android/dx/ssa/SsaMethod;->onSourceChanged(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 276
    .end local v1    # "o":Lcom/android/dx/ssa/PhiInsn$Operand;
    .end local v2    # "old":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_0
    goto :goto_0

    .line 277
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dx/ssa/PhiInsn;->sources:Lcom/android/dx/rop/code/RegisterSpecList;

    .line 278
    return-void
.end method

.method public predBlockIndexForSourcesIndex(I)I
    .locals 1
    .param p1, "sourcesIndex"    # I

    .line 168
    iget-object v0, p0, Lcom/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/PhiInsn$Operand;

    iget v0, v0, Lcom/android/dx/ssa/PhiInsn$Operand;->blockIndex:I

    return v0
.end method

.method public predBlocksForReg(ILcom/android/dx/ssa/SsaMethod;)Ljava/util/List;
    .locals 5
    .param p1, "reg"    # I
    .param p2, "ssaMeth"    # Lcom/android/dx/ssa/SsaMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/dx/ssa/SsaMethod;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/SsaBasicBlock;>;"
    iget-object v1, p0, Lcom/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/ssa/PhiInsn$Operand;

    .line 304
    .local v2, "o":Lcom/android/dx/ssa/PhiInsn$Operand;
    iget-object v3, v2, Lcom/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 305
    invoke-virtual {p2}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v3

    iget v4, v2, Lcom/android/dx/ssa/PhiInsn$Operand;->blockIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    .end local v2    # "o":Lcom/android/dx/ssa/PhiInsn$Operand;
    :cond_0
    goto :goto_0

    .line 309
    :cond_1
    return-object v0
.end method

.method public removePhiRegister(Lcom/android/dx/rop/code/RegisterSpec;)V
    .locals 5
    .param p1, "registerSpec"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, "operandsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/ssa/PhiInsn$Operand;>;"
    iget-object v1, p0, Lcom/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/ssa/PhiInsn$Operand;

    .line 149
    .local v2, "o":Lcom/android/dx/ssa/PhiInsn$Operand;
    iget-object v3, v2, Lcom/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 150
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v2    # "o":Lcom/android/dx/ssa/PhiInsn$Operand;
    :cond_0
    goto :goto_0

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 157
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/dx/ssa/PhiInsn;->sources:Lcom/android/dx/rop/code/RegisterSpecList;

    .line 158
    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    .line 333
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/dx/ssa/PhiInsn;->toHumanWithInline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final toHumanWithInline(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "extra"    # Ljava/lang/String;

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 346
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 347
    const-string v1, ": phi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    if-eqz p1, :cond_0

    .line 350
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_0
    invoke-virtual {p0}, Lcom/android/dx/ssa/PhiInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 357
    .local v1, "result":Lcom/android/dx/rop/code/RegisterSpec;
    const-string v2, " ."

    const-string v3, " "

    if-nez v1, :cond_1

    .line 358
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 360
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :goto_0
    const-string v4, " <-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {p0}, Lcom/android/dx/ssa/PhiInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v4

    .line 367
    .local v4, "sz":I
    if-nez v4, :cond_2

    .line 368
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 370
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 371
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/dx/ssa/PhiInsn;->sources:Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-virtual {v6, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/dx/rop/code/RegisterSpec;->toHuman()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[b="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    .line 374
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/dx/ssa/PhiInsn$Operand;

    iget v6, v6, Lcom/android/dx/ssa/PhiInsn$Operand;->ropLabel:I

    invoke-static {v6}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 372
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 378
    .end local v2    # "i":I
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toRopInsn()Lcom/android/dx/rop/code/Insn;
    .locals 2

    .line 288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot convert phi insns to rop form"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateSourcesToDefinitions(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 5
    .param p1, "ssaMeth"    # Lcom/android/dx/ssa/SsaMethod;

    .line 95
    iget-object v0, p0, Lcom/android/dx/ssa/PhiInsn;->operands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/PhiInsn$Operand;

    .line 96
    .local v1, "o":Lcom/android/dx/ssa/PhiInsn$Operand;
    iget-object v2, v1, Lcom/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/android/dx/rop/code/RegisterSpec;

    .line 98
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    .line 97
    invoke-virtual {p1, v2}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 100
    .local v2, "def":Lcom/android/dx/rop/code/RegisterSpec;
    iget-object v3, v1, Lcom/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/dx/rop/code/RegisterSpec;->withType(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    iput-object v3, v1, Lcom/android/dx/ssa/PhiInsn$Operand;->regSpec:Lcom/android/dx/rop/code/RegisterSpec;

    .line 101
    .end local v1    # "o":Lcom/android/dx/ssa/PhiInsn$Operand;
    .end local v2    # "def":Lcom/android/dx/rop/code/RegisterSpec;
    goto :goto_0

    .line 103
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dx/ssa/PhiInsn;->sources:Lcom/android/dx/rop/code/RegisterSpecList;

    .line 104
    return-void
.end method