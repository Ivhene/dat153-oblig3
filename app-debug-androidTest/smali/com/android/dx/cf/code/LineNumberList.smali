.class public final Lcom/android/dx/cf/code/LineNumberList;
.super Lcom/android/dx/util/FixedSizeList;
.source "LineNumberList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/cf/code/LineNumberList$Item;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/dx/cf/code/LineNumberList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/android/dx/cf/code/LineNumberList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/dx/cf/code/LineNumberList;-><init>(I)V

    sput-object v0, Lcom/android/dx/cf/code/LineNumberList;->EMPTY:Lcom/android/dx/cf/code/LineNumberList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "count"    # I

    .line 65
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    .line 66
    return-void
.end method

.method public static concat(Lcom/android/dx/cf/code/LineNumberList;Lcom/android/dx/cf/code/LineNumberList;)Lcom/android/dx/cf/code/LineNumberList;
    .locals 6
    .param p0, "list1"    # Lcom/android/dx/cf/code/LineNumberList;
    .param p1, "list2"    # Lcom/android/dx/cf/code/LineNumberList;

    .line 39
    sget-object v0, Lcom/android/dx/cf/code/LineNumberList;->EMPTY:Lcom/android/dx/cf/code/LineNumberList;

    if-ne p0, v0, :cond_0

    .line 41
    return-object p1

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/android/dx/cf/code/LineNumberList;->size()I

    move-result v0

    .line 45
    .local v0, "sz1":I
    invoke-virtual {p1}, Lcom/android/dx/cf/code/LineNumberList;->size()I

    move-result v1

    .line 46
    .local v1, "sz2":I
    new-instance v2, Lcom/android/dx/cf/code/LineNumberList;

    add-int v3, v0, v1

    invoke-direct {v2, v3}, Lcom/android/dx/cf/code/LineNumberList;-><init>(I)V

    .line 48
    .local v2, "result":Lcom/android/dx/cf/code/LineNumberList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 49
    invoke-virtual {p0, v3}, Lcom/android/dx/cf/code/LineNumberList;->get(I)Lcom/android/dx/cf/code/LineNumberList$Item;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/dx/cf/code/LineNumberList;->set(ILcom/android/dx/cf/code/LineNumberList$Item;)V

    .line 48
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 53
    add-int v4, v0, v3

    invoke-virtual {p1, v3}, Lcom/android/dx/cf/code/LineNumberList;->get(I)Lcom/android/dx/cf/code/LineNumberList$Item;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/dx/cf/code/LineNumberList;->set(ILcom/android/dx/cf/code/LineNumberList$Item;)V

    .line 52
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 56
    .end local v3    # "i":I
    :cond_2
    return-object v2
.end method


# virtual methods
.method public get(I)Lcom/android/dx/cf/code/LineNumberList$Item;
    .locals 1
    .param p1, "n"    # I

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/dx/cf/code/LineNumberList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/cf/code/LineNumberList$Item;

    return-object v0
.end method

.method public pcToLine(I)I
    .locals 6
    .param p1, "pc"    # I

    .line 117
    invoke-virtual {p0}, Lcom/android/dx/cf/code/LineNumberList;->size()I

    move-result v0

    .line 118
    .local v0, "sz":I
    const/4 v1, -0x1

    .line 119
    .local v1, "bestPc":I
    const/4 v2, -0x1

    .line 121
    .local v2, "bestLine":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 122
    invoke-virtual {p0, v3}, Lcom/android/dx/cf/code/LineNumberList;->get(I)Lcom/android/dx/cf/code/LineNumberList$Item;

    move-result-object v4

    .line 123
    .local v4, "one":Lcom/android/dx/cf/code/LineNumberList$Item;
    invoke-virtual {v4}, Lcom/android/dx/cf/code/LineNumberList$Item;->getStartPc()I

    move-result v5

    .line 124
    .local v5, "onePc":I
    if-gt v5, p1, :cond_0

    if-le v5, v1, :cond_0

    .line 125
    move v1, v5

    .line 126
    invoke-virtual {v4}, Lcom/android/dx/cf/code/LineNumberList$Item;->getLineNumber()I

    move-result v2

    .line 127
    if-ne v1, p1, :cond_0

    .line 129
    goto :goto_1

    .line 121
    .end local v4    # "one":Lcom/android/dx/cf/code/LineNumberList$Item;
    .end local v5    # "onePc":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 134
    .end local v3    # "i":I
    :cond_1
    :goto_1
    return v2
.end method

.method public set(III)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "startPc"    # I
    .param p3, "lineNumber"    # I

    .line 100
    new-instance v0, Lcom/android/dx/cf/code/LineNumberList$Item;

    invoke-direct {v0, p2, p3}, Lcom/android/dx/cf/code/LineNumberList$Item;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/android/dx/cf/code/LineNumberList;->set0(ILjava/lang/Object;)V

    .line 101
    return-void
.end method

.method public set(ILcom/android/dx/cf/code/LineNumberList$Item;)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "item"    # Lcom/android/dx/cf/code/LineNumberList$Item;

    .line 85
    if-eqz p2, :cond_0

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/cf/code/LineNumberList;->set0(ILjava/lang/Object;)V

    .line 90
    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
