.class Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;
.super Ljava/lang/Object;
.source "FirstFitLocalCombiningAllocator.java"

# interfaces
.implements Lcom/android/dx/ssa/SsaInsn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->analyzeInstructions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;


# direct methods
.method constructor <init>(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    .line 699
    iput-object p1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;->this$0:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private processInsn(Lcom/android/dx/ssa/SsaInsn;)V
    .locals 4
    .param p1, "insn"    # Lcom/android/dx/ssa/SsaInsn;

    .line 733
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getLocalAssignment()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 735
    .local v0, "assignment":Lcom/android/dx/rop/code/RegisterSpec;
    if-eqz v0, :cond_1

    .line 736
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v1

    .line 738
    .local v1, "local":Lcom/android/dx/rop/code/LocalItem;
    iget-object v2, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;->this$0:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    .line 739
    invoke-static {v2}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->access$200(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 741
    .local v2, "regList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/code/RegisterSpec;>;"
    if-nez v2, :cond_0

    .line 742
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 743
    iget-object v3, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;->this$0:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    invoke-static {v3}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->access$200(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    .end local v1    # "local":Lcom/android/dx/rop/code/LocalItem;
    .end local v2    # "regList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/code/RegisterSpec;>;"
    :cond_1
    instance-of v1, p1, Lcom/android/dx/ssa/NormalSsaInsn;

    if-eqz v1, :cond_3

    .line 750
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_2

    .line 752
    iget-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;->this$0:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    invoke-static {v1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->access$300(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/android/dx/ssa/NormalSsaInsn;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 753
    :cond_2
    invoke-static {}, Lcom/android/dx/ssa/Optimizer;->getAdvice()Lcom/android/dx/rop/code/TranslationAdvice;

    move-result-object v1

    .line 754
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getOriginalRopInsn()Lcom/android/dx/rop/code/Insn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v2

    .line 755
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v3

    .line 753
    invoke-interface {v1, v2, v3}, Lcom/android/dx/rop/code/TranslationAdvice;->requiresSourcesInOrder(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/RegisterSpecList;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 756
    iget-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;->this$0:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    invoke-static {v1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->access$400(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/android/dx/ssa/NormalSsaInsn;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 758
    :cond_3
    instance-of v1, p1, Lcom/android/dx/ssa/PhiInsn;

    if-eqz v1, :cond_4

    .line 759
    iget-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;->this$0:Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;

    invoke-static {v1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;->access$500(Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/android/dx/ssa/PhiInsn;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public visitMoveInsn(Lcom/android/dx/ssa/NormalSsaInsn;)V
    .locals 0
    .param p1, "insn"    # Lcom/android/dx/ssa/NormalSsaInsn;

    .line 703
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;->processInsn(Lcom/android/dx/ssa/SsaInsn;)V

    .line 704
    return-void
.end method

.method public visitNonMoveInsn(Lcom/android/dx/ssa/NormalSsaInsn;)V
    .locals 0
    .param p1, "insn"    # Lcom/android/dx/ssa/NormalSsaInsn;

    .line 715
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;->processInsn(Lcom/android/dx/ssa/SsaInsn;)V

    .line 716
    return-void
.end method

.method public visitPhiInsn(Lcom/android/dx/ssa/PhiInsn;)V
    .locals 0
    .param p1, "insn"    # Lcom/android/dx/ssa/PhiInsn;

    .line 709
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$1;->processInsn(Lcom/android/dx/ssa/SsaInsn;)V

    .line 710
    return-void
.end method
