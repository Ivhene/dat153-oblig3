.class public final Lcom/android/dx/rop/code/PlainInsn;
.super Lcom/android/dx/rop/code/Insn;
.source "PlainInsn.java"


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V
    .locals 1
    .param p1, "opcode"    # Lcom/android/dx/rop/code/Rop;
    .param p2, "position"    # Lcom/android/dx/rop/code/SourcePosition;
    .param p3, "result"    # Lcom/android/dx/rop/code/RegisterSpec;
    .param p4, "source"    # Lcom/android/dx/rop/code/RegisterSpec;

    .line 68
    invoke-static {p4}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V
    .locals 3
    .param p1, "opcode"    # Lcom/android/dx/rop/code/Rop;
    .param p2, "position"    # Lcom/android/dx/rop/code/SourcePosition;
    .param p3, "result"    # Lcom/android/dx/rop/code/RegisterSpec;
    .param p4, "sources"    # Lcom/android/dx/rop/code/RegisterSpecList;

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/dx/rop/code/Insn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 44
    invoke-virtual {p1}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 51
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 47
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "opcode with invalid branchingness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t mix branchingness with result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public accept(Lcom/android/dx/rop/code/Insn$Visitor;)V
    .locals 0
    .param p1, "visitor"    # Lcom/android/dx/rop/code/Insn$Visitor;

    .line 80
    invoke-interface {p1, p0}, Lcom/android/dx/rop/code/Insn$Visitor;->visitPlainInsn(Lcom/android/dx/rop/code/PlainInsn;)V

    .line 81
    return-void
.end method

.method public getCatches()Lcom/android/dx/rop/type/TypeList;
    .locals 1

    .line 74
    sget-object v0, Lcom/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/android/dx/rop/type/StdTypeList;

    return-object v0
.end method

.method public withAddedCatch(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/code/Insn;
    .locals 2
    .param p1, "type"    # Lcom/android/dx/rop/type/Type;

    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withNewRegisters(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/rop/code/Insn;
    .locals 3
    .param p1, "result"    # Lcom/android/dx/rop/code/RegisterSpec;
    .param p2, "sources"    # Lcom/android/dx/rop/code/RegisterSpecList;

    .line 152
    new-instance v0, Lcom/android/dx/rop/code/PlainInsn;

    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    return-object v0
.end method

.method public withRegisterOffset(I)Lcom/android/dx/rop/code/Insn;
    .locals 5
    .param p1, "delta"    # I

    .line 92
    new-instance v0, Lcom/android/dx/rop/code/PlainInsn;

    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v2

    .line 93
    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/dx/rop/code/RegisterSpec;->withOffset(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 94
    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->withOffset(I)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 92
    return-object v0
.end method

.method public withSourceLiteral()Lcom/android/dx/rop/code/Insn;
    .locals 14

    .line 100
    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 101
    .local v0, "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v1

    .line 103
    .local v1, "szSources":I
    if-nez v1, :cond_0

    .line 104
    return-object p0

    .line 107
    :cond_0
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v2

    .line 109
    .local v2, "lastType":Lcom/android/dx/rop/type/TypeBearer;
    invoke-interface {v2}, Lcom/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v3

    if-nez v3, :cond_2

    .line 111
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v3

    .line 112
    .local v3, "firstType":Lcom/android/dx/rop/type/TypeBearer;
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    invoke-interface {v3}, Lcom/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 113
    move-object v4, v3

    check-cast v4, Lcom/android/dx/rop/cst/Constant;

    .line 114
    .local v4, "cst":Lcom/android/dx/rop/cst/Constant;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->withoutFirst()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v11

    .line 115
    .local v11, "newSources":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    invoke-static {v5, v6, v11, v4}, Lcom/android/dx/rop/code/Rops;->ropFor(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/rop/code/Rop;

    move-result-object v12

    .line 117
    .local v12, "newRop":Lcom/android/dx/rop/code/Rop;
    new-instance v13, Lcom/android/dx/rop/code/PlainCstInsn;

    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v8

    move-object v5, v13

    move-object v6, v12

    move-object v9, v11

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    return-object v13

    .line 120
    .end local v4    # "cst":Lcom/android/dx/rop/cst/Constant;
    .end local v11    # "newSources":Lcom/android/dx/rop/code/RegisterSpecList;
    .end local v12    # "newRop":Lcom/android/dx/rop/code/Rop;
    :cond_1
    return-object p0

    .line 123
    .end local v3    # "firstType":Lcom/android/dx/rop/type/TypeBearer;
    :cond_2
    move-object v3, v2

    check-cast v3, Lcom/android/dx/rop/cst/Constant;

    .line 125
    .local v3, "cst":Lcom/android/dx/rop/cst/Constant;
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->withoutLast()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v10

    .line 130
    .local v10, "newSources":Lcom/android/dx/rop/code/RegisterSpecList;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v4

    .line 131
    .local v4, "opcode":I
    const/16 v5, 0xf

    if-ne v4, v5, :cond_3

    instance-of v5, v3, Lcom/android/dx/rop/cst/CstInteger;

    if-eqz v5, :cond_3

    .line 132
    const/16 v4, 0xe

    .line 133
    move-object v5, v3

    check-cast v5, Lcom/android/dx/rop/cst/CstInteger;

    invoke-virtual {v5}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v5

    neg-int v5, v5

    invoke-static {v5}, Lcom/android/dx/rop/cst/CstInteger;->make(I)Lcom/android/dx/rop/cst/CstInteger;

    move-result-object v5

    move-object v3, v5

    .line 135
    :cond_3
    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    invoke-static {v4, v5, v10, v3}, Lcom/android/dx/rop/code/Rops;->ropFor(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/rop/code/Rop;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v4    # "opcode":I
    .local v5, "newRop":Lcom/android/dx/rop/code/Rop;
    nop

    .line 141
    new-instance v11, Lcom/android/dx/rop/code/PlainCstInsn;

    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v6

    .line 142
    invoke-virtual {p0}, Lcom/android/dx/rop/code/PlainInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    move-object v4, v11

    move-object v8, v10

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    .line 141
    return-object v11

    .line 136
    .end local v5    # "newRop":Lcom/android/dx/rop/code/Rop;
    :catch_0
    move-exception v4

    .line 138
    .local v4, "ex":Ljava/lang/IllegalArgumentException;
    return-object p0
.end method
