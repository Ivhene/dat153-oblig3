.class public final Lcom/android/dx/rop/cst/Zeroes;
.super Ljava/lang/Object;
.source "Zeroes.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static zeroFor(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/Constant;
    .locals 3
    .param p0, "type"    # Lcom/android/dx/rop/type/Type;

    .line 39
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->getBasicType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 50
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no zero for type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 51
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :pswitch_0
    sget-object v0, Lcom/android/dx/rop/cst/CstKnownNull;->THE_ONE:Lcom/android/dx/rop/cst/CstKnownNull;

    return-object v0

    .line 47
    :pswitch_1
    sget-object v0, Lcom/android/dx/rop/cst/CstShort;->VALUE_0:Lcom/android/dx/rop/cst/CstShort;

    return-object v0

    .line 46
    :pswitch_2
    sget-object v0, Lcom/android/dx/rop/cst/CstLong;->VALUE_0:Lcom/android/dx/rop/cst/CstLong;

    return-object v0

    .line 45
    :pswitch_3
    sget-object v0, Lcom/android/dx/rop/cst/CstInteger;->VALUE_0:Lcom/android/dx/rop/cst/CstInteger;

    return-object v0

    .line 44
    :pswitch_4
    sget-object v0, Lcom/android/dx/rop/cst/CstFloat;->VALUE_0:Lcom/android/dx/rop/cst/CstFloat;

    return-object v0

    .line 43
    :pswitch_5
    sget-object v0, Lcom/android/dx/rop/cst/CstDouble;->VALUE_0:Lcom/android/dx/rop/cst/CstDouble;

    return-object v0

    .line 42
    :pswitch_6
    sget-object v0, Lcom/android/dx/rop/cst/CstChar;->VALUE_0:Lcom/android/dx/rop/cst/CstChar;

    return-object v0

    .line 41
    :pswitch_7
    sget-object v0, Lcom/android/dx/rop/cst/CstByte;->VALUE_0:Lcom/android/dx/rop/cst/CstByte;

    return-object v0

    .line 40
    :pswitch_8
    sget-object v0, Lcom/android/dx/rop/cst/CstBoolean;->VALUE_FALSE:Lcom/android/dx/rop/cst/CstBoolean;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
