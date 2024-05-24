.class public Lcom/android/dx/ssa/PhiTypeResolver;
.super Ljava/lang/Object;
.source "PhiTypeResolver.java"


# instance fields
.field ssaMeth:Lcom/android/dx/ssa/SsaMethod;

.field private final worklist:Ljava/util/BitSet;


# direct methods
.method private constructor <init>(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 2
    .param p1, "ssaMeth"    # Lcom/android/dx/ssa/SsaMethod;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/dx/ssa/PhiTypeResolver;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    .line 59
    new-instance v0, Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/ssa/PhiTypeResolver;->worklist:Ljava/util/BitSet;

    .line 60
    return-void
.end method

.method private static equalsHandlesNulls(Lcom/android/dx/rop/code/LocalItem;Lcom/android/dx/rop/code/LocalItem;)Z
    .locals 1
    .param p0, "a"    # Lcom/android/dx/rop/code/LocalItem;
    .param p1, "b"    # Lcom/android/dx/rop/code/LocalItem;

    .line 116
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/dx/rop/code/LocalItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static process(Lcom/android/dx/ssa/SsaMethod;)V
    .locals 1
    .param p0, "ssaMeth"    # Lcom/android/dx/ssa/SsaMethod;

    .line 54
    new-instance v0, Lcom/android/dx/ssa/PhiTypeResolver;

    invoke-direct {v0, p0}, Lcom/android/dx/ssa/PhiTypeResolver;-><init>(Lcom/android/dx/ssa/SsaMethod;)V

    invoke-direct {v0}, Lcom/android/dx/ssa/PhiTypeResolver;->run()V

    .line 55
    return-void
.end method

.method private run()V
    .locals 10

    .line 67
    iget-object v0, p0, Lcom/android/dx/ssa/PhiTypeResolver;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getRegCount()I

    move-result v0

    .line 69
    .local v0, "regCount":I
    const/4 v1, 0x0

    .local v1, "reg":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 70
    iget-object v2, p0, Lcom/android/dx/ssa/PhiTypeResolver;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v2, v1}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v2

    .line 72
    .local v2, "definsn":Lcom/android/dx/ssa/SsaInsn;
    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {v2}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getBasicType()I

    move-result v3

    if-nez v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/android/dx/ssa/PhiTypeResolver;->worklist:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->set(I)V

    .line 69
    .end local v2    # "definsn":Lcom/android/dx/ssa/SsaInsn;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "reg":I
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/dx/ssa/PhiTypeResolver;->worklist:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    move v2, v1

    .local v2, "reg":I
    if-ltz v1, :cond_4

    .line 80
    iget-object v1, p0, Lcom/android/dx/ssa/PhiTypeResolver;->worklist:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 86
    iget-object v1, p0, Lcom/android/dx/ssa/PhiTypeResolver;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v1, v2}, Lcom/android/dx/ssa/SsaMethod;->getDefinitionForRegister(I)Lcom/android/dx/ssa/SsaInsn;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/PhiInsn;

    .line 88
    .local v1, "definsn":Lcom/android/dx/ssa/PhiInsn;
    invoke-virtual {p0, v1}, Lcom/android/dx/ssa/PhiTypeResolver;->resolveResultType(Lcom/android/dx/ssa/PhiInsn;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 94
    iget-object v3, p0, Lcom/android/dx/ssa/PhiTypeResolver;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v3, v2}, Lcom/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object v3

    .line 96
    .local v3, "useList":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/ssa/SsaInsn;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 97
    .local v4, "sz":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v4, :cond_3

    .line 98
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/dx/ssa/SsaInsn;

    .line 99
    .local v6, "useInsn":Lcom/android/dx/ssa/SsaInsn;
    invoke-virtual {v6}, Lcom/android/dx/ssa/SsaInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    .line 100
    .local v7, "resultReg":Lcom/android/dx/rop/code/RegisterSpec;
    if-eqz v7, :cond_2

    instance-of v8, v6, Lcom/android/dx/ssa/PhiInsn;

    if-eqz v8, :cond_2

    .line 101
    iget-object v8, p0, Lcom/android/dx/ssa/PhiTypeResolver;->worklist:Ljava/util/BitSet;

    invoke-virtual {v7}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    .line 97
    .end local v6    # "useInsn":Lcom/android/dx/ssa/SsaInsn;
    .end local v7    # "resultReg":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 105
    .end local v1    # "definsn":Lcom/android/dx/ssa/PhiInsn;
    .end local v3    # "useList":Ljava/util/List;, "Ljava/util/List<Lcom/android/dx/ssa/SsaInsn;>;"
    .end local v4    # "sz":I
    .end local v5    # "i":I
    :cond_3
    goto :goto_1

    .line 106
    :cond_4
    return-void
.end method


# virtual methods
.method resolveResultType(Lcom/android/dx/ssa/PhiInsn;)Z
    .locals 13
    .param p1, "insn"    # Lcom/android/dx/ssa/PhiInsn;

    .line 127
    iget-object v0, p0, Lcom/android/dx/ssa/PhiTypeResolver;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {p1, v0}, Lcom/android/dx/ssa/PhiInsn;->updateSourcesToDefinitions(Lcom/android/dx/ssa/SsaMethod;)V

    .line 129
    invoke-virtual {p1}, Lcom/android/dx/ssa/PhiInsn;->getSources()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    .line 132
    .local v0, "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    const/4 v1, 0x0

    .line 133
    .local v1, "first":Lcom/android/dx/rop/code/RegisterSpec;
    const/4 v2, -0x1

    .line 135
    .local v2, "firstIndex":I
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v3

    .line 136
    .local v3, "szSources":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 137
    invoke-virtual {v0, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    .line 139
    .local v5, "rs":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v5}, Lcom/android/dx/rop/code/RegisterSpec;->getBasicType()I

    move-result v6

    if-eqz v6, :cond_0

    .line 140
    move-object v1, v5

    .line 141
    move v2, v4

    .line 136
    .end local v5    # "rs":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 145
    .end local v4    # "i":I
    :cond_1
    const/4 v4, 0x0

    if-nez v1, :cond_2

    .line 147
    return v4

    .line 150
    :cond_2
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v5

    .line 151
    .local v5, "firstLocal":Lcom/android/dx/rop/code/LocalItem;
    invoke-virtual {v1}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v6

    .line 152
    .local v6, "mergedType":Lcom/android/dx/rop/type/TypeBearer;
    const/4 v7, 0x1

    .line 153
    .local v7, "sameLocals":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    const/4 v9, 0x1

    if-ge v8, v3, :cond_6

    .line 154
    if-ne v8, v2, :cond_3

    .line 155
    goto :goto_3

    .line 158
    :cond_3
    invoke-virtual {v0, v8}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    .line 161
    .local v10, "rs":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v10}, Lcom/android/dx/rop/code/RegisterSpec;->getBasicType()I

    move-result v11

    if-nez v11, :cond_4

    .line 162
    goto :goto_3

    .line 165
    :cond_4
    if-eqz v7, :cond_5

    .line 166
    invoke-virtual {v10}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/android/dx/ssa/PhiTypeResolver;->equalsHandlesNulls(Lcom/android/dx/rop/code/LocalItem;Lcom/android/dx/rop/code/LocalItem;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_2

    :cond_5
    move v9, v4

    :goto_2
    move v7, v9

    .line 168
    invoke-virtual {v10}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/android/dx/cf/code/Merger;->mergeType(Lcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v6

    .line 153
    .end local v10    # "rs":Lcom/android/dx/rop/code/RegisterSpec;
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 173
    .end local v8    # "i":I
    :cond_6
    if-eqz v6, :cond_9

    .line 174
    move-object v8, v6

    .line 186
    .local v8, "newResultType":Lcom/android/dx/rop/type/TypeBearer;
    if-eqz v7, :cond_7

    move-object v10, v5

    goto :goto_4

    :cond_7
    const/4 v10, 0x0

    .line 188
    .local v10, "newLocal":Lcom/android/dx/rop/code/LocalItem;
    :goto_4
    invoke-virtual {p1}, Lcom/android/dx/ssa/PhiInsn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v11

    .line 190
    .local v11, "result":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v11}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v12

    if-ne v12, v8, :cond_8

    .line 191
    invoke-virtual {v11}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/dx/ssa/PhiTypeResolver;->equalsHandlesNulls(Lcom/android/dx/rop/code/LocalItem;Lcom/android/dx/rop/code/LocalItem;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 192
    return v4

    .line 195
    :cond_8
    invoke-virtual {p1, v8, v10}, Lcom/android/dx/ssa/PhiInsn;->changeResultType(Lcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/code/LocalItem;)V

    .line 197
    return v9

    .line 176
    .end local v8    # "newResultType":Lcom/android/dx/rop/type/TypeBearer;
    .end local v10    # "newLocal":Lcom/android/dx/rop/code/LocalItem;
    .end local v11    # "result":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    if-ge v8, v3, :cond_a

    .line 179
    invoke-virtual {v0, v8}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const/16 v9, 0x20

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 183
    .end local v8    # "i":I
    :cond_a
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t map types in phi insn:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
.end method
