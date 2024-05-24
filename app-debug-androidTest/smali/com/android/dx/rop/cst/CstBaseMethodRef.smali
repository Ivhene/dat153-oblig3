.class public abstract Lcom/android/dx/rop/cst/CstBaseMethodRef;
.super Lcom/android/dx/rop/cst/CstMemberRef;
.source "CstBaseMethodRef.java"


# instance fields
.field private instancePrototype:Lcom/android/dx/rop/type/Prototype;

.field private final prototype:Lcom/android/dx/rop/type/Prototype;


# direct methods
.method constructor <init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V
    .locals 2
    .param p1, "definingClass"    # Lcom/android/dx/rop/cst/CstType;
    .param p2, "nat"    # Lcom/android/dx/rop/cst/CstNat;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/dx/rop/cst/CstMemberRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->getNat()Lcom/android/dx/rop/cst/CstNat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstNat;->getDescriptor()Lcom/android/dx/rop/cst/CstString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "descriptor":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->isSignaturePolymorphic()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-static {v0}, Lcom/android/dx/rop/type/Prototype;->fromDescriptor(Ljava/lang/String;)Lcom/android/dx/rop/type/Prototype;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/android/dx/rop/type/Prototype;

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {v0}, Lcom/android/dx/rop/type/Prototype;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Prototype;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/android/dx/rop/type/Prototype;

    .line 60
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->instancePrototype:Lcom/android/dx/rop/type/Prototype;

    .line 61
    return-void
.end method


# virtual methods
.method protected final compareTo0(Lcom/android/dx/rop/cst/Constant;)I
    .locals 4
    .param p1, "other"    # Lcom/android/dx/rop/cst/Constant;

    .line 99
    invoke-super {p0, p1}, Lcom/android/dx/rop/cst/CstMemberRef;->compareTo0(Lcom/android/dx/rop/cst/Constant;)I

    move-result v0

    .line 101
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    .line 102
    return v0

    .line 105
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/dx/rop/cst/CstBaseMethodRef;

    .line 106
    .local v1, "otherMethod":Lcom/android/dx/rop/cst/CstBaseMethodRef;
    iget-object v2, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/android/dx/rop/type/Prototype;

    iget-object v3, v1, Lcom/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/android/dx/rop/type/Prototype;

    invoke-virtual {v2, v3}, Lcom/android/dx/rop/type/Prototype;->compareTo(Lcom/android/dx/rop/type/Prototype;)I

    move-result v2

    return v2
.end method

.method public final getParameterWordCount(Z)I
    .locals 1
    .param p1, "isStatic"    # Z

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->getPrototype(Z)Lcom/android/dx/rop/type/Prototype;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/type/StdTypeList;->getWordCount()I

    move-result v0

    return v0
.end method

.method public final getPrototype()Lcom/android/dx/rop/type/Prototype;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/android/dx/rop/type/Prototype;

    return-object v0
.end method

.method public final getPrototype(Z)Lcom/android/dx/rop/type/Prototype;
    .locals 2
    .param p1, "isStatic"    # Z

    .line 85
    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/android/dx/rop/type/Prototype;

    return-object v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->instancePrototype:Lcom/android/dx/rop/type/Prototype;

    if-nez v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->getDefiningClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    .line 90
    .local v0, "thisType":Lcom/android/dx/rop/type/Type;
    iget-object v1, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/android/dx/rop/type/Prototype;

    invoke-virtual {v1, v0}, Lcom/android/dx/rop/type/Prototype;->withFirstParameter(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/Prototype;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->instancePrototype:Lcom/android/dx/rop/type/Prototype;

    .line 92
    .end local v0    # "thisType":Lcom/android/dx/rop/type/Type;
    :cond_1
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->instancePrototype:Lcom/android/dx/rop/type/Prototype;

    return-object v0
.end method

.method public final getType()Lcom/android/dx/rop/type/Type;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstBaseMethodRef;->prototype:Lcom/android/dx/rop/type/Prototype;

    invoke-virtual {v0}, Lcom/android/dx/rop/type/Prototype;->getReturnType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    return-object v0
.end method

.method public final isClassInit()Z
    .locals 1

    .line 159
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->getNat()Lcom/android/dx/rop/cst/CstNat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstNat;->isClassInit()Z

    move-result v0

    return v0
.end method

.method public final isInstanceInit()Z
    .locals 1

    .line 147
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->getNat()Lcom/android/dx/rop/cst/CstNat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstNat;->isInstanceInit()Z

    move-result v0

    return v0
.end method

.method public final isSignaturePolymorphic()Z
    .locals 6

    .line 171
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->getDefiningClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v0

    .line 172
    .local v0, "definingClass":Lcom/android/dx/rop/cst/CstType;
    sget-object v1, Lcom/android/dx/rop/cst/CstType;->METHOD_HANDLE:Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {v0, v1}, Lcom/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->getNat()Lcom/android/dx/rop/cst/CstNat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstNat;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v5, "invokeExact"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v4

    goto :goto_0

    :sswitch_1
    const-string v5, "invoke"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v3

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 176
    goto/16 :goto_2

    :pswitch_0
    return v4

    .line 178
    :cond_1
    sget-object v1, Lcom/android/dx/rop/cst/CstType;->VAR_HANDLE:Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {v0, v1}, Lcom/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 179
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstBaseMethodRef;->getNat()Lcom/android/dx/rop/cst/CstNat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstNat;->getName()Lcom/android/dx/rop/cst/CstString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    :cond_2
    goto/16 :goto_1

    :sswitch_2
    const-string v5, "weakCompareAndSetRelease"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0x1e

    goto/16 :goto_1

    :sswitch_3
    const-string v5, "getAndSetAcquire"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0x13

    goto/16 :goto_1

    :sswitch_4
    const-string v5, "compareAndExchange"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v3

    goto/16 :goto_1

    :sswitch_5
    const-string v5, "getAndBitwiseOr"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0xc

    goto/16 :goto_1

    :sswitch_6
    const-string v5, "getAndBitwiseXorAcquire"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_7
    const-string v5, "getAndAddAcquire"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_8
    const-string v5, "compareAndExchangeAcquire"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v2, v4

    goto/16 :goto_1

    :sswitch_9
    const-string v5, "getOpaque"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0x15

    goto/16 :goto_1

    :sswitch_a
    const-string v5, "setOpaque"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0x18

    goto/16 :goto_1

    :sswitch_b
    const-string v5, "getAndBitwiseAndAcquire"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_c
    const-string v5, "getAndSet"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_d
    const-string v5, "getAndAdd"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x6

    goto/16 :goto_1

    :sswitch_e
    const-string v5, "getVolatile"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0x16

    goto/16 :goto_1

    :sswitch_f
    const-string v5, "setVolatile"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0x1a

    goto/16 :goto_1

    :sswitch_10
    const-string v5, "getAndBitwiseOrAcquire"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_11
    const-string v5, "set"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0x17

    goto/16 :goto_1

    :sswitch_12
    const-string v5, "get"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x4

    goto/16 :goto_1

    :sswitch_13
    const-string v5, "getAndSetRelease"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0x14

    goto/16 :goto_1

    :sswitch_14
    const-string v5, "getAcquire"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x5

    goto/16 :goto_1

    :sswitch_15
    const-string v5, "setRelease"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0x19

    goto/16 :goto_1

    :sswitch_16
    const-string v5, "weakCompareAndSetAcquire"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0x1c

    goto/16 :goto_1

    :sswitch_17
    const-string v5, "weakCompareAndSetPlain"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0x1d

    goto :goto_1

    :sswitch_18
    const-string v5, "getAndBitwiseXorRelease"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0x11

    goto :goto_1

    :sswitch_19
    const-string v5, "getAndBitwiseXor"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0xf

    goto :goto_1

    :sswitch_1a
    const-string v5, "getAndBitwiseAnd"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0x9

    goto :goto_1

    :sswitch_1b
    const-string v5, "getAndAddRelease"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0x8

    goto :goto_1

    :sswitch_1c
    const-string v5, "weakCompareAndSet"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0x1b

    goto :goto_1

    :sswitch_1d
    const-string v5, "compareAndExchangeRelease"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1e
    const-string v5, "compareAndSet"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_1f
    const-string v5, "getAndBitwiseAndRelease"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0xb

    goto :goto_1

    :sswitch_20
    const-string v5, "getAndBitwiseOrRelease"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v2, 0xe

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_2

    .line 211
    :pswitch_1
    return v4

    .line 214
    :cond_3
    :goto_2
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x468dbb88 -> :sswitch_1
        0x38222167 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x74054ecc -> :sswitch_20
        -0x64896c60 -> :sswitch_1f
        -0x639aefb0 -> :sswitch_1e
        -0x4d038cae -> :sswitch_1d
        -0x42a27c48 -> :sswitch_1c
        -0x41bf8e59 -> :sswitch_1b
        -0x3d910599 -> :sswitch_1a
        -0x3d90af15 -> :sswitch_19
        -0x2f5b5f64 -> :sswitch_18
        -0x21ce070e -> :sswitch_17
        -0xe5aaa02 -> :sswitch_16
        -0xdc04ebb -> :sswitch_15
        -0x7976360 -> :sswitch_14
        -0x23e5d3a -> :sswitch_13
        0x18f56 -> :sswitch_12
        0x1bc62 -> :sswitch_11
        0x594ea03 -> :sswitch_10
        0x6099c1e -> :sswitch_f
        0xb513b12 -> :sswitch_e
        0x10d9c640 -> :sswitch_d
        0x10da0a01 -> :sswitch_c
        0x1510cc6f -> :sswitch_b
        0x1c0e5b23 -> :sswitch_a
        0x28d92717 -> :sswitch_9
        0x2c96ac21 -> :sswitch_8
        0x37daaa76 -> :sswitch_7
        0x4a3ed96b -> :sswitch_6
        0x50983b53 -> :sswitch_5
        0x58737ef5 -> :sswitch_4
        0x775bdb95 -> :sswitch_3
        0x780b1d2f -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
