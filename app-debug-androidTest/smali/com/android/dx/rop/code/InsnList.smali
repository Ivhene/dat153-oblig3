.class public final Lcom/android/dx/rop/code/InsnList;
.super Lcom/android/dx/util/FixedSizeList;
.source "InsnList.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .line 32
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public contentEquals(Lcom/android/dx/rop/code/InsnList;)Z
    .locals 5
    .param p1, "b"    # Lcom/android/dx/rop/code/InsnList;

    .line 89
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/dx/rop/code/InsnList;->size()I

    move-result v1

    .line 93
    .local v1, "sz":I
    invoke-virtual {p1}, Lcom/android/dx/rop/code/InsnList;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    .line 95
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 96
    invoke-virtual {p0, v2}, Lcom/android/dx/rop/code/InsnList;->get(I)Lcom/android/dx/rop/code/Insn;

    move-result-object v3

    invoke-virtual {p1, v2}, Lcom/android/dx/rop/code/InsnList;->get(I)Lcom/android/dx/rop/code/Insn;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/dx/rop/code/Insn;->contentEquals(Lcom/android/dx/rop/code/Insn;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 97
    return v0

    .line 95
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v2    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public forEach(Lcom/android/dx/rop/code/Insn$Visitor;)V
    .locals 3
    .param p1, "visitor"    # Lcom/android/dx/rop/code/Insn$Visitor;

    .line 73
    invoke-virtual {p0}, Lcom/android/dx/rop/code/InsnList;->size()I

    move-result v0

    .line 75
    .local v0, "sz":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 76
    invoke-virtual {p0, v1}, Lcom/android/dx/rop/code/InsnList;->get(I)Lcom/android/dx/rop/code/Insn;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/dx/rop/code/Insn;->accept(Lcom/android/dx/rop/code/Insn$Visitor;)V

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public get(I)Lcom/android/dx/rop/code/Insn;
    .locals 1
    .param p1, "n"    # I

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/code/InsnList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/code/Insn;

    return-object v0
.end method

.method public getLast()Lcom/android/dx/rop/code/Insn;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/android/dx/rop/code/InsnList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/InsnList;->get(I)Lcom/android/dx/rop/code/Insn;

    move-result-object v0

    return-object v0
.end method

.method public set(ILcom/android/dx/rop/code/Insn;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "insn"    # Lcom/android/dx/rop/code/Insn;

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/rop/code/InsnList;->set0(ILjava/lang/Object;)V

    .line 55
    return-void
.end method

.method public withRegisterOffset(I)Lcom/android/dx/rop/code/InsnList;
    .locals 5
    .param p1, "delta"    # I

    .line 114
    invoke-virtual {p0}, Lcom/android/dx/rop/code/InsnList;->size()I

    move-result v0

    .line 115
    .local v0, "sz":I
    new-instance v1, Lcom/android/dx/rop/code/InsnList;

    invoke-direct {v1, v0}, Lcom/android/dx/rop/code/InsnList;-><init>(I)V

    .line 117
    .local v1, "result":Lcom/android/dx/rop/code/InsnList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 118
    invoke-virtual {p0, v2}, Lcom/android/dx/rop/code/InsnList;->get0(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/dx/rop/code/Insn;

    .line 119
    .local v3, "one":Lcom/android/dx/rop/code/Insn;
    if-eqz v3, :cond_0

    .line 120
    invoke-virtual {v3, p1}, Lcom/android/dx/rop/code/Insn;->withRegisterOffset(I)Lcom/android/dx/rop/code/Insn;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/android/dx/rop/code/InsnList;->set0(ILjava/lang/Object;)V

    .line 117
    .end local v3    # "one":Lcom/android/dx/rop/code/Insn;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/dx/rop/code/InsnList;->isImmutable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    invoke-virtual {v1}, Lcom/android/dx/rop/code/InsnList;->setImmutable()V

    .line 128
    :cond_2
    return-object v1
.end method
