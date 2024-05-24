.class Lcom/android/dx/ssa/LiteralOpUpgrader$1;
.super Ljava/lang/Object;
.source "LiteralOpUpgrader.java"

# interfaces
.implements Lcom/android/dx/ssa/SsaInsn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dx/ssa/LiteralOpUpgrader;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dx/ssa/LiteralOpUpgrader;

.field final synthetic val$advice:Lcom/android/dx/rop/code/TranslationAdvice;


# direct methods
.method constructor <init>(Lcom/android/dx/ssa/LiteralOpUpgrader;Lcom/android/dx/rop/code/TranslationAdvice;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dx/ssa/LiteralOpUpgrader;

    .line 84
    iput-object p1, p0, Lcom/android/dx/ssa/LiteralOpUpgrader$1;->this$0:Lcom/android/dx/ssa/LiteralOpUpgrader;

    iput-object p2, p0, Lcom/android/dx/ssa/LiteralOpUpgrader$1;->val$advice:Lcom/android/dx/rop/code/TranslationAdvice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitMoveInsn(Lcom/android/dx/ssa/NormalSsaInsn;)V
    .locals 0
    .param p1, "insn"    # Lcom/android/dx/ssa/NormalSsaInsn;

    .line 88
    return-void
.end method

.method public visitNonMoveInsn(Lcom/android/dx/ssa/NormalSsaInsn;)V
    .locals 8
    .param p1, "insn"    # Lcom/android/dx/ssa/NormalSsaInsn;

    .line 98
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v0

    .line 99
    .local v0, "originalRopInsn":Lcom/android/dx/rop/code/Insn;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    .line 100
    .local v1, "opcode":Lcom/android/dx/rop/code/Rop;
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    .line 103
    .local v2, "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    iget-object v3, p0, Lcom/android/dx/ssa/LiteralOpUpgrader$1;->this$0:Lcom/android/dx/ssa/LiteralOpUpgrader;

    invoke-static {v3, p1}, Lcom/android/dx/ssa/LiteralOpUpgrader;->access$000(Lcom/android/dx/ssa/LiteralOpUpgrader;Lcom/android/dx/ssa/NormalSsaInsn;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 107
    return-void

    .line 110
    :cond_1
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_3

    .line 114
    invoke-virtual {v2, v6}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-static {v3}, Lcom/android/dx/ssa/LiteralOpUpgrader;->access$100(Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 115
    iget-object v3, p0, Lcom/android/dx/ssa/LiteralOpUpgrader$1;->this$0:Lcom/android/dx/ssa/LiteralOpUpgrader;

    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecList;->withoutFirst()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v5

    .line 116
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v6

    invoke-static {v6}, Lcom/android/dx/rop/code/RegOps;->flippedIfOpcode(I)I

    move-result v6

    .line 115
    invoke-static {v3, p1, v5, v6, v4}, Lcom/android/dx/ssa/LiteralOpUpgrader;->access$200(Lcom/android/dx/ssa/LiteralOpUpgrader;Lcom/android/dx/ssa/NormalSsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;ILcom/android/dx/rop/cst/Constant;)V

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {v2, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-static {v3}, Lcom/android/dx/ssa/LiteralOpUpgrader;->access$100(Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 118
    iget-object v3, p0, Lcom/android/dx/ssa/LiteralOpUpgrader$1;->this$0:Lcom/android/dx/ssa/LiteralOpUpgrader;

    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecList;->withoutLast()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v5

    .line 119
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v6

    .line 118
    invoke-static {v3, p1, v5, v6, v4}, Lcom/android/dx/ssa/LiteralOpUpgrader;->access$200(Lcom/android/dx/ssa/LiteralOpUpgrader;Lcom/android/dx/ssa/NormalSsaInsn;Lcom/android/dx/rop/code/RegisterSpecList;ILcom/android/dx/rop/cst/Constant;)V

    goto :goto_0

    .line 121
    :cond_3
    iget-object v3, p0, Lcom/android/dx/ssa/LiteralOpUpgrader$1;->val$advice:Lcom/android/dx/rop/code/TranslationAdvice;

    .line 122
    invoke-virtual {v2, v6}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v2, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    .line 121
    invoke-interface {v3, v1, v4, v7}, Lcom/android/dx/rop/code/TranslationAdvice;->hasConstantOperation(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 123
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->upgradeToLiteral()V

    goto :goto_0

    .line 124
    :cond_4
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Rop;->isCommutative()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/dx/ssa/LiteralOpUpgrader$1;->val$advice:Lcom/android/dx/rop/code/TranslationAdvice;

    .line 126
    invoke-virtual {v2, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v2, v6}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    .line 125
    invoke-interface {v3, v1, v4, v7}, Lcom/android/dx/rop/code/TranslationAdvice;->hasConstantOperation(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 131
    nop

    .line 133
    invoke-virtual {v2, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v2, v6}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    .line 132
    invoke-static {v3, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    .line 131
    invoke-virtual {p1, v3}, Lcom/android/dx/ssa/NormalSsaInsn;->setNewSources(Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 135
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->upgradeToLiteral()V

    .line 137
    :cond_5
    :goto_0
    return-void
.end method

.method public visitPhiInsn(Lcom/android/dx/ssa/PhiInsn;)V
    .locals 0
    .param p1, "insn"    # Lcom/android/dx/ssa/PhiInsn;

    .line 93
    return-void
.end method
