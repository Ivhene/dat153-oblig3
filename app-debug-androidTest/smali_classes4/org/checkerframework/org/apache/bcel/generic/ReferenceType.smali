.class public abstract Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
.super Lorg/checkerframework/org/apache/bcel/generic/Type;
.source "ReferenceType.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .line 48
    const/16 v0, 0xe

    const-string v1, "<null object>"

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;-><init>(BLjava/lang/String;)V

    .line 49
    return-void
.end method

.method protected constructor <init>(BLjava/lang/String;)V
    .locals 0
    .param p1, "t"    # B
    .param p2, "s"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/org/apache/bcel/generic/Type;-><init>(BLjava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public firstCommonSuperclass(Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;)Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    .locals 17
    .param p1, "t"    # Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 288
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    return-object v1

    .line 291
    :cond_0
    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    return-object v0

    .line 294
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 295
    return-object v0

    .line 304
    :cond_2
    instance-of v2, v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    if-nez v2, :cond_c

    instance-of v2, v1, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    if-eqz v2, :cond_3

    goto/16 :goto_3

    .line 308
    :cond_3
    instance-of v2, v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v2, :cond_4

    move-object v2, v0

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->referencesInterface()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    instance-of v2, v1, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v2, :cond_6

    move-object v2, v1

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 309
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->referencesInterface()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 310
    :cond_5
    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->OBJECT:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    return-object v2

    .line 316
    :cond_6
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 317
    .local v2, "thiz":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    move-object v3, v1

    check-cast v3, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 318
    .local v3, "other":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/org/apache/bcel/Repository;->getSuperClasses(Ljava/lang/String;)[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v4

    .line 319
    .local v4, "thiz_sups":[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/checkerframework/org/apache/bcel/Repository;->getSuperClasses(Ljava/lang/String;)[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v5

    .line 320
    .local v5, "other_sups":[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    const/4 v6, 0x0

    if-eqz v4, :cond_b

    if-nez v5, :cond_7

    goto :goto_2

    .line 324
    :cond_7
    array-length v7, v4

    const/4 v8, 0x1

    add-int/2addr v7, v8

    new-array v7, v7, [Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 325
    .local v7, "this_sups":[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    array-length v9, v5

    add-int/2addr v9, v8

    new-array v9, v9, [Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 326
    .local v9, "t_sups":[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    array-length v10, v4

    const/4 v11, 0x0

    invoke-static {v4, v11, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    array-length v10, v5

    invoke-static {v5, v11, v9, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v8

    aput-object v8, v7, v11

    .line 329
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v8

    aput-object v8, v9, v11

    .line 330
    array-length v8, v9

    move v10, v11

    :goto_0
    if-ge v10, v8, :cond_a

    aget-object v12, v9, v10

    .line 331
    .local v12, "t_sup":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    array-length v13, v7

    move v14, v11

    :goto_1
    if-ge v14, v13, :cond_9

    aget-object v15, v7, v14

    .line 332
    .local v15, "this_sup":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v15, v12}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 333
    invoke-virtual {v15}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getInstance(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v6

    return-object v6

    .line 331
    .end local v15    # "this_sup":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 330
    .end local v12    # "t_sup":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 338
    :cond_a
    return-object v6

    .line 321
    .end local v7    # "this_sups":[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v9    # "t_sups":[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :cond_b
    :goto_2
    return-object v6

    .line 305
    .end local v2    # "thiz":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    .end local v3    # "other":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    .end local v4    # "thiz_sups":[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v5    # "other_sups":[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :cond_c
    :goto_3
    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->OBJECT:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    return-object v2
.end method

.method public getFirstCommonSuperclass(Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;)Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    .locals 17
    .param p1, "t"    # Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 203
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    return-object v1

    .line 206
    :cond_0
    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    return-object v0

    .line 209
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 210
    return-object v0

    .line 220
    :cond_2
    instance-of v2, v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    if-eqz v2, :cond_3

    instance-of v2, v1, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    if-eqz v2, :cond_3

    .line 221
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    .line 222
    .local v2, "arrType1":Lorg/checkerframework/org/apache/bcel/generic/ArrayType;
    move-object v3, v1

    check-cast v3, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    .line 223
    .local v3, "arrType2":Lorg/checkerframework/org/apache/bcel/generic/ArrayType;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getDimensions()I

    move-result v4

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getDimensions()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 224
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getBasicType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    instance-of v4, v4, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v4, :cond_3

    .line 225
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getBasicType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    instance-of v4, v4, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v4, :cond_3

    .line 226
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getBasicType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 227
    .local v4, "basicType1":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getBasicType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 228
    .local v5, "basicType2":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    new-instance v6, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getFirstCommonSuperclass(Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;)Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    move-result-object v7

    .line 229
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getDimensions()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;-><init>(Lorg/checkerframework/org/apache/bcel/generic/Type;I)V

    .line 228
    return-object v6

    .line 232
    .end local v2    # "arrType1":Lorg/checkerframework/org/apache/bcel/generic/ArrayType;
    .end local v3    # "arrType2":Lorg/checkerframework/org/apache/bcel/generic/ArrayType;
    .end local v4    # "basicType1":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    .end local v5    # "basicType2":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    :cond_3
    instance-of v2, v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    if-nez v2, :cond_d

    instance-of v2, v1, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    if-eqz v2, :cond_4

    goto/16 :goto_3

    .line 236
    :cond_4
    instance-of v2, v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v2, :cond_5

    move-object v2, v0

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->referencesInterfaceExact()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    instance-of v2, v1, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v2, :cond_7

    move-object v2, v1

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 237
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->referencesInterfaceExact()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 238
    :cond_6
    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->OBJECT:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    return-object v2

    .line 244
    :cond_7
    move-object v2, v0

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 245
    .local v2, "thiz":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    move-object v3, v1

    check-cast v3, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 246
    .local v3, "other":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/org/apache/bcel/Repository;->getSuperClasses(Ljava/lang/String;)[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v4

    .line 247
    .local v4, "thiz_sups":[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/checkerframework/org/apache/bcel/Repository;->getSuperClasses(Ljava/lang/String;)[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v5

    .line 248
    .local v5, "other_sups":[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    const/4 v6, 0x0

    if-eqz v4, :cond_c

    if-nez v5, :cond_8

    goto :goto_2

    .line 252
    :cond_8
    array-length v7, v4

    const/4 v8, 0x1

    add-int/2addr v7, v8

    new-array v7, v7, [Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 253
    .local v7, "this_sups":[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    array-length v9, v5

    add-int/2addr v9, v8

    new-array v9, v9, [Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 254
    .local v9, "t_sups":[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    array-length v10, v4

    const/4 v11, 0x0

    invoke-static {v4, v11, v7, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    array-length v10, v5

    invoke-static {v5, v11, v9, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v8

    aput-object v8, v7, v11

    .line 257
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v8

    aput-object v8, v9, v11

    .line 258
    array-length v8, v9

    move v10, v11

    :goto_0
    if-ge v10, v8, :cond_b

    aget-object v12, v9, v10

    .line 259
    .local v12, "t_sup":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    array-length v13, v7

    move v14, v11

    :goto_1
    if-ge v14, v13, :cond_a

    aget-object v15, v7, v14

    .line 260
    .local v15, "this_sup":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v15, v12}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 261
    invoke-virtual {v15}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getInstance(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v6

    return-object v6

    .line 259
    .end local v15    # "this_sup":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 258
    .end local v12    # "t_sup":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 266
    :cond_b
    return-object v6

    .line 249
    .end local v7    # "this_sups":[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v9    # "t_sups":[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :cond_c
    :goto_2
    return-object v6

    .line 233
    .end local v2    # "thiz":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    .end local v3    # "other":Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    .end local v4    # "thiz_sups":[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v5    # "other_sups":[Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :cond_d
    :goto_3
    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->OBJECT:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    return-object v2
.end method

.method public isAssignmentCompatibleWith(Lorg/checkerframework/org/apache/bcel/generic/Type;)Z
    .locals 6
    .param p1, "t"    # Lorg/checkerframework/org/apache/bcel/generic/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 82
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 83
    return v1

    .line 85
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    .line 86
    .local v0, "T":Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 87
    return v3

    .line 91
    :cond_1
    instance-of v2, p0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v2, :cond_4

    move-object v2, p0

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->referencesClassExact()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 95
    instance-of v2, v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->referencesClassExact()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 96
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    return v3

    .line 99
    :cond_2
    move-object v2, p0

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v2

    move-object v4, v0

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 100
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-static {v2, v4}, Lorg/checkerframework/org/apache/bcel/Repository;->instanceOf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    return v3

    .line 106
    :cond_3
    instance-of v2, v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v2, :cond_4

    move-object v2, v0

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->referencesInterfaceExact()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 107
    move-object v2, p0

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v2

    move-object v4, v0

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 108
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-static {v2, v4}, Lorg/checkerframework/org/apache/bcel/Repository;->implementationOf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 109
    return v3

    .line 115
    :cond_4
    instance-of v2, p0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v2, :cond_7

    move-object v2, p0

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->referencesInterfaceExact()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 118
    instance-of v2, v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v2, :cond_5

    move-object v2, v0

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->referencesClassExact()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 119
    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->OBJECT:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 120
    return v3

    .line 126
    :cond_5
    instance-of v2, v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v2, :cond_7

    move-object v2, v0

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->referencesInterfaceExact()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 127
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 128
    return v3

    .line 130
    :cond_6
    move-object v2, p0

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v2

    move-object v4, v0

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 131
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 130
    invoke-static {v2, v4}, Lorg/checkerframework/org/apache/bcel/Repository;->implementationOf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 132
    return v3

    .line 139
    :cond_7
    instance-of v2, p0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    if-eqz v2, :cond_c

    .line 142
    instance-of v2, v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v2, :cond_8

    move-object v2, v0

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->referencesClassExact()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 143
    sget-object v2, Lorg/checkerframework/org/apache/bcel/generic/Type;->OBJECT:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 144
    return v3

    .line 150
    :cond_8
    instance-of v2, v0, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    if-eqz v2, :cond_a

    .line 153
    move-object v2, p0

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getElementType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v2

    .line 154
    .local v2, "sc":Lorg/checkerframework/org/apache/bcel/generic/Type;
    move-object v4, v0

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/ArrayType;->getElementType()Lorg/checkerframework/org/apache/bcel/generic/Type;

    move-result-object v4

    .line 155
    .local v4, "tc":Lorg/checkerframework/org/apache/bcel/generic/Type;
    instance-of v5, v2, Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eqz v5, :cond_9

    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    if-eqz v5, :cond_9

    invoke-virtual {v2, v4}, Lorg/checkerframework/org/apache/bcel/generic/Type;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 156
    return v3

    .line 161
    :cond_9
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-eqz v5, :cond_a

    instance-of v5, v2, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    if-eqz v5, :cond_a

    move-object v5, v2

    check-cast v5, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    .line 162
    invoke-virtual {v5, v4}, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;->isAssignmentCompatibleWith(Lorg/checkerframework/org/apache/bcel/generic/Type;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 163
    return v3

    .line 172
    .end local v2    # "sc":Lorg/checkerframework/org/apache/bcel/generic/Type;
    .end local v4    # "tc":Lorg/checkerframework/org/apache/bcel/generic/Type;
    :cond_a
    instance-of v2, v0, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    if-eqz v2, :cond_c

    move-object v2, v0

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->referencesInterfaceExact()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 173
    invoke-static {}, Lorg/checkerframework/org/apache/bcel/Const;->getInterfacesImplementedByArrays()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 174
    .local v4, "element":Ljava/lang/String;
    invoke-static {v4}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getInstance(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 175
    return v3

    .line 177
    .end local v4    # "element":Ljava/lang/String;
    :cond_b
    goto :goto_0

    .line 180
    :cond_c
    return v1
.end method

.method public isCastableTo(Lorg/checkerframework/org/apache/bcel/generic/Type;)Z
    .locals 1
    .param p1, "t"    # Lorg/checkerframework/org/apache/bcel/generic/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 64
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Type;->NULL:Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;

    return v0

    .line 67
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;->isAssignmentCompatibleWith(Lorg/checkerframework/org/apache/bcel/generic/Type;)Z

    move-result v0

    return v0
.end method
