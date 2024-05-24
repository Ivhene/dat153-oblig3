.class public final Lorg/checkerframework/org/apache/bcel/generic/BasicType;
.super Lorg/checkerframework/org/apache/bcel/generic/Type;
.source "BasicType.java"


# direct methods
.method constructor <init>(B)V
    .locals 3
    .param p1, "type"    # B

    .line 38
    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/Const;->getShortTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/generic/Type;-><init>(BLjava/lang/String;)V

    .line 39
    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    const/16 v0, 0xc

    if-gt p1, v0, :cond_0

    .line 42
    return-void

    .line 40
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getType(B)Lorg/checkerframework/org/apache/bcel/generic/BasicType;
    .locals 3
    .param p0, "type"    # B

    .line 47
    packed-switch p0, :pswitch_data_0

    .line 67
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :pswitch_0
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/BasicType;->VOID:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 61
    :pswitch_1
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/BasicType;->LONG:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 59
    :pswitch_2
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/BasicType;->INT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 55
    :pswitch_3
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/BasicType;->SHORT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 53
    :pswitch_4
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/BasicType;->BYTE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 63
    :pswitch_5
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/BasicType;->DOUBLE:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 65
    :pswitch_6
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/BasicType;->FLOAT:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 57
    :pswitch_7
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/BasicType;->CHAR:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    .line 51
    :pswitch_8
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/BasicType;->BOOLEAN:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
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


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "_type"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 84
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/BasicType;->getType()B

    move-result v0

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/BasicType;->getType()B

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 76
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/generic/Type;->getType()B

    move-result v0

    return v0
.end method
