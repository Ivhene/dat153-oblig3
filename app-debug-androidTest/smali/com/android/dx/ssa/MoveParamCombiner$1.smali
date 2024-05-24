.class Lcom/android/dx/ssa/MoveParamCombiner$1;
.super Ljava/lang/Object;
.source "MoveParamCombiner.java"

# interfaces
.implements Lcom/android/dx/ssa/SsaInsn$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dx/ssa/MoveParamCombiner;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dx/ssa/MoveParamCombiner;

.field final synthetic val$deletedInsns:Ljava/util/HashSet;

.field final synthetic val$paramSpecs:[Lcom/android/dx/rop/code/RegisterSpec;


# direct methods
.method constructor <init>(Lcom/android/dx/ssa/MoveParamCombiner;[Lcom/android/dx/rop/code/RegisterSpec;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dx/ssa/MoveParamCombiner;

    .line 60
    iput-object p1, p0, Lcom/android/dx/ssa/MoveParamCombiner$1;->this$0:Lcom/android/dx/ssa/MoveParamCombiner;

    iput-object p2, p0, Lcom/android/dx/ssa/MoveParamCombiner$1;->val$paramSpecs:[Lcom/android/dx/rop/code/RegisterSpec;

    iput-object p3, p0, Lcom/android/dx/ssa/MoveParamCombiner$1;->val$deletedInsns:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitMoveInsn(Lcom/android/dx/ssa/NormalSsaInsn;)V
    .locals 0
    .param p1, "insn"    # Lcom/android/dx/ssa/NormalSsaInsn;

    .line 63
    return-void
.end method

.method public visitNonMoveInsn(Lcom/android/dx/ssa/NormalSsaInsn;)V
    .locals 10
    .param p1, "insn"    # Lcom/android/dx/ssa/NormalSsaInsn;

    .line 69
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 70
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/dx/ssa/MoveParamCombiner$1;->this$0:Lcom/android/dx/ssa/MoveParamCombiner;

    invoke-static {v0, p1}, Lcom/android/dx/ssa/MoveParamCombiner;->access$000(Lcom/android/dx/ssa/MoveParamCombiner;Lcom/android/dx/ssa/NormalSsaInsn;)I

    move-result v0

    .line 75
    .local v0, "param":I
    iget-object v1, p0, Lcom/android/dx/ssa/MoveParamCombiner$1;->val$paramSpecs:[Lcom/android/dx/rop/code/RegisterSpec;

    aget-object v2, v1, v0

    if-nez v2, :cond_1

    .line 76
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_2

    .line 78
    :cond_1
    aget-object v1, v1, v0

    .line 79
    .local v1, "specA":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {p1}, Lcom/android/dx/ssa/NormalSsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    .line 80
    .local v2, "specB":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v3

    .line 81
    .local v3, "localA":Lcom/android/dx/rop/code/LocalItem;
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v4

    .line 88
    .local v4, "localB":Lcom/android/dx/rop/code/LocalItem;
    if-nez v3, :cond_2

    .line 89
    move-object v5, v4

    .local v5, "newLocal":Lcom/android/dx/rop/code/LocalItem;
    goto :goto_0

    .line 90
    .end local v5    # "newLocal":Lcom/android/dx/rop/code/LocalItem;
    :cond_2
    if-nez v4, :cond_3

    .line 91
    move-object v5, v3

    .restart local v5    # "newLocal":Lcom/android/dx/rop/code/LocalItem;
    goto :goto_0

    .line 92
    .end local v5    # "newLocal":Lcom/android/dx/rop/code/LocalItem;
    :cond_3
    invoke-virtual {v3, v4}, Lcom/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 93
    move-object v5, v3

    .line 102
    .restart local v5    # "newLocal":Lcom/android/dx/rop/code/LocalItem;
    :goto_0
    iget-object v6, p0, Lcom/android/dx/ssa/MoveParamCombiner$1;->this$0:Lcom/android/dx/ssa/MoveParamCombiner;

    invoke-static {v6}, Lcom/android/dx/ssa/MoveParamCombiner;->access$100(Lcom/android/dx/ssa/MoveParamCombiner;)Lcom/android/dx/ssa/SsaMethod;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v6

    .line 103
    invoke-virtual {v6, v5}, Lcom/android/dx/ssa/SsaInsn;->setResultLocal(Lcom/android/dx/rop/code/LocalItem;)V

    .line 109
    new-instance v6, Lcom/android/dx/ssa/MoveParamCombiner$1$1;

    invoke-direct {v6, p0, v2, v1}, Lcom/android/dx/ssa/MoveParamCombiner$1$1;-><init>(Lcom/android/dx/ssa/MoveParamCombiner$1;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 127
    .local v6, "mapper":Lcom/android/dx/ssa/RegisterMapper;
    iget-object v7, p0, Lcom/android/dx/ssa/MoveParamCombiner$1;->this$0:Lcom/android/dx/ssa/MoveParamCombiner;

    .line 128
    invoke-static {v7}, Lcom/android/dx/ssa/MoveParamCombiner;->access$100(Lcom/android/dx/ssa/MoveParamCombiner;)Lcom/android/dx/ssa/SsaMethod;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object v7

    .line 131
    .local v7, "uses":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/ssa/SsaInsn;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_4

    .line 132
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/dx/ssa/SsaInsn;

    .line 133
    .local v9, "use":Lcom/android/dx/ssa/SsaInsn;
    invoke-virtual {v9, v6}, Lcom/android/dx/ssa/SsaInsn;->mapSourceRegisters(Lcom/android/dx/ssa/RegisterMapper;)V

    .line 131
    .end local v9    # "use":Lcom/android/dx/ssa/SsaInsn;
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 136
    .end local v8    # "i":I
    :cond_4
    iget-object v8, p0, Lcom/android/dx/ssa/MoveParamCombiner$1;->val$deletedInsns:Ljava/util/HashSet;

    invoke-virtual {v8, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v1    # "specA":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v2    # "specB":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v3    # "localA":Lcom/android/dx/rop/code/LocalItem;
    .end local v4    # "localB":Lcom/android/dx/rop/code/LocalItem;
    .end local v5    # "newLocal":Lcom/android/dx/rop/code/LocalItem;
    .end local v6    # "mapper":Lcom/android/dx/ssa/RegisterMapper;
    .end local v7    # "uses":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/ssa/SsaInsn;>;"
    :goto_2
    return-void

    .line 99
    .restart local v1    # "specA":Lcom/android/dx/rop/code/RegisterSpec;
    .restart local v2    # "specB":Lcom/android/dx/rop/code/RegisterSpec;
    .restart local v3    # "localA":Lcom/android/dx/rop/code/LocalItem;
    .restart local v4    # "localB":Lcom/android/dx/rop/code/LocalItem;
    :cond_5
    return-void
.end method

.method public visitPhiInsn(Lcom/android/dx/ssa/PhiInsn;)V
    .locals 0
    .param p1, "phi"    # Lcom/android/dx/ssa/PhiInsn;

    .line 66
    return-void
.end method
