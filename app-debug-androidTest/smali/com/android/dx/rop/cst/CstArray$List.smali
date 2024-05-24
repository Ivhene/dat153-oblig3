.class public final Lcom/android/dx/rop/cst/CstArray$List;
.super Lcom/android/dx/util/FixedSizeList;
.source "CstArray.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/rop/cst/CstArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/dx/util/FixedSizeList;",
        "Ljava/lang/Comparable<",
        "Lcom/android/dx/rop/cst/CstArray$List;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .line 110
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    .line 111
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/dx/rop/cst/CstArray$List;)I
    .locals 7
    .param p1, "other"    # Lcom/android/dx/rop/cst/CstArray$List;

    .line 116
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstArray$List;->size()I

    move-result v0

    .line 117
    .local v0, "thisSize":I
    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstArray$List;->size()I

    move-result v1

    .line 118
    .local v1, "otherSize":I
    if-ge v0, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 120
    .local v2, "compareSize":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 121
    invoke-virtual {p0, v3}, Lcom/android/dx/rop/cst/CstArray$List;->get0(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/dx/rop/cst/Constant;

    .line 122
    .local v4, "thisItem":Lcom/android/dx/rop/cst/Constant;
    invoke-virtual {p1, v3}, Lcom/android/dx/rop/cst/CstArray$List;->get0(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dx/rop/cst/Constant;

    .line 123
    .local v5, "otherItem":Lcom/android/dx/rop/cst/Constant;
    invoke-virtual {v4, v5}, Lcom/android/dx/rop/cst/Constant;->compareTo(Lcom/android/dx/rop/cst/Constant;)I

    move-result v6

    .line 124
    .local v6, "compare":I
    if-eqz v6, :cond_1

    .line 125
    return v6

    .line 120
    .end local v4    # "thisItem":Lcom/android/dx/rop/cst/Constant;
    .end local v5    # "otherItem":Lcom/android/dx/rop/cst/Constant;
    .end local v6    # "compare":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 129
    .end local v3    # "i":I
    :cond_2
    if-ge v0, v1, :cond_3

    .line 130
    const/4 v3, -0x1

    return v3

    .line 131
    :cond_3
    if-le v0, v1, :cond_4

    .line 132
    const/4 v3, 0x1

    return v3

    .line 135
    :cond_4
    const/4 v3, 0x0

    return v3
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 101
    check-cast p1, Lcom/android/dx/rop/cst/CstArray$List;

    invoke-virtual {p0, p1}, Lcom/android/dx/rop/cst/CstArray$List;->compareTo(Lcom/android/dx/rop/cst/CstArray$List;)I

    move-result p1

    return p1
.end method

.method public get(I)Lcom/android/dx/rop/cst/Constant;
    .locals 1
    .param p1, "n"    # I

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/cst/CstArray$List;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/rop/cst/Constant;

    return-object v0
.end method

.method public set(ILcom/android/dx/rop/cst/Constant;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "a"    # Lcom/android/dx/rop/cst/Constant;

    .line 157
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/rop/cst/CstArray$List;->set0(ILjava/lang/Object;)V

    .line 158
    return-void
.end method
