.class Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
.super Ljava/lang/Object;
.source "EqualsBuilder.java"


# instance fields
.field private isEquals:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    .line 94
    return-void
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;Z[Ljava/lang/String;)Z
    .locals 7
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p3, "builder"    # Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .param p4, "useTransients"    # Z
    .param p5, "excludeFields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;",
            "Z[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 290
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 292
    .local v0, "fields":[Ljava/lang/reflect/Field;
    if-eqz p5, :cond_0

    .line 293
    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 294
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_0
    nop

    .line 295
    .local v1, "excludedFieldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lorg/mockito/internal/configuration/plugins/Plugins;->getMemberAccessor()Lorg/mockito/plugins/MemberAccessor;

    move-result-object v2

    .line 296
    .local v2, "accessor":Lorg/mockito/plugins/MemberAccessor;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_3

    iget-boolean v4, p3, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-eqz v4, :cond_3

    .line 297
    aget-object v4, v0, v3

    .line 298
    .local v4, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 299
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x24

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    if-nez p4, :cond_1

    .line 300
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 301
    :cond_1
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 303
    :try_start_0
    invoke-interface {v2, v4, p0}, Lorg/mockito/plugins/MemberAccessor;->get(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v4, p1}, Lorg/mockito/plugins/MemberAccessor;->get(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    goto :goto_3

    .line 304
    :catch_0
    move-exception v5

    goto :goto_2

    :catch_1
    move-exception v5

    .line 310
    .local v5, "ignored":Ljava/lang/Exception;
    :goto_2
    const/4 v6, 0x1

    return v6

    .line 296
    .end local v4    # "f":Ljava/lang/reflect/Field;
    .end local v5    # "ignored":Ljava/lang/Exception;
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 314
    .end local v3    # "i":I
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 117
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .locals 1
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "testTransients"    # Z

    .line 164
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;)Z
    .locals 1
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "testTransients"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 194
    .local p3, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z
    .locals 15
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "testTransients"    # Z
    .param p4, "excludeFields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 229
    .local p3, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v10, p0

    move-object/from16 v11, p1

    if-ne v10, v11, :cond_0

    .line 230
    const/4 v0, 0x1

    return v0

    .line 232
    :cond_0
    const/4 v12, 0x0

    if-eqz v10, :cond_a

    if-nez v11, :cond_1

    move-object/from16 v0, p3

    goto/16 :goto_2

    .line 239
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    .line 240
    .local v13, "lhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    .line 242
    .local v14, "rhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v13, v11}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    move-object v0, v13

    .line 244
    .local v0, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v14, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 246
    move-object v0, v14

    move-object v6, v0

    goto :goto_0

    .line 244
    :cond_2
    move-object v6, v0

    goto :goto_0

    .line 248
    .end local v0    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    invoke-virtual {v14, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 249
    move-object v0, v14

    .line 250
    .restart local v0    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v13, v11}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 252
    move-object v0, v13

    move-object v6, v0

    goto :goto_0

    .line 250
    :cond_4
    move-object v6, v0

    .line 258
    .end local v0    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v6, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    new-instance v3, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    invoke-direct {v3}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;-><init>()V

    .line 259
    .local v3, "equalsBuilder":Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move/from16 v4, p2

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;Z[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 260
    return v12

    .line 262
    :cond_5
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_7

    move-object/from16 v0, p3

    if-eq v6, v0, :cond_8

    .line 263
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 264
    .end local v6    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v4, p0

    move-object/from16 v5, p1

    move-object v6, v1

    move-object v7, v3

    move/from16 v8, p2

    move-object/from16 v9, p4

    invoke-static/range {v4 .. v9}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;Z[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 266
    return v12

    .line 264
    :cond_6
    move-object v6, v1

    goto :goto_1

    .line 262
    .end local v1    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    move-object/from16 v0, p3

    .line 269
    :cond_8
    invoke-virtual {v3}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals()Z

    move-result v1

    return v1

    .line 256
    .end local v3    # "equalsBuilder":Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .end local v6    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    move-object/from16 v0, p3

    return v12

    .line 232
    .end local v13    # "lhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "rhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    move-object/from16 v0, p3

    .line 233
    :goto_2
    return v12
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z
    .locals 2
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "excludeFields"    # [Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public append(BB)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 2
    .param p1, "lhs"    # B
    .param p2, "rhs"    # B

    .line 449
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-ne p1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    .line 450
    return-object p0
.end method

.method public append(CC)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 2
    .param p1, "lhs"    # C
    .param p2, "rhs"    # C

    .line 437
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-ne p1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    .line 438
    return-object p0
.end method

.method public append(DD)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # D
    .param p3, "rhs"    # D

    .line 467
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 468
    return-object p0

    .line 470
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append(JJ)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(FF)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 2
    .param p1, "lhs"    # F
    .param p2, "rhs"    # F

    .line 487
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 488
    return-object p0

    .line 490
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append(II)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(II)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 2
    .param p1, "lhs"    # I
    .param p2, "rhs"    # I

    .line 413
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-ne p1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    .line 414
    return-object p0
.end method

.method public append(JJ)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 2
    .param p1, "lhs"    # J
    .param p3, "rhs"    # J

    .line 401
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    cmp-long v1, p1, p3

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    .line 402
    return-object p0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .line 342
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 343
    return-object p0

    .line 345
    :cond_0
    if-ne p1, p2, :cond_1

    .line 346
    return-object p0

    .line 348
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_f

    if-nez p2, :cond_2

    goto/16 :goto_1

    .line 352
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 353
    .local v1, "lhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_5

    .line 354
    instance-of v2, p1, Ljava/math/BigDecimal;

    if-eqz v2, :cond_4

    instance-of v2, p2, Ljava/math/BigDecimal;

    if-eqz v2, :cond_4

    .line 355
    move-object v2, p1

    check-cast v2, Ljava/math/BigDecimal;

    move-object v3, p2

    check-cast v3, Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    goto/16 :goto_0

    .line 358
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    goto/16 :goto_0

    .line 360
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_6

    .line 362
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    goto/16 :goto_0

    .line 366
    :cond_6
    instance-of v0, p1, [J

    if-eqz v0, :cond_7

    .line 367
    move-object v0, p1

    check-cast v0, [J

    move-object v2, p2

    check-cast v2, [J

    invoke-virtual {p0, v0, v2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append([J[J)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    goto/16 :goto_0

    .line 368
    :cond_7
    instance-of v0, p1, [I

    if-eqz v0, :cond_8

    .line 369
    move-object v0, p1

    check-cast v0, [I

    move-object v2, p2

    check-cast v2, [I

    invoke-virtual {p0, v0, v2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append([I[I)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    goto :goto_0

    .line 370
    :cond_8
    instance-of v0, p1, [S

    if-eqz v0, :cond_9

    .line 371
    move-object v0, p1

    check-cast v0, [S

    move-object v2, p2

    check-cast v2, [S

    invoke-virtual {p0, v0, v2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append([S[S)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    goto :goto_0

    .line 372
    :cond_9
    instance-of v0, p1, [C

    if-eqz v0, :cond_a

    .line 373
    move-object v0, p1

    check-cast v0, [C

    move-object v2, p2

    check-cast v2, [C

    invoke-virtual {p0, v0, v2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append([C[C)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    goto :goto_0

    .line 374
    :cond_a
    instance-of v0, p1, [B

    if-eqz v0, :cond_b

    .line 375
    move-object v0, p1

    check-cast v0, [B

    move-object v2, p2

    check-cast v2, [B

    invoke-virtual {p0, v0, v2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append([B[B)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    goto :goto_0

    .line 376
    :cond_b
    instance-of v0, p1, [D

    if-eqz v0, :cond_c

    .line 377
    move-object v0, p1

    check-cast v0, [D

    move-object v2, p2

    check-cast v2, [D

    invoke-virtual {p0, v0, v2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append([D[D)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    goto :goto_0

    .line 378
    :cond_c
    instance-of v0, p1, [F

    if-eqz v0, :cond_d

    .line 379
    move-object v0, p1

    check-cast v0, [F

    move-object v2, p2

    check-cast v2, [F

    invoke-virtual {p0, v0, v2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append([F[F)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    goto :goto_0

    .line 380
    :cond_d
    instance-of v0, p1, [Z

    if-eqz v0, :cond_e

    .line 381
    move-object v0, p1

    check-cast v0, [Z

    move-object v2, p2

    check-cast v2, [Z

    invoke-virtual {p0, v0, v2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append([Z[Z)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    goto :goto_0

    .line 384
    :cond_e
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v2, p2

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    .line 386
    :goto_0
    return-object p0

    .line 349
    .end local v1    # "lhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_f
    :goto_1
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    .line 350
    return-object p0
.end method

.method public append(SS)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 2
    .param p1, "lhs"    # S
    .param p2, "rhs"    # S

    .line 425
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-ne p1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    .line 426
    return-object p0
.end method

.method public append(ZZ)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 2
    .param p1, "lhs"    # Z
    .param p2, "rhs"    # Z

    .line 501
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-ne p1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    .line 502
    return-object p0
.end method

.method public append([B[B)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 3
    .param p1, "lhs"    # [B
    .param p2, "rhs"    # [B

    .line 671
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 672
    return-object p0

    .line 674
    :cond_0
    if-ne p1, p2, :cond_1

    .line 675
    return-object p0

    .line 677
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 681
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 682
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    .line 683
    return-object p0

    .line 685
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 686
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append(BB)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    .line 685
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 688
    .end local v0    # "i":I
    :cond_4
    return-object p0

    .line 678
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    .line 679
    return-object p0
.end method

.method public append([C[C)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 3
    .param p1, "lhs"    # [C
    .param p2, "rhs"    # [C

    .line 640
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 641
    return-object p0

    .line 643
    :cond_0
    if-ne p1, p2, :cond_1

    .line 644
    return-object p0

    .line 646
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 650
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 651
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    .line 652
    return-object p0

    .line 654
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 655
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append(CC)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    .line 654
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 657
    .end local v0    # "i":I
    :cond_4
    return-object p0

    .line 647
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    .line 648
    return-object p0
.end method

.method public append([D[D)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 5
    .param p1, "lhs"    # [D
    .param p2, "rhs"    # [D

    .line 702
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 703
    return-object p0

    .line 705
    :cond_0
    if-ne p1, p2, :cond_1

    .line 706
    return-object p0

    .line 708
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 712
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 713
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    .line 714
    return-object p0

    .line 716
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 717
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append(DD)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    .line 716
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 719
    .end local v0    # "i":I
    :cond_4
    return-object p0

    .line 709
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    .line 710
    return-object p0
.end method

.method public append([F[F)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 3
    .param p1, "lhs"    # [F
    .param p2, "rhs"    # [F

    .line 733
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 734
    return-object p0

    .line 736
    :cond_0
    if-ne p1, p2, :cond_1

    .line 737
    return-object p0

    .line 739
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 743
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 744
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    .line 745
    return-object p0

    .line 747
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 748
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append(FF)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    .line 747
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 750
    .end local v0    # "i":I
    :cond_4
    return-object p0

    .line 740
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    .line 741
    return-object p0
.end method

.method public append([I[I)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 3
    .param p1, "lhs"    # [I
    .param p2, "rhs"    # [I

    .line 578
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 579
    return-object p0

    .line 581
    :cond_0
    if-ne p1, p2, :cond_1

    .line 582
    return-object p0

    .line 584
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 588
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 589
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    .line 590
    return-object p0

    .line 592
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 593
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append(II)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    .line 592
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 595
    .end local v0    # "i":I
    :cond_4
    return-object p0

    .line 585
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    .line 586
    return-object p0
.end method

.method public append([J[J)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 5
    .param p1, "lhs"    # [J
    .param p2, "rhs"    # [J

    .line 547
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 548
    return-object p0

    .line 550
    :cond_0
    if-ne p1, p2, :cond_1

    .line 551
    return-object p0

    .line 553
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 557
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 558
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    .line 559
    return-object p0

    .line 561
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 562
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append(JJ)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 564
    .end local v0    # "i":I
    :cond_4
    return-object p0

    .line 554
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    .line 555
    return-object p0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 3
    .param p1, "lhs"    # [Ljava/lang/Object;
    .param p2, "rhs"    # [Ljava/lang/Object;

    .line 516
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 517
    return-object p0

    .line 519
    :cond_0
    if-ne p1, p2, :cond_1

    .line 520
    return-object p0

    .line 522
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 526
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 527
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    .line 528
    return-object p0

    .line 530
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 531
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 533
    .end local v0    # "i":I
    :cond_4
    return-object p0

    .line 523
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    .line 524
    return-object p0
.end method

.method public append([S[S)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 3
    .param p1, "lhs"    # [S
    .param p2, "rhs"    # [S

    .line 609
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 610
    return-object p0

    .line 612
    :cond_0
    if-ne p1, p2, :cond_1

    .line 613
    return-object p0

    .line 615
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 619
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 620
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    .line 621
    return-object p0

    .line 623
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 624
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append(SS)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    .line 623
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 626
    .end local v0    # "i":I
    :cond_4
    return-object p0

    .line 616
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    .line 617
    return-object p0
.end method

.method public append([Z[Z)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 3
    .param p1, "lhs"    # [Z
    .param p2, "rhs"    # [Z

    .line 764
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 765
    return-object p0

    .line 767
    :cond_0
    if-ne p1, p2, :cond_1

    .line 768
    return-object p0

    .line 770
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 774
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 775
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    .line 776
    return-object p0

    .line 778
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 779
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->append(ZZ)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;

    .line 778
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 781
    .end local v0    # "i":I
    :cond_4
    return-object p0

    .line 771
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->setEquals(Z)V

    .line 772
    return-object p0
.end method

.method public appendSuper(Z)Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;
    .locals 1
    .param p1, "superEquals"    # Z

    .line 327
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    and-int/2addr v0, p1

    iput-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    .line 328
    return-object p0
.end method

.method public isEquals()Z
    .locals 1

    .line 791
    iget-boolean v0, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    return v0
.end method

.method protected setEquals(Z)V
    .locals 0
    .param p1, "isEquals"    # Z

    .line 801
    iput-boolean p1, p0, Lorg/mockito/internal/matchers/apachecommons/EqualsBuilder;->isEquals:Z

    .line 802
    return-void
.end method
