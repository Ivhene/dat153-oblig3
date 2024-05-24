.class public Lorg/checkerframework/common/value/ValueCheckerUtils;
.super Ljava/lang/Object;
.source "ValueCheckerUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertBoolVal(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .param p0, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 211
    .local p1, "newClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Boolean;

    .line 212
    const-string v1, "value"

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    .line 214
    .local v0, "bools":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    const-class v1, Ljava/lang/String;

    if-ne p1, v1, :cond_0

    .line 215
    invoke-static {v0}, Lorg/checkerframework/common/value/ValueCheckerUtils;->convertToStringVal(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 217
    :cond_0
    return-object v0
.end method

.method private static convertDoubleVal(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;Ljavax/lang/model/type/TypeMirror;)Ljava/util/List;
    .locals 6
    .param p0, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "newType"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 253
    .local p1, "newClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getDoubleValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 254
    .local v0, "doubles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    if-nez v0, :cond_0

    .line 255
    const/4 v1, 0x0

    return-object v1

    .line 257
    :cond_0
    const-class v1, Ljava/lang/String;

    if-ne p1, v1, :cond_1

    .line 258
    invoke-static {v0}, Lorg/checkerframework/common/value/ValueCheckerUtils;->convertToStringVal(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 259
    :cond_1
    const-class v1, Ljava/lang/Character;

    if-eq p1, v1, :cond_4

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 265
    :cond_2
    const-class v1, Ljava/lang/Boolean;

    if-eq p1, v1, :cond_3

    .line 269
    invoke-static {p2, v0}, Lorg/checkerframework/common/value/util/NumberUtils;->castNumbers(Ljavax/lang/model/type/TypeMirror;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 266
    :cond_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "ValueAnnotatedTypeFactory: can\'t convert double to boolean"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_4
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v1, "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    .line 262
    .local v3, "l":Ljava/lang/Double;
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    double-to-int v4, v4

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    .end local v3    # "l":Ljava/lang/Double;
    goto :goto_1

    .line 264
    :cond_5
    return-object v1
.end method

.method private static convertIntVal(Ljava/util/List;Ljava/lang/Class;Ljavax/lang/model/type/TypeMirror;)Ljava/util/List;
    .locals 5
    .param p2, "newType"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 233
    .local p0, "longs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p1, "newClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 234
    const/4 v0, 0x0

    return-object v0

    .line 236
    :cond_0
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_1

    .line 237
    invoke-static {p0}, Lorg/checkerframework/common/value/ValueCheckerUtils;->convertToStringVal(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 238
    :cond_1
    const-class v0, Ljava/lang/Character;

    if-eq p1, v0, :cond_4

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 244
    :cond_2
    const-class v0, Ljava/lang/Boolean;

    if-eq p1, v0, :cond_3

    .line 248
    invoke-static {p2, p0}, Lorg/checkerframework/common/value/util/NumberUtils;->castNumbers(Ljavax/lang/model/type/TypeMirror;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 245
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ValueAnnotatedTypeFactory: can\'t convert int to boolean"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_4
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v0, "chars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 241
    .local v2, "l":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v3, v3

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    .end local v2    # "l":Ljava/lang/Long;
    goto :goto_1

    .line 243
    :cond_5
    return-object v0
.end method

.method private static convertLongToType(JLjava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p0, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 144
    .local p2, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljava/lang/Integer;

    if-ne p2, v0, :cond_0

    .line 145
    long-to-int v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "convertedValue":Ljava/lang/Object;
    goto :goto_0

    .line 146
    .end local v0    # "convertedValue":Ljava/lang/Object;
    :cond_0
    const-class v0, Ljava/lang/Short;

    if-ne p2, v0, :cond_1

    .line 147
    long-to-int v0, p0

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    .restart local v0    # "convertedValue":Ljava/lang/Object;
    goto :goto_0

    .line 148
    .end local v0    # "convertedValue":Ljava/lang/Object;
    :cond_1
    const-class v0, Ljava/lang/Byte;

    if-ne p2, v0, :cond_2

    .line 149
    long-to-int v0, p0

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .restart local v0    # "convertedValue":Ljava/lang/Object;
    goto :goto_0

    .line 150
    .end local v0    # "convertedValue":Ljava/lang/Object;
    :cond_2
    const-class v0, Ljava/lang/Long;

    if-ne p2, v0, :cond_3

    .line 151
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .restart local v0    # "convertedValue":Ljava/lang/Object;
    goto :goto_0

    .line 152
    .end local v0    # "convertedValue":Ljava/lang/Object;
    :cond_3
    const-class v0, Ljava/lang/Double;

    if-ne p2, v0, :cond_4

    .line 153
    long-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .restart local v0    # "convertedValue":Ljava/lang/Object;
    goto :goto_0

    .line 154
    .end local v0    # "convertedValue":Ljava/lang/Object;
    :cond_4
    const-class v0, Ljava/lang/Float;

    if-ne p2, v0, :cond_5

    .line 155
    long-to-float v0, p0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .restart local v0    # "convertedValue":Ljava/lang/Object;
    goto :goto_0

    .line 156
    .end local v0    # "convertedValue":Ljava/lang/Object;
    :cond_5
    const-class v0, Ljava/lang/Character;

    if-ne p2, v0, :cond_6

    .line 157
    long-to-int v0, p0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 162
    .restart local v0    # "convertedValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 159
    .end local v0    # "convertedValue":Ljava/lang/Object;
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ValueCheckerUtils: unexpected class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static convertStringVal(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .param p0, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 221
    .local p1, "newClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getStringValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 222
    .local v0, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v1, [C

    if-ne p1, v1, :cond_1

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v1, "chars":Ljava/util/List;, "Ljava/util/List<[C>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 225
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    .end local v3    # "s":Ljava/lang/String;
    goto :goto_0

    .line 227
    :cond_0
    return-object v1

    .line 229
    .end local v1    # "chars":Ljava/util/List;, "Ljava/util/List<[C>;"
    :cond_1
    return-object v0
.end method

.method private static convertToStringVal(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 200
    .local p0, "origValues":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez p0, :cond_0

    .line 201
    const/4 v0, 0x0

    return-object v0

    .line 203
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v0, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 205
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 207
    :cond_1
    return-object v0
.end method

.method public static getArrayClassObject(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Class;
    .locals 2
    .param p0, "componentType"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 64
    sget-object v0, Lorg/checkerframework/common/value/ValueCheckerUtils$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 82
    const-class v0, [Ljava/lang/Object;

    return-object v0

    .line 80
    :pswitch_0
    const-class v0, [Z

    return-object v0

    .line 78
    :pswitch_1
    const-class v0, [F

    return-object v0

    .line 76
    :pswitch_2
    const-class v0, [D

    return-object v0

    .line 74
    :pswitch_3
    const-class v0, [C

    return-object v0

    .line 72
    :pswitch_4
    const-class v0, [B

    return-object v0

    .line 70
    :pswitch_5
    const-class v0, [S

    return-object v0

    .line 68
    :pswitch_6
    const-class v0, [J

    return-object v0

    .line 66
    :pswitch_7
    const-class v0, [I

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static getClassFromType(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Class;
    .locals 3
    .param p0, "type"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 26
    sget-object v0, Lorg/checkerframework/common/value/ValueCheckerUtils$1;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 59
    const-class v0, Ljava/lang/Object;

    return-object v0

    .line 47
    :pswitch_0
    move-object v0, p0

    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->getQualifiedName(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "typeString":Ljava/lang/String;
    const-string v1, "<nulltype>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const-class v1, Ljava/lang/Object;

    return-object v1

    .line 53
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedClassVersionError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 54
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Throwable;
    :goto_0
    const-class v2, Ljava/lang/Object;

    return-object v2

    .line 44
    .end local v0    # "typeString":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Throwable;
    :pswitch_1
    move-object v0, p0

    check-cast v0, Ljavax/lang/model/type/ArrayType;

    invoke-interface {v0}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getArrayClassObject(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 42
    :pswitch_2
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 40
    :pswitch_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 38
    :pswitch_4
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 36
    :pswitch_5
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 34
    :pswitch_6
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 32
    :pswitch_7
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 30
    :pswitch_8
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 28
    :pswitch_9
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
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

.method public static getExactStringValue(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/String;
    .locals 5
    .param p0, "tree"    # Lcom/sun/source/tree/Tree;
    .param p1, "factory"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 366
    invoke-virtual {p1, p0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 367
    .local v0, "valueType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    const-class v1, Lorg/checkerframework/common/value/qual/StringVal;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    const-class v1, Lorg/checkerframework/common/value/qual/StringVal;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 369
    .local v1, "valueAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValueOfAnnotationWithStringArgument(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v2

    .line 370
    .local v2, "possibleValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 371
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 374
    .end local v1    # "valueAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v2    # "possibleValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getExactValue(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Long;
    .locals 6
    .param p0, "tree"    # Lcom/sun/source/tree/Tree;
    .param p1, "factory"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 332
    invoke-virtual {p1, p0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 333
    .local v0, "valueType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-static {v0, p1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getPossibleValues(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    .line 334
    .local v1, "possibleValues":Lorg/checkerframework/common/value/util/Range;
    if-eqz v1, :cond_0

    iget-wide v2, v1, Lorg/checkerframework/common/value/util/Range;->from:J

    iget-wide v4, v1, Lorg/checkerframework/common/value/util/Range;->to:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 335
    iget-wide v2, v1, Lorg/checkerframework/common/value/util/Range;->from:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    .line 337
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getExactValue(Ljavax/lang/model/element/Element;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Long;
    .locals 6
    .param p0, "element"    # Ljavax/lang/model/element/Element;
    .param p1, "factory"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 350
    invoke-virtual {p1, p0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Ljavax/lang/model/element/Element;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 351
    .local v0, "valueType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-static {v0, p1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getPossibleValues(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    .line 352
    .local v1, "possibleValues":Lorg/checkerframework/common/value/util/Range;
    if-eqz v1, :cond_0

    iget-wide v2, v1, Lorg/checkerframework/common/value/util/Range;->from:J

    iget-wide v4, v1, Lorg/checkerframework/common/value/util/Range;->to:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 353
    iget-wide v2, v1, Lorg/checkerframework/common/value/util/Range;->from:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    .line 355
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getLengthsForStringValues(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 284
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v0, "lengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 286
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    .end local v2    # "str":Ljava/lang/String;
    goto :goto_0

    .line 288
    :cond_0
    invoke-static {v0}, Lorg/checkerframework/common/value/ValueCheckerUtils;->removeDuplicates(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getMaxValue(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Long;
    .locals 4
    .param p0, "tree"    # Lcom/sun/source/tree/Tree;
    .param p1, "factory"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 398
    invoke-virtual {p1, p0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 399
    .local v0, "valueType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-static {v0, p1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getPossibleValues(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    .line 400
    .local v1, "possibleValues":Lorg/checkerframework/common/value/util/Range;
    if-eqz v1, :cond_0

    .line 401
    iget-wide v2, v1, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    .line 403
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getMinLen(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)I
    .locals 2
    .param p0, "tree"    # Lcom/sun/source/tree/Tree;
    .param p1, "valueAnnotatedTypeFactory"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 427
    invoke-virtual {p1, p0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 428
    .local v0, "minLenType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p1, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getMinLenValue(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)I

    move-result v1

    return v1
.end method

.method public static getMinLenFromTree(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Integer;
    .locals 8
    .param p0, "tree"    # Lcom/sun/source/tree/Tree;
    .param p1, "valueATF"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 411
    invoke-virtual {p1, p0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 412
    .local v0, "minLenType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-virtual {p1, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getMinimumIntegralValue(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Long;

    move-result-object v1

    .line 413
    .local v1, "min":Ljava/lang/Long;
    if-nez v1, :cond_0

    .line 414
    const/4 v2, 0x0

    return-object v2

    .line 416
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v6, 0x7fffffff

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    .line 417
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 419
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public static getMinValue(Lcom/sun/source/tree/Tree;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljava/lang/Long;
    .locals 4
    .param p0, "tree"    # Lcom/sun/source/tree/Tree;
    .param p1, "factory"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 383
    invoke-virtual {p1, p0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotatedType(Lcom/sun/source/tree/Tree;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    .line 384
    .local v0, "valueType":Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    invoke-static {v0, p1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getPossibleValues(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    .line 385
    .local v1, "possibleValues":Lorg/checkerframework/common/value/util/Range;
    if-eqz v1, :cond_0

    .line 386
    iget-wide v2, v1, Lorg/checkerframework/common/value/util/Range;->from:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2

    .line 388
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getPossibleValues(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Lorg/checkerframework/common/value/util/Range;
    .locals 2
    .param p0, "valueType"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "valueAnnotatedTypeFactory"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 312
    invoke-virtual {p0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotations()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->isIntRange(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    const-class v0, Lorg/checkerframework/common/value/qual/IntRange;

    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    return-object v0

    .line 315
    :cond_0
    const-class v0, Lorg/checkerframework/common/value/qual/IntVal;

    .line 316
    invoke-virtual {p0, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getAnnotation(Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getIntValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 317
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v0, :cond_1

    .line 318
    invoke-static {v0}, Lorg/checkerframework/common/value/util/Range;->create(Ljava/util/Collection;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    return-object v1

    .line 320
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getRangeFromValues(Ljava/util/List;)Lorg/checkerframework/common/value/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Number;",
            ">;)",
            "Lorg/checkerframework/common/value/util/Range;"
        }
    .end annotation

    .line 127
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    if-nez p0, :cond_0

    .line 128
    const/4 v0, 0x0

    return-object v0

    .line 129
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0

    .line 132
    :cond_1
    invoke-static {p0}, Lorg/checkerframework/common/value/util/Range;->create(Ljava/util/Collection;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public static getValueOfAnnotationWithStringArgument(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;
    .locals 3
    .param p0, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 299
    const-string v0, "value"

    invoke-static {p0, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->hasElementValue(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 300
    const/4 v0, 0x0

    return-object v0

    .line 302
    :cond_0
    const-class v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getElementValueArray(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/CharSequence;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getValuesCastedToType(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)Ljava/util/List;
    .locals 4
    .param p0, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p1, "castTo"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 94
    invoke-static {p1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getClassFromType(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Class;

    move-result-object v0

    .line 96
    .local v0, "castType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "org.checkerframework.common.value.qual.IntRange"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "org.checkerframework.common.value.qual.StringVal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v2, "org.checkerframework.common.value.qual.BoolVal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v2, "org.checkerframework.common.value.qual.DoubleVal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_4
    const-string v2, "org.checkerframework.common.value.qual.ArrayLen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_5
    const-string v2, "org.checkerframework.common.value.qual.IntVal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_6
    const-string v2, "org.checkerframework.common.value.qual.BottomVal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 120
    const/4 v1, 0x0

    .local v1, "values":Ljava/util/List;, "Ljava/util/List<*>;"
    goto :goto_2

    .line 117
    .end local v1    # "values":Ljava/util/List;, "Ljava/util/List<*>;"
    :pswitch_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .restart local v1    # "values":Ljava/util/List;, "Ljava/util/List<*>;"
    goto :goto_2

    .line 113
    .end local v1    # "values":Ljava/util/List;, "Ljava/util/List<*>;"
    :pswitch_1
    invoke-static {p0, v0}, Lorg/checkerframework/common/value/ValueCheckerUtils;->convertBoolVal(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 114
    .restart local v1    # "values":Ljava/util/List;, "Ljava/util/List<*>;"
    goto :goto_2

    .line 110
    .end local v1    # "values":Ljava/util/List;, "Ljava/util/List<*>;"
    :pswitch_2
    invoke-static {p0, v0}, Lorg/checkerframework/common/value/ValueCheckerUtils;->convertStringVal(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 111
    .restart local v1    # "values":Ljava/util/List;, "Ljava/util/List<*>;"
    goto :goto_2

    .line 105
    .end local v1    # "values":Ljava/util/List;, "Ljava/util/List<*>;"
    :pswitch_3
    invoke-static {p0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    .line 106
    .local v1, "range":Lorg/checkerframework/common/value/util/Range;
    const-class v2, Ljava/lang/Long;

    invoke-static {v1, v2}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValuesFromRange(Lorg/checkerframework/common/value/util/Range;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 107
    .local v2, "rangeValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v2, v0, p1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->convertIntVal(Ljava/util/List;Ljava/lang/Class;Ljavax/lang/model/type/TypeMirror;)Ljava/util/List;

    move-result-object v3

    .line 108
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v1, v3

    goto :goto_2

    .line 101
    .end local v1    # "range":Lorg/checkerframework/common/value/util/Range;
    .end local v2    # "rangeValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v3    # "values":Ljava/util/List;, "Ljava/util/List<*>;"
    :pswitch_4
    invoke-static {p0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getIntValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 102
    .local v1, "longs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v1, v0, p1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->convertIntVal(Ljava/util/List;Ljava/lang/Class;Ljavax/lang/model/type/TypeMirror;)Ljava/util/List;

    move-result-object v2

    .line 103
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v1, v2

    goto :goto_2

    .line 98
    .end local v1    # "longs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v2    # "values":Ljava/util/List;, "Ljava/util/List<*>;"
    :pswitch_5
    invoke-static {p0, v0, p1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->convertDoubleVal(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Class;Ljavax/lang/model/type/TypeMirror;)Ljava/util/List;

    move-result-object v1

    .line 99
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<*>;"
    nop

    .line 122
    :goto_2
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x1e015684 -> :sswitch_6
        -0x1b4e6e14 -> :sswitch_5
        0x10601bb6 -> :sswitch_4
        0x20889e16 -> :sswitch_3
        0x40ad45dd -> :sswitch_2
        0x454d51d6 -> :sswitch_1
        0x7e5c7d48 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getValuesFromRange(Lorg/checkerframework/common/value/util/Range;Ljava/lang/Class;)Ljava/util/List;
    .locals 8
    .param p0, "range"    # Lorg/checkerframework/common/value/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/common/value/util/Range;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 176
    .local p1, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p0, :cond_3

    const-wide/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/common/value/util/Range;->isWiderThan(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 179
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/common/value/util/Range;->isNothing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    return-object v0

    .line 186
    :cond_1
    iget-wide v1, p0, Lorg/checkerframework/common/value/util/Range;->to:J

    iget-wide v3, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    sub-long/2addr v1, v3

    .line 192
    .local v1, "boundDifference":J
    const-wide/16 v3, 0x0

    .local v3, "offset":J
    :goto_0
    cmp-long v5, v3, v1

    if-gtz v5, :cond_2

    .line 193
    iget-wide v5, p0, Lorg/checkerframework/common/value/util/Range;->from:J

    add-long/2addr v5, v3

    .line 194
    .local v5, "value":J
    invoke-static {v5, v6, p1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->convertLongToType(JLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .end local v5    # "value":J
    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_0

    .line 196
    .end local v3    # "offset":J
    :cond_2
    return-object v0

    .line 177
    .end local v0    # "values":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v1    # "boundDifference":J
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static removeDuplicates(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 273
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 274
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method
