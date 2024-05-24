.class public final Lcom/android/dx/cf/code/ByteCatchList;
.super Lcom/android/dx/util/FixedSizeList;
.source "ByteCatchList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/cf/code/ByteCatchList$Item;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/dx/cf/code/ByteCatchList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/android/dx/cf/code/ByteCatchList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/dx/cf/code/ByteCatchList;-><init>(I)V

    sput-object v0, Lcom/android/dx/cf/code/ByteCatchList;->EMPTY:Lcom/android/dx/cf/code/ByteCatchList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "count"    # I

    .line 39
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    .line 40
    return-void
.end method

.method private static typeNotFound(Lcom/android/dx/cf/code/ByteCatchList$Item;[Lcom/android/dx/cf/code/ByteCatchList$Item;I)Z
    .locals 4
    .param p0, "item"    # Lcom/android/dx/cf/code/ByteCatchList$Item;
    .param p1, "arr"    # [Lcom/android/dx/cf/code/ByteCatchList$Item;
    .param p2, "count"    # I

    .line 139
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ByteCatchList$Item;->getExceptionClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v0

    .line 141
    .local v0, "type":Lcom/android/dx/rop/cst/CstType;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 142
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/android/dx/cf/code/ByteCatchList$Item;->getExceptionClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v2

    .line 143
    .local v2, "one":Lcom/android/dx/rop/cst/CstType;
    if-eq v2, v0, :cond_1

    sget-object v3, Lcom/android/dx/rop/cst/CstType;->OBJECT:Lcom/android/dx/rop/cst/CstType;

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 141
    .end local v2    # "one":Lcom/android/dx/rop/cst/CstType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .restart local v2    # "one":Lcom/android/dx/rop/cst/CstType;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    return v3

    .line 148
    .end local v1    # "i":I
    .end local v2    # "one":Lcom/android/dx/rop/cst/CstType;
    :cond_2
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public byteLength()I
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ByteCatchList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public get(I)Lcom/android/dx/cf/code/ByteCatchList$Item;
    .locals 1
    .param p1, "n"    # I

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/dx/cf/code/ByteCatchList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/cf/code/ByteCatchList$Item;

    return-object v0
.end method

.method public listFor(I)Lcom/android/dx/cf/code/ByteCatchList;
    .locals 6
    .param p1, "pc"    # I

    .line 102
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ByteCatchList;->size()I

    move-result v0

    .line 103
    .local v0, "sz":I
    new-array v1, v0, [Lcom/android/dx/cf/code/ByteCatchList$Item;

    .line 104
    .local v1, "resultArr":[Lcom/android/dx/cf/code/ByteCatchList$Item;
    const/4 v2, 0x0

    .line 106
    .local v2, "resultSz":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 107
    invoke-virtual {p0, v3}, Lcom/android/dx/cf/code/ByteCatchList;->get(I)Lcom/android/dx/cf/code/ByteCatchList$Item;

    move-result-object v4

    .line 108
    .local v4, "one":Lcom/android/dx/cf/code/ByteCatchList$Item;
    invoke-virtual {v4, p1}, Lcom/android/dx/cf/code/ByteCatchList$Item;->covers(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4, v1, v2}, Lcom/android/dx/cf/code/ByteCatchList;->typeNotFound(Lcom/android/dx/cf/code/ByteCatchList$Item;[Lcom/android/dx/cf/code/ByteCatchList$Item;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    aput-object v4, v1, v2

    .line 110
    add-int/lit8 v2, v2, 0x1

    .line 106
    .end local v4    # "one":Lcom/android/dx/cf/code/ByteCatchList$Item;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    .end local v3    # "i":I
    :cond_1
    if-nez v2, :cond_2

    .line 115
    sget-object v3, Lcom/android/dx/cf/code/ByteCatchList;->EMPTY:Lcom/android/dx/cf/code/ByteCatchList;

    return-object v3

    .line 118
    :cond_2
    new-instance v3, Lcom/android/dx/cf/code/ByteCatchList;

    invoke-direct {v3, v2}, Lcom/android/dx/cf/code/ByteCatchList;-><init>(I)V

    .line 119
    .local v3, "result":Lcom/android/dx/cf/code/ByteCatchList;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_3

    .line 120
    aget-object v5, v1, v4

    invoke-virtual {v3, v4, v5}, Lcom/android/dx/cf/code/ByteCatchList;->set(ILcom/android/dx/cf/code/ByteCatchList$Item;)V

    .line 119
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 123
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {v3}, Lcom/android/dx/cf/code/ByteCatchList;->setImmutable()V

    .line 124
    return-object v3
.end method

.method public set(IIIILcom/android/dx/rop/cst/CstType;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "startPc"    # I
    .param p3, "endPc"    # I
    .param p4, "handlerPc"    # I
    .param p5, "exceptionClass"    # Lcom/android/dx/rop/cst/CstType;

    .line 90
    new-instance v0, Lcom/android/dx/cf/code/ByteCatchList$Item;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/android/dx/cf/code/ByteCatchList$Item;-><init>(IIILcom/android/dx/rop/cst/CstType;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/dx/cf/code/ByteCatchList;->set0(ILjava/lang/Object;)V

    .line 91
    return-void
.end method

.method public set(ILcom/android/dx/cf/code/ByteCatchList$Item;)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "item"    # Lcom/android/dx/cf/code/ByteCatchList$Item;

    .line 70
    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/cf/code/ByteCatchList;->set0(ILjava/lang/Object;)V

    .line 75
    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toRopCatchList()Lcom/android/dx/rop/type/TypeList;
    .locals 4

    .line 205
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ByteCatchList;->size()I

    move-result v0

    .line 206
    .local v0, "sz":I
    if-nez v0, :cond_0

    .line 207
    sget-object v1, Lcom/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/android/dx/rop/type/StdTypeList;

    return-object v1

    .line 210
    :cond_0
    new-instance v1, Lcom/android/dx/rop/type/StdTypeList;

    invoke-direct {v1, v0}, Lcom/android/dx/rop/type/StdTypeList;-><init>(I)V

    .line 212
    .local v1, "result":Lcom/android/dx/rop/type/StdTypeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 213
    invoke-virtual {p0, v2}, Lcom/android/dx/cf/code/ByteCatchList;->get(I)Lcom/android/dx/cf/code/ByteCatchList$Item;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/cf/code/ByteCatchList$Item;->getExceptionClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/dx/rop/type/StdTypeList;->set(ILcom/android/dx/rop/type/Type;)V

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Lcom/android/dx/rop/type/StdTypeList;->setImmutable()V

    .line 217
    return-object v1
.end method

.method public toTargetList(I)Lcom/android/dx/util/IntList;
    .locals 5
    .param p1, "noException"    # I

    .line 163
    const/4 v0, -0x1

    if-lt p1, v0, :cond_6

    .line 167
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 168
    .local v2, "hasDefault":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/dx/cf/code/ByteCatchList;->size()I

    move-result v3

    .line 170
    .local v3, "sz":I
    if-nez v3, :cond_2

    .line 171
    if-eqz v2, :cond_1

    .line 176
    invoke-static {p1}, Lcom/android/dx/util/IntList;->makeImmutable(I)Lcom/android/dx/util/IntList;

    move-result-object v0

    return-object v0

    .line 182
    :cond_1
    sget-object v0, Lcom/android/dx/util/IntList;->EMPTY:Lcom/android/dx/util/IntList;

    return-object v0

    .line 185
    :cond_2
    new-instance v4, Lcom/android/dx/util/IntList;

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    add-int/2addr v0, v3

    invoke-direct {v4, v0}, Lcom/android/dx/util/IntList;-><init>(I)V

    move-object v0, v4

    .line 187
    .local v0, "result":Lcom/android/dx/util/IntList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 188
    invoke-virtual {p0, v1}, Lcom/android/dx/cf/code/ByteCatchList;->get(I)Lcom/android/dx/cf/code/ByteCatchList$Item;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/cf/code/ByteCatchList$Item;->getHandlerPc()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/dx/util/IntList;->add(I)V

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 191
    .end local v1    # "i":I
    :cond_4
    if-eqz v2, :cond_5

    .line 192
    invoke-virtual {v0, p1}, Lcom/android/dx/util/IntList;->add(I)V

    .line 195
    :cond_5
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->setImmutable()V

    .line 196
    return-object v0

    .line 164
    .end local v0    # "result":Lcom/android/dx/util/IntList;
    .end local v2    # "hasDefault":Z
    .end local v3    # "sz":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "noException < -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
