.class public final Lcom/android/dx/dex/code/CatchTable;
.super Lcom/android/dx/util/FixedSizeList;
.source "CatchTable.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/code/CatchTable$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/dx/util/FixedSizeList;",
        "Ljava/lang/Comparable<",
        "Lcom/android/dx/dex/code/CatchTable;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/dx/dex/code/CatchTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/android/dx/dex/code/CatchTable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/dx/dex/code/CatchTable;-><init>(I)V

    sput-object v0, Lcom/android/dx/dex/code/CatchTable;->EMPTY:Lcom/android/dx/dex/code/CatchTable;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .line 37
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/dx/dex/code/CatchTable;)I
    .locals 8
    .param p1, "other"    # Lcom/android/dx/dex/code/CatchTable;

    .line 65
    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    .line 67
    return v0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/android/dx/dex/code/CatchTable;->size()I

    move-result v1

    .line 71
    .local v1, "thisSize":I
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CatchTable;->size()I

    move-result v2

    .line 72
    .local v2, "otherSize":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 74
    .local v3, "checkSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 75
    invoke-virtual {p0, v4}, Lcom/android/dx/dex/code/CatchTable;->get(I)Lcom/android/dx/dex/code/CatchTable$Entry;

    move-result-object v5

    .line 76
    .local v5, "thisEntry":Lcom/android/dx/dex/code/CatchTable$Entry;
    invoke-virtual {p1, v4}, Lcom/android/dx/dex/code/CatchTable;->get(I)Lcom/android/dx/dex/code/CatchTable$Entry;

    move-result-object v6

    .line 77
    .local v6, "otherEntry":Lcom/android/dx/dex/code/CatchTable$Entry;
    invoke-virtual {v5, v6}, Lcom/android/dx/dex/code/CatchTable$Entry;->compareTo(Lcom/android/dx/dex/code/CatchTable$Entry;)I

    move-result v7

    .line 78
    .local v7, "compare":I
    if-eqz v7, :cond_1

    .line 79
    return v7

    .line 74
    .end local v5    # "thisEntry":Lcom/android/dx/dex/code/CatchTable$Entry;
    .end local v6    # "otherEntry":Lcom/android/dx/dex/code/CatchTable$Entry;
    .end local v7    # "compare":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83
    .end local v4    # "i":I
    :cond_2
    if-ge v1, v2, :cond_3

    .line 84
    const/4 v0, -0x1

    return v0

    .line 85
    :cond_3
    if-le v1, v2, :cond_4

    .line 86
    const/4 v0, 0x1

    return v0

    .line 89
    :cond_4
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Lcom/android/dx/dex/code/CatchTable;

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/CatchTable;->compareTo(Lcom/android/dx/dex/code/CatchTable;)I

    move-result p1

    return p1
.end method

.method public get(I)Lcom/android/dx/dex/code/CatchTable$Entry;
    .locals 1
    .param p1, "n"    # I

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/CatchTable;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/CatchTable$Entry;

    return-object v0
.end method

.method public set(ILcom/android/dx/dex/code/CatchTable$Entry;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "entry"    # Lcom/android/dx/dex/code/CatchTable$Entry;

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/dex/code/CatchTable;->set0(ILjava/lang/Object;)V

    .line 60
    return-void
.end method
