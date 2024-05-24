.class public Lcom/android/dx/cf/code/ValueAwareMachine;
.super Lcom/android/dx/cf/code/BaseMachine;
.source "ValueAwareMachine.java"


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/type/Prototype;)V
    .locals 0
    .param p1, "prototype"    # Lcom/android/dx/rop/type/Prototype;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/dx/cf/code/BaseMachine;-><init>(Lcom/android/dx/rop/type/Prototype;)V

    .line 39
    return-void
.end method


# virtual methods
.method public run(Lcom/android/dx/cf/code/Frame;II)V
    .locals 3
    .param p1, "frame"    # Lcom/android/dx/cf/code/Frame;
    .param p2, "offset"    # I
    .param p3, "opcode"    # I

    .line 44
    const/4 v0, 0x0

    sparse-switch p3, :sswitch_data_0

    .line 203
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldn\'t happen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 204
    invoke-static {p3}, Lcom/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :sswitch_0
    sget-object v0, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    invoke-virtual {p0, v0}, Lcom/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/android/dx/rop/type/TypeBearer;)V

    .line 200
    goto/16 :goto_1

    .line 194
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ValueAwareMachine;->getAuxCst()Lcom/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    .line 195
    .local v0, "type":Lcom/android/dx/rop/type/Type;
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getArrayType()Lcom/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/android/dx/rop/type/TypeBearer;)V

    .line 196
    goto/16 :goto_1

    .line 189
    .end local v0    # "type":Lcom/android/dx/rop/type/Type;
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ValueAwareMachine;->getAuxCst()Lcom/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    .line 190
    .restart local v0    # "type":Lcom/android/dx/rop/type/Type;
    invoke-virtual {p0, v0}, Lcom/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/android/dx/rop/type/TypeBearer;)V

    .line 191
    goto/16 :goto_1

    .line 182
    .end local v0    # "type":Lcom/android/dx/rop/type/Type;
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ValueAwareMachine;->getAuxCst()Lcom/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    .line 183
    .restart local v0    # "type":Lcom/android/dx/rop/type/Type;
    invoke-virtual {v0, p2}, Lcom/android/dx/rop/type/Type;->asUninitialized(I)Lcom/android/dx/rop/type/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/android/dx/rop/type/TypeBearer;)V

    .line 184
    goto/16 :goto_1

    .line 173
    .end local v0    # "type":Lcom/android/dx/rop/type/Type;
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ValueAwareMachine;->getAuxCst()Lcom/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/cst/CstCallSiteRef;

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstCallSiteRef;->getReturnType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    .line 174
    .restart local v0    # "type":Lcom/android/dx/rop/type/Type;
    sget-object v1, Lcom/android/dx/rop/type/Type;->VOID:Lcom/android/dx/rop/type/Type;

    if-ne v0, v1, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ValueAwareMachine;->clearResult()V

    goto/16 :goto_1

    .line 177
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/android/dx/rop/type/TypeBearer;)V

    .line 179
    goto/16 :goto_1

    .line 160
    .end local v0    # "type":Lcom/android/dx/rop/type/Type;
    :sswitch_5
    invoke-virtual {p0, v0}, Lcom/android/dx/cf/code/ValueAwareMachine;->arg(I)Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    .line 161
    .local v0, "thisType":Lcom/android/dx/rop/type/Type;
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->isUninitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    invoke-virtual {p1, v0}, Lcom/android/dx/cf/code/Frame;->makeInitialized(Lcom/android/dx/rop/type/Type;)V

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ValueAwareMachine;->getAuxCst()Lcom/android/dx/rop/cst/Constant;

    move-result-object v1

    check-cast v1, Lcom/android/dx/rop/type/TypeBearer;

    invoke-interface {v1}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v1

    .line 165
    .local v1, "type":Lcom/android/dx/rop/type/Type;
    sget-object v2, Lcom/android/dx/rop/type/Type;->VOID:Lcom/android/dx/rop/type/Type;

    if-ne v1, v2, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ValueAwareMachine;->clearResult()V

    goto :goto_1

    .line 168
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/android/dx/rop/type/TypeBearer;)V

    .line 170
    goto :goto_1

    .line 151
    .end local v0    # "thisType":Lcom/android/dx/rop/type/Type;
    .end local v1    # "type":Lcom/android/dx/rop/type/Type;
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ValueAwareMachine;->getAuxCst()Lcom/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/type/TypeBearer;

    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    .line 152
    .local v0, "type":Lcom/android/dx/rop/type/Type;
    sget-object v1, Lcom/android/dx/rop/type/Type;->VOID:Lcom/android/dx/rop/type/Type;

    if-ne v0, v1, :cond_3

    .line 153
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ValueAwareMachine;->clearResult()V

    goto :goto_1

    .line 155
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/android/dx/rop/type/TypeBearer;)V

    .line 157
    goto :goto_1

    .line 143
    .end local v0    # "type":Lcom/android/dx/rop/type/Type;
    :sswitch_7
    new-instance v0, Lcom/android/dx/cf/code/ReturnAddress;

    invoke-virtual {p0}, Lcom/android/dx/cf/code/ValueAwareMachine;->getAuxTarget()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/dx/cf/code/ReturnAddress;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/android/dx/rop/type/TypeBearer;)V

    .line 144
    goto :goto_1

    .line 134
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ValueAwareMachine;->clearResult()V

    .line 135
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ValueAwareMachine;->getAuxInt()I

    move-result v0

    .local v0, "pattern":I
    :goto_0
    if-eqz v0, :cond_4

    .line 136
    and-int/lit8 v1, v0, 0xf

    add-int/lit8 v1, v1, -0x1

    .line 137
    .local v1, "which":I
    invoke-virtual {p0, v1}, Lcom/android/dx/cf/code/ValueAwareMachine;->arg(I)Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/dx/cf/code/ValueAwareMachine;->addResult(Lcom/android/dx/rop/type/TypeBearer;)V

    .line 135
    .end local v1    # "which":I
    shr-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 139
    .end local v0    # "pattern":I
    :cond_4
    goto :goto_1

    .line 124
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ValueAwareMachine;->getAuxType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/android/dx/rop/type/TypeBearer;)V

    .line 125
    goto :goto_1

    .line 86
    :sswitch_a
    invoke-virtual {p0, v0}, Lcom/android/dx/cf/code/ValueAwareMachine;->arg(I)Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/android/dx/rop/type/TypeBearer;)V

    .line 87
    goto :goto_1

    .line 81
    :sswitch_b
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ValueAwareMachine;->getAuxCst()Lcom/android/dx/rop/cst/Constant;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/type/TypeBearer;

    invoke-virtual {p0, v0}, Lcom/android/dx/cf/code/ValueAwareMachine;->setResult(Lcom/android/dx/rop/type/TypeBearer;)V

    .line 82
    goto :goto_1

    .line 76
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ValueAwareMachine;->clearResult()V

    .line 77
    nop

    .line 208
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/dx/cf/code/ValueAwareMachine;->storeResults(Lcom/android/dx/cf/code/Frame;)V

    .line 209
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_c
        0x12 -> :sswitch_b
        0x14 -> :sswitch_b
        0x15 -> :sswitch_a
        0x2e -> :sswitch_9
        0x36 -> :sswitch_a
        0x4f -> :sswitch_c
        0x57 -> :sswitch_c
        0x58 -> :sswitch_c
        0x59 -> :sswitch_8
        0x5a -> :sswitch_8
        0x5b -> :sswitch_8
        0x5c -> :sswitch_8
        0x5d -> :sswitch_8
        0x5e -> :sswitch_8
        0x5f -> :sswitch_8
        0x60 -> :sswitch_9
        0x64 -> :sswitch_9
        0x68 -> :sswitch_9
        0x6c -> :sswitch_9
        0x70 -> :sswitch_9
        0x74 -> :sswitch_9
        0x78 -> :sswitch_9
        0x7a -> :sswitch_9
        0x7c -> :sswitch_9
        0x7e -> :sswitch_9
        0x80 -> :sswitch_9
        0x82 -> :sswitch_9
        0x84 -> :sswitch_9
        0x85 -> :sswitch_9
        0x86 -> :sswitch_9
        0x87 -> :sswitch_9
        0x88 -> :sswitch_9
        0x89 -> :sswitch_9
        0x8a -> :sswitch_9
        0x8b -> :sswitch_9
        0x8c -> :sswitch_9
        0x8d -> :sswitch_9
        0x8e -> :sswitch_9
        0x8f -> :sswitch_9
        0x90 -> :sswitch_9
        0x91 -> :sswitch_9
        0x92 -> :sswitch_9
        0x93 -> :sswitch_9
        0x94 -> :sswitch_9
        0x95 -> :sswitch_9
        0x96 -> :sswitch_9
        0x97 -> :sswitch_9
        0x98 -> :sswitch_9
        0x99 -> :sswitch_c
        0x9a -> :sswitch_c
        0x9b -> :sswitch_c
        0x9c -> :sswitch_c
        0x9d -> :sswitch_c
        0x9e -> :sswitch_c
        0x9f -> :sswitch_c
        0xa0 -> :sswitch_c
        0xa1 -> :sswitch_c
        0xa2 -> :sswitch_c
        0xa3 -> :sswitch_c
        0xa4 -> :sswitch_c
        0xa5 -> :sswitch_c
        0xa6 -> :sswitch_c
        0xa7 -> :sswitch_c
        0xa8 -> :sswitch_7
        0xa9 -> :sswitch_c
        0xab -> :sswitch_c
        0xac -> :sswitch_c
        0xb1 -> :sswitch_c
        0xb2 -> :sswitch_6
        0xb3 -> :sswitch_c
        0xb4 -> :sswitch_6
        0xb5 -> :sswitch_c
        0xb6 -> :sswitch_6
        0xb7 -> :sswitch_5
        0xb8 -> :sswitch_6
        0xb9 -> :sswitch_6
        0xba -> :sswitch_4
        0xbb -> :sswitch_3
        0xbc -> :sswitch_2
        0xbd -> :sswitch_1
        0xbe -> :sswitch_9
        0xbf -> :sswitch_c
        0xc0 -> :sswitch_2
        0xc1 -> :sswitch_0
        0xc2 -> :sswitch_c
        0xc3 -> :sswitch_c
        0xc5 -> :sswitch_2
        0xc6 -> :sswitch_c
        0xc7 -> :sswitch_c
    .end sparse-switch
.end method
