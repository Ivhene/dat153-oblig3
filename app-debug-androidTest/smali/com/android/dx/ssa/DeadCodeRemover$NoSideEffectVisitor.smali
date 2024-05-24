.class Lcom/android/dx/ssa/DeadCodeRemover$NoSideEffectVisitor;
.super Ljava/lang/Object;
.source "DeadCodeRemover.java"

# interfaces
.implements Lcom/android/dx/ssa/SsaInsn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/ssa/DeadCodeRemover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoSideEffectVisitor"
.end annotation


# instance fields
.field noSideEffectRegs:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(Ljava/util/BitSet;)V
    .locals 0
    .param p1, "noSideEffectRegs"    # Ljava/util/BitSet;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p1, p0, Lcom/android/dx/ssa/DeadCodeRemover$NoSideEffectVisitor;->noSideEffectRegs:Ljava/util/BitSet;

    .line 242
    return-void
.end method


# virtual methods
.method public visitMoveInsn(Lcom/android/dx/ssa/NormalSsaInsn;)V
    .locals 2
    .param p1, "insn"    # Lcom/android/dx/ssa/NormalSsaInsn;

    .line 248
    invoke-static {p1}, Lcom/android/dx/ssa/DeadCodeRemover;->access$000(Lcom/android/dx/ssa/SsaInsn;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/dx/ssa/DeadCodeRemover$NoSideEffectVisitor;->noSideEffectRegs:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 251
    :cond_0
    return-void
.end method

.method public visitNonMoveInsn(Lcom/android/dx/ssa/NormalSsaInsn;)V
    .locals 3
    .param p1, "insn"    # Lcom/android/dx/ssa/NormalSsaInsn;

    .line 265
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 266
    .local v0, "result":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-static {p1}, Lcom/android/dx/ssa/DeadCodeRemover;->access$000(Lcom/android/dx/ssa/SsaInsn;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/dx/ssa/DeadCodeRemover$NoSideEffectVisitor;->noSideEffectRegs:Ljava/util/BitSet;

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 269
    :cond_0
    return-void
.end method

.method public visitPhiInsn(Lcom/android/dx/ssa/PhiInsn;)V
    .locals 2
    .param p1, "phi"    # Lcom/android/dx/ssa/PhiInsn;

    .line 257
    invoke-static {p1}, Lcom/android/dx/ssa/DeadCodeRemover;->access$000(Lcom/android/dx/ssa/SsaInsn;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/dx/ssa/DeadCodeRemover$NoSideEffectVisitor;->noSideEffectRegs:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/android/dx/ssa/PhiInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 260
    :cond_0
    return-void
.end method