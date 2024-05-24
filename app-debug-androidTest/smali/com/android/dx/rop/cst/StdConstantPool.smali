.class public final Lcom/android/dx/rop/cst/StdConstantPool;
.super Lcom/android/dx/util/MutabilityControl;
.source "StdConstantPool.java"

# interfaces
.implements Lcom/android/dx/rop/cst/ConstantPool;


# instance fields
.field private final entries:[Lcom/android/dx/rop/cst/Constant;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .line 41
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/dx/util/MutabilityControl;-><init>(Z)V

    .line 43
    if-lt p1, v0, :cond_1

    .line 47
    new-array v0, p1, [Lcom/android/dx/rop/cst/Constant;

    iput-object v0, p0, Lcom/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/android/dx/rop/cst/Constant;

    .line 48
    return-void

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static throwInvalid(I)Lcom/android/dx/rop/cst/Constant;
    .locals 3
    .param p0, "idx"    # I

    .line 150
    new-instance v0, Lcom/android/dex/util/ExceptionWithContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid constant pool index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    invoke-static {p0}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dex/util/ExceptionWithContext;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public get(I)Lcom/android/dx/rop/cst/Constant;
    .locals 2
    .param p1, "n"    # I

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/android/dx/rop/cst/Constant;

    aget-object v0, v0, p1

    .line 83
    .local v0, "result":Lcom/android/dx/rop/cst/Constant;
    if-nez v0, :cond_0

    .line 84
    invoke-static {p1}, Lcom/android/dx/rop/cst/StdConstantPool;->throwInvalid(I)Lcom/android/dx/rop/cst/Constant;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    return-object v0

    .line 88
    .end local v0    # "result":Lcom/android/dx/rop/cst/Constant;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {p1}, Lcom/android/dx/rop/cst/StdConstantPool;->throwInvalid(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v1

    return-object v1
.end method

.method public get0Ok(I)Lcom/android/dx/rop/cst/Constant;
    .locals 1
    .param p1, "n"    # I

    .line 70
    if-nez p1, :cond_0

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/cst/StdConstantPool;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v0

    return-object v0
.end method

.method public getEntries()[Lcom/android/dx/rop/cst/Constant;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/android/dx/rop/cst/Constant;

    return-object v0
.end method

.method public getOrNull(I)Lcom/android/dx/rop/cst/Constant;
    .locals 2
    .param p1, "n"    # I

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/android/dx/rop/cst/Constant;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 63
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {p1}, Lcom/android/dx/rop/cst/StdConstantPool;->throwInvalid(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v1

    return-object v1
.end method

.method public set(ILcom/android/dx/rop/cst/Constant;)V
    .locals 5
    .param p1, "n"    # I
    .param p2, "cst"    # Lcom/android/dx/rop/cst/Constant;

    .line 111
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/StdConstantPool;->throwIfImmutable()V

    .line 113
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/dx/rop/cst/Constant;->isCategory2()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 115
    .local v1, "cat2":Z
    :goto_0
    if-lt p1, v0, :cond_4

    .line 119
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 121
    iget-object v3, p0, Lcom/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/android/dx/rop/cst/Constant;

    array-length v4, v3

    sub-int/2addr v4, v0

    if-eq p1, v4, :cond_1

    .line 125
    add-int/lit8 v0, p1, 0x1

    aput-object v2, v3, v0

    goto :goto_1

    .line 122
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "(n == size - 1) && cst.isCategory2()"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/android/dx/rop/cst/Constant;

    aget-object v3, v0, p1

    if-nez v3, :cond_3

    .line 133
    add-int/lit8 v3, p1, -0x1

    aget-object v0, v0, v3

    .line 134
    .local v0, "prev":Lcom/android/dx/rop/cst/Constant;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/Constant;->isCategory2()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 135
    iget-object v3, p0, Lcom/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/android/dx/rop/cst/Constant;

    add-int/lit8 v4, p1, -0x1

    aput-object v2, v3, v4

    .line 139
    .end local v0    # "prev":Lcom/android/dx/rop/cst/Constant;
    :cond_3
    iget-object v0, p0, Lcom/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/android/dx/rop/cst/Constant;

    aput-object p2, v0, p1

    .line 140
    return-void

    .line 116
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "n < 1"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/dx/rop/cst/StdConstantPool;->entries:[Lcom/android/dx/rop/cst/Constant;

    array-length v0, v0

    return v0
.end method
