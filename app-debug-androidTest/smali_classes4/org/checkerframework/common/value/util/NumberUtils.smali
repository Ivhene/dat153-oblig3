.class public Lorg/checkerframework/common/value/util/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static castNumbers(Ljavax/lang/model/type/TypeMirror;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Number;",
            ">;)",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 15
    .local p1, "numbers":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    if-nez p1, :cond_0

    .line 16
    const/4 v0, 0x0

    return-object v0

    .line 18
    :cond_0
    invoke-static {p0}, Lorg/checkerframework/common/value/util/NumberUtils;->unboxPrimitive(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    .line 19
    .local v0, "typeKind":Ljavax/lang/model/type/TypeKind;
    sget-object v1, Lorg/checkerframework/common/value/util/NumberUtils$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {v0}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 63
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljavax/lang/model/type/TypeKind;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :pswitch_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v1, "shorts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Short;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 59
    .local v3, "l":Ljava/lang/Number;
    invoke-virtual {v3}, Ljava/lang/Number;->shortValue()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .end local v3    # "l":Ljava/lang/Number;
    goto :goto_0

    .line 61
    :cond_1
    return-object v1

    .line 51
    .end local v1    # "shorts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Short;>;"
    :pswitch_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v1, "longs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 53
    .restart local v3    # "l":Ljava/lang/Number;
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .end local v3    # "l":Ljava/lang/Number;
    goto :goto_1

    .line 55
    :cond_2
    return-object v1

    .line 45
    .end local v1    # "longs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :pswitch_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v1, "ints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 47
    .restart local v3    # "l":Ljava/lang/Number;
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .end local v3    # "l":Ljava/lang/Number;
    goto :goto_2

    .line 49
    :cond_3
    return-object v1

    .line 39
    .end local v1    # "ints":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :pswitch_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v1, "floats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 41
    .restart local v3    # "l":Ljava/lang/Number;
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .end local v3    # "l":Ljava/lang/Number;
    goto :goto_3

    .line 43
    :cond_4
    return-object v1

    .line 33
    .end local v1    # "floats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    :pswitch_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v1, "doubles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 35
    .restart local v3    # "l":Ljava/lang/Number;
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .end local v3    # "l":Ljava/lang/Number;
    goto :goto_4

    .line 37
    :cond_5
    return-object v1

    .line 27
    .end local v1    # "doubles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    :pswitch_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v1, "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 29
    .restart local v3    # "l":Ljava/lang/Number;
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .end local v3    # "l":Ljava/lang/Number;
    goto :goto_5

    .line 31
    :cond_6
    return-object v1

    .line 21
    .end local v1    # "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :pswitch_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v1, "bytes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 23
    .restart local v3    # "l":Ljava/lang/Number;
    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .end local v3    # "l":Ljava/lang/Number;
    goto :goto_6

    .line 25
    :cond_7
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static castRange(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;
    .locals 3
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;
    .param p1, "range"    # Lorg/checkerframework/common/value/util/Range;

    .line 76
    invoke-static {p0}, Lorg/checkerframework/common/value/util/NumberUtils;->unboxPrimitive(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    .line 77
    .local v0, "typeKind":Ljavax/lang/model/type/TypeKind;
    sget-object v1, Lorg/checkerframework/common/value/util/NumberUtils$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-virtual {v0}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 91
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljavax/lang/model/type/TypeKind;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :pswitch_0
    invoke-virtual {p1}, Lorg/checkerframework/common/value/util/Range;->shortRange()Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    return-object v1

    .line 85
    :pswitch_1
    invoke-virtual {p1}, Lorg/checkerframework/common/value/util/Range;->intRange()Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    return-object v1

    .line 89
    :pswitch_2
    return-object p1

    .line 81
    :pswitch_3
    invoke-virtual {p1}, Lorg/checkerframework/common/value/util/Range;->charRange()Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    return-object v1

    .line 79
    :pswitch_4
    invoke-virtual {p1}, Lorg/checkerframework/common/value/util/Range;->byteRange()Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static unboxPrimitive(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeKind;
    .locals 2
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;

    .line 103
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_1

    .line 104
    move-object v0, p0

    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->getQualifiedName(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "typeString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "java.lang.Double"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "java.lang.Long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_2
    const-string v1, "java.lang.Byte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "java.lang.Boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v1, "java.lang.Character"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_5
    const-string v1, "java.lang.Short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_6
    const-string v1, "java.lang.Float"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_7
    const-string v1, "java.lang.Integer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 122
    :pswitch_0
    sget-object v1, Ljavax/lang/model/type/TypeKind;->SHORT:Ljavax/lang/model/type/TypeKind;

    return-object v1

    .line 120
    :pswitch_1
    sget-object v1, Ljavax/lang/model/type/TypeKind;->LONG:Ljavax/lang/model/type/TypeKind;

    return-object v1

    .line 118
    :pswitch_2
    sget-object v1, Ljavax/lang/model/type/TypeKind;->INT:Ljavax/lang/model/type/TypeKind;

    return-object v1

    .line 116
    :pswitch_3
    sget-object v1, Ljavax/lang/model/type/TypeKind;->FLOAT:Ljavax/lang/model/type/TypeKind;

    return-object v1

    .line 114
    :pswitch_4
    sget-object v1, Ljavax/lang/model/type/TypeKind;->DOUBLE:Ljavax/lang/model/type/TypeKind;

    return-object v1

    .line 112
    :pswitch_5
    sget-object v1, Ljavax/lang/model/type/TypeKind;->CHAR:Ljavax/lang/model/type/TypeKind;

    return-object v1

    .line 110
    :pswitch_6
    sget-object v1, Ljavax/lang/model/type/TypeKind;->BOOLEAN:Ljavax/lang/model/type/TypeKind;

    return-object v1

    .line 108
    :pswitch_7
    sget-object v1, Ljavax/lang/model/type/TypeKind;->BYTE:Ljavax/lang/model/type/TypeKind;

    return-object v1

    .line 125
    .end local v0    # "typeString":Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a988a96 -> :sswitch_7
        -0x1f76ce78 -> :sswitch_6
        -0x1ec16c58 -> :sswitch_5
        0x9415455 -> :sswitch_4
        0x148d6054 -> :sswitch_3
        0x17c0bc5c -> :sswitch_2
        0x17c521d0 -> :sswitch_1
        0x2d605225 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
