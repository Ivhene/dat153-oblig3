.class public abstract Lcom/android/dx/ssa/SsaInsn;
.super Ljava/lang/Object;
.source "SsaInsn.java"

# interfaces
.implements Lcom/android/dx/util/ToHuman;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/ssa/SsaInsn$Visitor;
    }
.end annotation


# instance fields
.field private final block:Lcom/android/dx/ssa/SsaBasicBlock;

.field private result:Lcom/android/dx/rop/code/RegisterSpec;


# direct methods
.method protected constructor <init>(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/ssa/SsaBasicBlock;)V
    .locals 2
    .param p1, "result"    # Lcom/android/dx/rop/code/RegisterSpec;
    .param p2, "block"    # Lcom/android/dx/ssa/SsaBasicBlock;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-eqz p2, :cond_0

    .line 48
    iput-object p2, p0, Lcom/android/dx/ssa/SsaInsn;->block:Lcom/android/dx/ssa/SsaBasicBlock;

    .line 49
    iput-object p1, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    .line 50
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "block == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static makeFromRop(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaInsn;
    .locals 1
    .param p0, "insn"    # Lcom/android/dx/rop/code/Insn;
    .param p1, "block"    # Lcom/android/dx/ssa/SsaBasicBlock;

    .line 60
    new-instance v0, Lcom/android/dx/ssa/NormalSsaInsn;

    invoke-direct {v0, p0, p1}, Lcom/android/dx/ssa/NormalSsaInsn;-><init>(Lcom/android/dx/rop/code/Insn;Lcom/android/dx/ssa/SsaBasicBlock;)V

    return-object v0
.end method


# virtual methods
.method public abstract accept(Lcom/android/dx/ssa/SsaInsn$Visitor;)V
.end method

.method public abstract canThrow()Z
.end method

.method public changeResultReg(I)V
    .locals 1
    .param p1, "reg"    # I

    .line 130
    iget-object v0, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0, p1}, Lcom/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    .line 133
    :cond_0
    return-void
.end method

.method public clone()Lcom/android/dx/ssa/SsaInsn;
    .locals 3

    .line 67
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaInsn;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaInsn;->clone()Lcom/android/dx/ssa/SsaInsn;

    move-result-object v0

    return-object v0
.end method

.method public getBlock()Lcom/android/dx/ssa/SsaBasicBlock;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/dx/ssa/SsaInsn;->block:Lcom/android/dx/ssa/SsaBasicBlock;

    return-object v0
.end method

.method public getLocalAssignment()Lcom/android/dx/rop/code/RegisterSpec;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    return-object v0

    .line 205
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getOpcode()Lcom/android/dx/rop/code/Rop;
.end method

.method public abstract getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;
.end method

.method public getResult()Lcom/android/dx/rop/code/RegisterSpec;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    return-object v0
.end method

.method public abstract getSources()Lcom/android/dx/rop/code/RegisterSpecList;
.end method

.method public abstract hasSideEffect()Z
.end method

.method public isMoveException()Z
    .locals 1

    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public isNormalMoveInsn()Z
    .locals 1

    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isPhiOrMove()Z
.end method

.method public isRegASource(I)Z
    .locals 1
    .param p1, "reg"    # I

    .line 216
    invoke-virtual {p0}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->specForRegister(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResultReg(I)Z
    .locals 1
    .param p1, "reg"    # I

    .line 119
    iget-object v0, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final mapRegisters(Lcom/android/dx/ssa/RegisterMapper;)V
    .locals 2
    .param p1, "mapper"    # Lcom/android/dx/ssa/RegisterMapper;

    .line 157
    iget-object v0, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    .line 159
    .local v0, "oldResult":Lcom/android/dx/rop/code/RegisterSpec;
    iget-object v1, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {p1, v1}, Lcom/android/dx/ssa/RegisterMapper;->map(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    .line 160
    iget-object v1, p0, Lcom/android/dx/ssa/SsaInsn;->block:Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaBasicBlock;->getParent()Lcom/android/dx/ssa/SsaMethod;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/dx/ssa/SsaMethod;->updateOneDefinition(Lcom/android/dx/ssa/SsaInsn;Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/dx/ssa/SsaInsn;->mapSourceRegisters(Lcom/android/dx/ssa/RegisterMapper;)V

    .line 162
    return-void
.end method

.method public abstract mapSourceRegisters(Lcom/android/dx/ssa/RegisterMapper;)V
.end method

.method protected setResult(Lcom/android/dx/rop/code/RegisterSpec;)V
    .locals 2
    .param p1, "result"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 88
    if-eqz p1, :cond_0

    .line 92
    iput-object p1, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    .line 93
    return-void

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "result == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setResultLocal(Lcom/android/dx/rop/code/LocalItem;)V
    .locals 3
    .param p1, "local"    # Lcom/android/dx/rop/code/LocalItem;

    .line 142
    iget-object v0, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v0

    .line 144
    .local v0, "oldItem":Lcom/android/dx/rop/code/LocalItem;
    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    .line 145
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    .line 147
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    iget-object v2, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v2

    .line 146
    invoke-static {v1, v2, p1}, Lcom/android/dx/rop/code/RegisterSpec;->makeLocalOptional(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dx/ssa/SsaInsn;->result:Lcom/android/dx/rop/code/RegisterSpec;

    .line 149
    :cond_1
    return-void
.end method

.method public abstract toRopInsn()Lcom/android/dx/rop/code/Insn;
.end method
