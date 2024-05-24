.class public final Lcom/android/dx/cf/code/ExecutionStack;
.super Lcom/android/dx/util/MutabilityControl;
.source "ExecutionStack.java"


# instance fields
.field private final local:[Z

.field private final stack:[Lcom/android/dx/rop/type/TypeBearer;

.field private stackPtr:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxStack"    # I

    .line 54
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/dx/util/MutabilityControl;-><init>(Z)V

    .line 55
    new-array v1, p1, [Lcom/android/dx/rop/type/TypeBearer;

    iput-object v1, p0, Lcom/android/dx/cf/code/ExecutionStack;->stack:[Lcom/android/dx/rop/type/TypeBearer;

    .line 56
    new-array v1, p1, [Z

    iput-object v1, p0, Lcom/android/dx/cf/code/ExecutionStack;->local:[Z

    .line 57
    iput v0, p0, Lcom/android/dx/cf/code/ExecutionStack;->stackPtr:I

    .line 58
    return-void
.end method

.method private static stackElementString(Lcom/android/dx/rop/type/TypeBearer;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Lcom/android/dx/rop/type/TypeBearer;

    .line 327
    if-nez p0, :cond_0

    .line 328
    const-string v0, "<invalid>"

    return-object v0

    .line 331
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static throwSimException(Ljava/lang/String;)Lcom/android/dx/rop/type/TypeBearer;
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .line 341
    new-instance v0, Lcom/android/dx/cf/code/SimException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public annotate(Lcom/android/dex/util/ExceptionWithContext;)V
    .locals 5
    .param p1, "ex"    # Lcom/android/dex/util/ExceptionWithContext;

    .line 82
    iget v0, p0, Lcom/android/dx/cf/code/ExecutionStack;->stackPtr:I

    add-int/lit8 v0, v0, -0x1

    .line 84
    .local v0, "limit":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 85
    if-ne v1, v0, :cond_0

    const-string v2, "top0"

    goto :goto_1

    :cond_0
    sub-int v2, v0, v1

    invoke-static {v2}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "idx":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stack["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dx/cf/code/ExecutionStack;->stack:[Lcom/android/dx/rop/type/TypeBearer;

    aget-object v4, v4, v1

    .line 88
    invoke-static {v4}, Lcom/android/dx/cf/code/ExecutionStack;->stackElementString(Lcom/android/dx/rop/type/TypeBearer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-virtual {p1, v3}, Lcom/android/dex/util/ExceptionWithContext;->addContext(Ljava/lang/String;)V

    .line 84
    .end local v2    # "idx":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public change(ILcom/android/dx/rop/type/TypeBearer;)V
    .locals 4
    .param p1, "n"    # I
    .param p2, "type"    # Lcom/android/dx/rop/type/TypeBearer;

    .line 275
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ExecutionStack;->throwIfImmutable()V

    .line 278
    :try_start_0
    invoke-interface {p2}, Lcom/android/dx/rop/type/TypeBearer;->getFrameType()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    .line 282
    nop

    .line 284
    iget v0, p0, Lcom/android/dx/cf/code/ExecutionStack;->stackPtr:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 285
    .local v0, "idx":I
    iget-object v1, p0, Lcom/android/dx/cf/code/ExecutionStack;->stack:[Lcom/android/dx/rop/type/TypeBearer;

    aget-object v1, v1, v0

    .line 287
    .local v1, "orig":Lcom/android/dx/rop/type/TypeBearer;
    if-eqz v1, :cond_0

    .line 288
    invoke-interface {v1}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/rop/type/Type;->getCategory()I

    move-result v2

    invoke-interface {p2}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/type/Type;->getCategory()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 289
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incompatible substitution: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 290
    invoke-static {v1}, Lcom/android/dx/cf/code/ExecutionStack;->stackElementString(Lcom/android/dx/rop/type/TypeBearer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 291
    invoke-static {p2}, Lcom/android/dx/cf/code/ExecutionStack;->stackElementString(Lcom/android/dx/rop/type/TypeBearer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-static {v2}, Lcom/android/dx/cf/code/ExecutionStack;->throwSimException(Ljava/lang/String;)Lcom/android/dx/rop/type/TypeBearer;

    .line 294
    :cond_1
    iget-object v2, p0, Lcom/android/dx/cf/code/ExecutionStack;->stack:[Lcom/android/dx/rop/type/TypeBearer;

    aput-object p2, v2, v0

    .line 295
    return-void

    .line 279
    .end local v0    # "idx":I
    .end local v1    # "orig":Lcom/android/dx/rop/type/TypeBearer;
    :catch_0
    move-exception v0

    .line 281
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "type == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clear()V
    .locals 4

    .line 137
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ExecutionStack;->throwIfImmutable()V

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/dx/cf/code/ExecutionStack;->stackPtr:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/dx/cf/code/ExecutionStack;->stack:[Lcom/android/dx/rop/type/TypeBearer;

    const/4 v3, 0x0

    aput-object v3, v1, v0

    .line 141
    iget-object v1, p0, Lcom/android/dx/cf/code/ExecutionStack;->local:[Z

    aput-boolean v2, v1, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "i":I
    :cond_0
    iput v2, p0, Lcom/android/dx/cf/code/ExecutionStack;->stackPtr:I

    .line 145
    return-void
.end method

.method public copy()Lcom/android/dx/cf/code/ExecutionStack;
    .locals 5

    .line 66
    new-instance v0, Lcom/android/dx/cf/code/ExecutionStack;

    iget-object v1, p0, Lcom/android/dx/cf/code/ExecutionStack;->stack:[Lcom/android/dx/rop/type/TypeBearer;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/android/dx/cf/code/ExecutionStack;-><init>(I)V

    .line 68
    .local v0, "result":Lcom/android/dx/cf/code/ExecutionStack;
    iget-object v1, p0, Lcom/android/dx/cf/code/ExecutionStack;->stack:[Lcom/android/dx/rop/type/TypeBearer;

    iget-object v2, v0, Lcom/android/dx/cf/code/ExecutionStack;->stack:[Lcom/android/dx/rop/type/TypeBearer;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iget-object v1, p0, Lcom/android/dx/cf/code/ExecutionStack;->local:[Z

    iget-object v2, v0, Lcom/android/dx/cf/code/ExecutionStack;->local:[Z

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iget v1, p0, Lcom/android/dx/cf/code/ExecutionStack;->stackPtr:I

    iput v1, v0, Lcom/android/dx/cf/code/ExecutionStack;->stackPtr:I

    .line 72
    return-object v0
.end method

.method public getMaxStack()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/dx/cf/code/ExecutionStack;->stack:[Lcom/android/dx/rop/type/TypeBearer;

    array-length v0, v0

    return v0
.end method

.method public makeInitialized(Lcom/android/dx/rop/type/Type;)V
    .locals 4
    .param p1, "type"    # Lcom/android/dx/rop/type/Type;

    .line 99
    iget v0, p0, Lcom/android/dx/cf/code/ExecutionStack;->stackPtr:I

    if-nez v0, :cond_0

    .line 101
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ExecutionStack;->throwIfImmutable()V

    .line 106
    invoke-virtual {p1}, Lcom/android/dx/rop/type/Type;->getInitializedType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    .line 108
    .local v0, "initializedType":Lcom/android/dx/rop/type/Type;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/dx/cf/code/ExecutionStack;->stackPtr:I

    if-ge v1, v2, :cond_2

    .line 109
    iget-object v2, p0, Lcom/android/dx/cf/code/ExecutionStack;->stack:[Lcom/android/dx/rop/type/TypeBearer;

    aget-object v3, v2, v1

    if-ne v3, p1, :cond_1

    .line 110
    aput-object v0, v2, v1

    .line 108
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public merge(Lcom/android/dx/cf/code/ExecutionStack;)Lcom/android/dx/cf/code/ExecutionStack;
    .locals 2
    .param p1, "other"    # Lcom/android/dx/cf/code/ExecutionStack;

    .line 308
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/dx/cf/code/Merger;->mergeStack(Lcom/android/dx/cf/code/ExecutionStack;Lcom/android/dx/cf/code/ExecutionStack;)Lcom/android/dx/cf/code/ExecutionStack;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/dx/cf/code/SimException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "ex":Lcom/android/dx/cf/code/SimException;
    const-string v1, "underlay stack:"

    invoke-virtual {v0, v1}, Lcom/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0, v0}, Lcom/android/dx/cf/code/ExecutionStack;->annotate(Lcom/android/dex/util/ExceptionWithContext;)V

    .line 312
    const-string v1, "overlay stack:"

    invoke-virtual {v0, v1}, Lcom/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1, v0}, Lcom/android/dx/cf/code/ExecutionStack;->annotate(Lcom/android/dex/util/ExceptionWithContext;)V

    .line 314
    throw v0
.end method

.method public peek(I)Lcom/android/dx/rop/type/TypeBearer;
    .locals 2
    .param p1, "n"    # I

    .line 201
    if-ltz p1, :cond_1

    .line 205
    iget v0, p0, Lcom/android/dx/cf/code/ExecutionStack;->stackPtr:I

    if-lt p1, v0, :cond_0

    .line 206
    const-string v0, "underflow"

    invoke-static {v0}, Lcom/android/dx/cf/code/ExecutionStack;->throwSimException(Ljava/lang/String;)Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v0

    return-object v0

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/android/dx/cf/code/ExecutionStack;->stack:[Lcom/android/dx/rop/type/TypeBearer;

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    return-object v0

    .line 202
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peekLocal(I)Z
    .locals 2
    .param p1, "n"    # I

    .line 221
    if-ltz p1, :cond_1

    .line 225
    iget v0, p0, Lcom/android/dx/cf/code/ExecutionStack;->stackPtr:I

    if-ge p1, v0, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/dx/cf/code/ExecutionStack;->local:[Z

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-boolean v0, v1, v0

    return v0

    .line 226
    :cond_0
    new-instance v0, Lcom/android/dx/cf/code/SimException;

    const-string v1, "stack: underflow"

    invoke-direct {v0, v1}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peekType(I)Lcom/android/dx/rop/type/Type;
    .locals 1
    .param p1, "n"    # I

    .line 241
    invoke-virtual {p0, p1}, Lcom/android/dx/cf/code/ExecutionStack;->peek(I)Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    return-object v0
.end method

.method public pop()Lcom/android/dx/rop/type/TypeBearer;
    .locals 6

    .line 251
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ExecutionStack;->throwIfImmutable()V

    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/dx/cf/code/ExecutionStack;->peek(I)Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v1

    .line 255
    .local v1, "result":Lcom/android/dx/rop/type/TypeBearer;
    iget-object v2, p0, Lcom/android/dx/cf/code/ExecutionStack;->stack:[Lcom/android/dx/rop/type/TypeBearer;

    iget v3, p0, Lcom/android/dx/cf/code/ExecutionStack;->stackPtr:I

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    aput-object v5, v2, v4

    .line 256
    iget-object v2, p0, Lcom/android/dx/cf/code/ExecutionStack;->local:[Z

    add-int/lit8 v4, v3, -0x1

    aput-boolean v0, v2, v4

    .line 257
    invoke-interface {v1}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getCategory()I

    move-result v0

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/android/dx/cf/code/ExecutionStack;->stackPtr:I

    .line 259
    return-object v1
.end method

.method public push(Lcom/android/dx/rop/type/TypeBearer;)V
    .locals 5
    .param p1, "type"    # Lcom/android/dx/rop/type/TypeBearer;

    .line 155
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ExecutionStack;->throwIfImmutable()V

    .line 160
    :try_start_0
    invoke-interface {p1}, Lcom/android/dx/rop/type/TypeBearer;->getFrameType()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v0

    move-object p1, v0

    .line 161
    invoke-interface {p1}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getCategory()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .local v0, "category":I
    nop

    .line 167
    iget v1, p0, Lcom/android/dx/cf/code/ExecutionStack;->stackPtr:I

    add-int v2, v1, v0

    iget-object v3, p0, Lcom/android/dx/cf/code/ExecutionStack;->stack:[Lcom/android/dx/rop/type/TypeBearer;

    array-length v4, v3

    if-le v2, v4, :cond_0

    .line 168
    const-string v1, "overflow"

    invoke-static {v1}, Lcom/android/dx/cf/code/ExecutionStack;->throwSimException(Ljava/lang/String;)Lcom/android/dx/rop/type/TypeBearer;

    .line 169
    return-void

    .line 172
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 173
    const/4 v2, 0x0

    aput-object v2, v3, v1

    .line 174
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/dx/cf/code/ExecutionStack;->stackPtr:I

    .line 177
    :cond_1
    iget v1, p0, Lcom/android/dx/cf/code/ExecutionStack;->stackPtr:I

    aput-object p1, v3, v1

    .line 178
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/dx/cf/code/ExecutionStack;->stackPtr:I

    .line 179
    return-void

    .line 162
    .end local v0    # "category":I
    :catch_0
    move-exception v0

    .line 164
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "type == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setLocal()V
    .locals 3

    .line 185
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ExecutionStack;->throwIfImmutable()V

    .line 187
    iget-object v0, p0, Lcom/android/dx/cf/code/ExecutionStack;->local:[Z

    iget v1, p0, Lcom/android/dx/cf/code/ExecutionStack;->stackPtr:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 188
    return-void
.end method

.method public size()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/android/dx/cf/code/ExecutionStack;->stackPtr:I

    return v0
.end method
