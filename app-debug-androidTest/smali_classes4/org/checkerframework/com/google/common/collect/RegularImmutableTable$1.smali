.class final Lorg/checkerframework/com/google/common/collect/RegularImmutableTable$1;
.super Ljava/lang/Object;
.source "RegularImmutableTable.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/RegularImmutableTable;->forCells(Ljava/util/List;Ljava/util/Comparator;Ljava/util/Comparator;)Lorg/checkerframework/com/google/common/collect/RegularImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
        "TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$columnComparator:Ljava/util/Comparator;

.field final synthetic val$rowComparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableTable$1;->val$rowComparator:Ljava/util/Comparator;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableTable$1;->val$columnComparator:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 112
    check-cast p1, Lorg/checkerframework/com/google/common/collect/Table$Cell;

    check-cast p2, Lorg/checkerframework/com/google/common/collect/Table$Cell;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/RegularImmutableTable$1;->compare(Lorg/checkerframework/com/google/common/collect/Table$Cell;Lorg/checkerframework/com/google/common/collect/Table$Cell;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/checkerframework/com/google/common/collect/Table$Cell;Lorg/checkerframework/com/google/common/collect/Table$Cell;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;",
            "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;)I"
        }
    .end annotation

    .line 115
    .local p1, "cell1":Lorg/checkerframework/com/google/common/collect/Table$Cell;, "Lorg/checkerframework/com/google/common/collect/Table$Cell<TR;TC;TV;>;"
    .local p2, "cell2":Lorg/checkerframework/com/google/common/collect/Table$Cell;, "Lorg/checkerframework/com/google/common/collect/Table$Cell<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableTable$1;->val$rowComparator:Ljava/util/Comparator;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 118
    :cond_0
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2}, Lorg/checkerframework/com/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :goto_0
    nop

    .line 119
    .local v0, "rowCompare":I
    if-eqz v0, :cond_1

    .line 120
    return v0

    .line 122
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/RegularImmutableTable$1;->val$columnComparator:Ljava/util/Comparator;

    if-nez v2, :cond_2

    goto :goto_1

    .line 124
    :cond_2
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Lorg/checkerframework/com/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 122
    :goto_1
    return v1
.end method
