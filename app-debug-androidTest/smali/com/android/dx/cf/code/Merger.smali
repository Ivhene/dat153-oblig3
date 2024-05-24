.class public final Lcom/android/dx/cf/code/Merger;
.super Ljava/lang/Object;
.source "Merger.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static isPossiblyAssignableFrom(Lcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeBearer;)Z
    .locals 7
    .param p0, "supertypeBearer"    # Lcom/android/dx/rop/type/TypeBearer;
    .param p1, "subtypeBearer"    # Lcom/android/dx/rop/type/TypeBearer;

    .line 221
    invoke-interface {p0}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    .line 222
    .local v0, "supertype":Lcom/android/dx/rop/type/Type;
    invoke-interface {p1}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v1

    .line 224
    .local v1, "subtype":Lcom/android/dx/rop/type/Type;
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/type/Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 226
    return v3

    .line 229
    :cond_0
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getBasicType()I

    move-result v2

    .line 230
    .local v2, "superBt":I
    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->getBasicType()I

    move-result v4

    .line 234
    .local v4, "subBt":I
    const/16 v5, 0xa

    if-ne v2, v5, :cond_1

    .line 235
    sget-object v0, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    .line 236
    const/16 v2, 0x9

    .line 239
    :cond_1
    if-ne v4, v5, :cond_2

    .line 240
    sget-object v1, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    .line 241
    const/16 v4, 0x9

    .line 244
    :cond_2
    const/16 v5, 0x9

    const/4 v6, 0x0

    if-ne v2, v5, :cond_d

    if-eq v4, v5, :cond_3

    goto :goto_1

    .line 254
    :cond_3
    sget-object v5, Lcom/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/android/dx/rop/type/Type;

    if-ne v0, v5, :cond_4

    .line 260
    return v6

    .line 261
    :cond_4
    sget-object v5, Lcom/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/android/dx/rop/type/Type;

    if-ne v1, v5, :cond_5

    .line 266
    return v3

    .line 267
    :cond_5
    sget-object v5, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    if-ne v0, v5, :cond_6

    .line 271
    return v3

    .line 272
    :cond_6
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->isArray()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 274
    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->isArray()Z

    move-result v3

    if-nez v3, :cond_7

    .line 276
    return v6

    .line 285
    :cond_7
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getComponentType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    .line 286
    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->getComponentType()Lcom/android/dx/rop/type/Type;

    move-result-object v1

    .line 287
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->isArray()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->isArray()Z

    move-result v3

    if-nez v3, :cond_7

    .line 289
    :cond_8
    invoke-static {v0, v1}, Lcom/android/dx/cf/code/Merger;->isPossiblyAssignableFrom(Lcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeBearer;)Z

    move-result v3

    return v3

    .line 290
    :cond_9
    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->isArray()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 295
    sget-object v5, Lcom/android/dx/rop/type/Type;->SERIALIZABLE:Lcom/android/dx/rop/type/Type;

    if-eq v0, v5, :cond_b

    sget-object v5, Lcom/android/dx/rop/type/Type;->CLONEABLE:Lcom/android/dx/rop/type/Type;

    if-ne v0, v5, :cond_a

    goto :goto_0

    :cond_a
    move v3, v6

    :cond_b
    :goto_0
    return v3

    .line 302
    :cond_c
    return v3

    .line 249
    :cond_d
    :goto_1
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->isIntlike()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->isIntlike()Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_2

    :cond_e
    move v3, v6

    :goto_2
    return v3
.end method

.method public static mergeLocals(Lcom/android/dx/cf/code/OneLocalsArray;Lcom/android/dx/cf/code/OneLocalsArray;)Lcom/android/dx/cf/code/OneLocalsArray;
    .locals 6
    .param p0, "locals1"    # Lcom/android/dx/cf/code/OneLocalsArray;
    .param p1, "locals2"    # Lcom/android/dx/cf/code/OneLocalsArray;

    .line 44
    if-ne p0, p1, :cond_0

    .line 46
    return-object p0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/android/dx/cf/code/OneLocalsArray;->getMaxLocals()I

    move-result v0

    .line 50
    .local v0, "sz":I
    const/4 v1, 0x0

    .line 52
    .local v1, "result":Lcom/android/dx/cf/code/OneLocalsArray;
    invoke-virtual {p1}, Lcom/android/dx/cf/code/OneLocalsArray;->getMaxLocals()I

    move-result v2

    if-ne v2, v0, :cond_6

    .line 56
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 57
    invoke-virtual {p0, v2}, Lcom/android/dx/cf/code/OneLocalsArray;->getOrNull(I)Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v3

    .line 58
    .local v3, "tb1":Lcom/android/dx/rop/type/TypeBearer;
    invoke-virtual {p1, v2}, Lcom/android/dx/cf/code/OneLocalsArray;->getOrNull(I)Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v4

    .line 59
    .local v4, "tb2":Lcom/android/dx/rop/type/TypeBearer;
    invoke-static {v3, v4}, Lcom/android/dx/cf/code/Merger;->mergeType(Lcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v5

    .line 60
    .local v5, "resultType":Lcom/android/dx/rop/type/TypeBearer;
    if-eq v5, v3, :cond_3

    .line 66
    if-nez v1, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/android/dx/cf/code/OneLocalsArray;->copy()Lcom/android/dx/cf/code/OneLocalsArray;

    move-result-object v1

    .line 70
    :cond_1
    if-nez v5, :cond_2

    .line 71
    invoke-virtual {v1, v2}, Lcom/android/dx/cf/code/OneLocalsArray;->invalidate(I)V

    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {v1, v2, v5}, Lcom/android/dx/cf/code/OneLocalsArray;->set(ILcom/android/dx/rop/type/TypeBearer;)V

    .line 56
    .end local v3    # "tb1":Lcom/android/dx/rop/type/TypeBearer;
    .end local v4    # "tb2":Lcom/android/dx/rop/type/TypeBearer;
    .end local v5    # "resultType":Lcom/android/dx/rop/type/TypeBearer;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v2    # "i":I
    :cond_4
    if-nez v1, :cond_5

    .line 79
    return-object p0

    .line 82
    :cond_5
    invoke-virtual {v1}, Lcom/android/dx/cf/code/OneLocalsArray;->setImmutable()V

    .line 83
    return-object v1

    .line 53
    :cond_6
    new-instance v2, Lcom/android/dx/cf/code/SimException;

    const-string v3, "mismatched maxLocals values"

    invoke-direct {v2, v3}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static mergeStack(Lcom/android/dx/cf/code/ExecutionStack;Lcom/android/dx/cf/code/ExecutionStack;)Lcom/android/dx/cf/code/ExecutionStack;
    .locals 9
    .param p0, "stack1"    # Lcom/android/dx/cf/code/ExecutionStack;
    .param p1, "stack2"    # Lcom/android/dx/cf/code/ExecutionStack;

    .line 96
    if-ne p0, p1, :cond_0

    .line 98
    return-object p0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ExecutionStack;->size()I

    move-result v0

    .line 102
    .local v0, "sz":I
    const/4 v1, 0x0

    .line 104
    .local v1, "result":Lcom/android/dx/cf/code/ExecutionStack;
    invoke-virtual {p1}, Lcom/android/dx/cf/code/ExecutionStack;->size()I

    move-result v2

    if-ne v2, v0, :cond_6

    .line 108
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 109
    invoke-virtual {p0, v2}, Lcom/android/dx/cf/code/ExecutionStack;->peek(I)Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v3

    .line 110
    .local v3, "tb1":Lcom/android/dx/rop/type/TypeBearer;
    invoke-virtual {p1, v2}, Lcom/android/dx/cf/code/ExecutionStack;->peek(I)Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v4

    .line 111
    .local v4, "tb2":Lcom/android/dx/rop/type/TypeBearer;
    invoke-static {v3, v4}, Lcom/android/dx/cf/code/Merger;->mergeType(Lcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v5

    .line 112
    .local v5, "resultType":Lcom/android/dx/rop/type/TypeBearer;
    if-eq v5, v3, :cond_3

    .line 118
    if-nez v1, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ExecutionStack;->copy()Lcom/android/dx/cf/code/ExecutionStack;

    move-result-object v1

    .line 123
    :cond_1
    if-eqz v5, :cond_2

    .line 127
    :try_start_0
    invoke-virtual {v1, v2, v5}, Lcom/android/dx/cf/code/ExecutionStack;->change(ILcom/android/dx/rop/type/TypeBearer;)V

    .line 132
    goto :goto_2

    .line 129
    :catch_0
    move-exception v6

    goto :goto_1

    .line 124
    :cond_2
    new-instance v6, Lcom/android/dx/cf/code/SimException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "incompatible: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    .end local v0    # "sz":I
    .end local v1    # "result":Lcom/android/dx/cf/code/ExecutionStack;
    .end local v2    # "i":I
    .end local v3    # "tb1":Lcom/android/dx/rop/type/TypeBearer;
    .end local v4    # "tb2":Lcom/android/dx/rop/type/TypeBearer;
    .end local v5    # "resultType":Lcom/android/dx/rop/type/TypeBearer;
    .end local p0    # "stack1":Lcom/android/dx/cf/code/ExecutionStack;
    .end local p1    # "stack2":Lcom/android/dx/cf/code/ExecutionStack;
    throw v6
    :try_end_0
    .catch Lcom/android/dx/cf/code/SimException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .restart local v0    # "sz":I
    .restart local v1    # "result":Lcom/android/dx/cf/code/ExecutionStack;
    .restart local v2    # "i":I
    .restart local v3    # "tb1":Lcom/android/dx/rop/type/TypeBearer;
    .restart local v4    # "tb2":Lcom/android/dx/rop/type/TypeBearer;
    .restart local v5    # "resultType":Lcom/android/dx/rop/type/TypeBearer;
    .local v6, "ex":Lcom/android/dx/cf/code/SimException;
    .restart local p0    # "stack1":Lcom/android/dx/cf/code/ExecutionStack;
    .restart local p1    # "stack2":Lcom/android/dx/cf/code/ExecutionStack;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "...while merging stack["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 131
    throw v6

    .line 108
    .end local v3    # "tb1":Lcom/android/dx/rop/type/TypeBearer;
    .end local v4    # "tb2":Lcom/android/dx/rop/type/TypeBearer;
    .end local v5    # "resultType":Lcom/android/dx/rop/type/TypeBearer;
    .end local v6    # "ex":Lcom/android/dx/cf/code/SimException;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    .end local v2    # "i":I
    :cond_4
    if-nez v1, :cond_5

    .line 137
    return-object p0

    .line 140
    :cond_5
    invoke-virtual {v1}, Lcom/android/dx/cf/code/ExecutionStack;->setImmutable()V

    .line 141
    return-object v1

    .line 105
    :cond_6
    new-instance v2, Lcom/android/dx/cf/code/SimException;

    const-string v3, "mismatched stack depths"

    invoke-direct {v2, v3}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static mergeType(Lcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/type/TypeBearer;
    .locals 4
    .param p0, "ft1"    # Lcom/android/dx/rop/type/TypeBearer;
    .param p1, "ft2"    # Lcom/android/dx/rop/type/TypeBearer;

    .line 152
    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 155
    return-object v0

    .line 157
    :cond_1
    invoke-interface {p0}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v1

    .line 158
    .local v1, "type1":Lcom/android/dx/rop/type/Type;
    invoke-interface {p1}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v2

    .line 160
    .local v2, "type2":Lcom/android/dx/rop/type/Type;
    if-ne v1, v2, :cond_2

    .line 161
    return-object v1

    .line 162
    :cond_2
    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->isReference()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Lcom/android/dx/rop/type/Type;->isReference()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 163
    sget-object v0, Lcom/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/android/dx/rop/type/Type;

    if-ne v1, v0, :cond_3

    .line 168
    return-object v2

    .line 169
    :cond_3
    sget-object v0, Lcom/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/android/dx/rop/type/Type;

    if-ne v2, v0, :cond_4

    .line 174
    return-object v1

    .line 175
    :cond_4
    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Lcom/android/dx/rop/type/Type;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 176
    nop

    .line 177
    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->getComponentType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    .line 178
    invoke-virtual {v2}, Lcom/android/dx/rop/type/Type;->getComponentType()Lcom/android/dx/rop/type/Type;

    move-result-object v3

    .line 177
    invoke-static {v0, v3}, Lcom/android/dx/cf/code/Merger;->mergeType(Lcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v0

    .line 179
    .local v0, "componentUnion":Lcom/android/dx/rop/type/TypeBearer;
    if-nez v0, :cond_5

    .line 184
    sget-object v3, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    return-object v3

    .line 186
    :cond_5
    move-object v3, v0

    check-cast v3, Lcom/android/dx/rop/type/Type;

    invoke-virtual {v3}, Lcom/android/dx/rop/type/Type;->getArrayType()Lcom/android/dx/rop/type/Type;

    move-result-object v3

    return-object v3

    .line 193
    .end local v0    # "componentUnion":Lcom/android/dx/rop/type/TypeBearer;
    :cond_6
    sget-object v0, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    return-object v0

    .line 195
    :cond_7
    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->isIntlike()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lcom/android/dx/rop/type/Type;->isIntlike()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 200
    sget-object v0, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    return-object v0

    .line 202
    :cond_8
    return-object v0

    .line 153
    .end local v1    # "type1":Lcom/android/dx/rop/type/Type;
    .end local v2    # "type2":Lcom/android/dx/rop/type/Type;
    :cond_9
    :goto_0
    return-object p0
.end method
