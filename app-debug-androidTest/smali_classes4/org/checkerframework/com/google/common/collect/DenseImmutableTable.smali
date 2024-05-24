.class final Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;
.super Lorg/checkerframework/com/google/common/collect/RegularImmutableTable;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$ColumnMap;,
        Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$RowMap;,
        Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$Column;,
        Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$Row;,
        Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$ImmutableArrayMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/RegularImmutableTable<",
        "TR;TC;TV;>;"
    }
.end annotation

.annotation runtime Lorg/checkerframework/com/google/errorprone/annotations/Immutable;
    containerOf = {
        "R",
        "C",
        "V"
    }
.end annotation


# instance fields
.field private final cellColumnIndices:[I

.field private final cellRowIndices:[I

.field private final columnCounts:[I

.field private final columnKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final columnMap:Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TC;",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TR;TV;>;>;"
        }
    .end annotation
.end field

.field private final rowCounts:[I

.field private final rowKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final rowMap:Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TR;",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TC;TV;>;>;"
        }
    .end annotation
.end field

.field private final values:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableList;Lorg/checkerframework/com/google/common/collect/ImmutableSet;Lorg/checkerframework/com/google/common/collect/ImmutableSet;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "TR;>;",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "TC;>;)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;, "Lorg/checkerframework/com/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    .local p1, "cellList":Lorg/checkerframework/com/google/common/collect/ImmutableList;, "Lorg/checkerframework/com/google/common/collect/ImmutableList<Lorg/checkerframework/com/google/common/collect/Table$Cell<TR;TC;TV;>;>;"
    .local p2, "rowSpace":Lorg/checkerframework/com/google/common/collect/ImmutableSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet<TR;>;"
    .local p3, "columnSpace":Lorg/checkerframework/com/google/common/collect/ImmutableSet;, "Lorg/checkerframework/com/google/common/collect/ImmutableSet<TC;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/RegularImmutableTable;-><init>()V

    .line 55
    invoke-virtual {p2}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->size()I

    move-result v0

    invoke-virtual {p3}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->size()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    check-cast v0, [[Ljava/lang/Object;

    .line 56
    .local v0, "array":[[Ljava/lang/Object;, "[[TV;"
    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;

    .line 57
    invoke-static {p2}, Lorg/checkerframework/com/google/common/collect/Maps;->indexMap(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->rowKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    .line 58
    invoke-static {p3}, Lorg/checkerframework/com/google/common/collect/Maps;->indexMap(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->columnKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    .line 59
    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->rowCounts:[I

    .line 60
    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->columnCounts:[I

    .line 61
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 62
    .local v1, "cellRowIndices":[I
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 63
    .local v2, "cellColumnIndices":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 64
    invoke-virtual {p1, v3}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/google/common/collect/Table$Cell;

    .line 65
    .local v4, "cell":Lorg/checkerframework/com/google/common/collect/Table$Cell;, "Lorg/checkerframework/com/google/common/collect/Table$Cell<TR;TC;TV;>;"
    invoke-interface {v4}, Lorg/checkerframework/com/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v5

    .line 66
    .local v5, "rowKey":Ljava/lang/Object;, "TR;"
    invoke-interface {v4}, Lorg/checkerframework/com/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v6

    .line 67
    .local v6, "columnKey":Ljava/lang/Object;, "TC;"
    iget-object v7, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->rowKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v7, v5}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 68
    .local v7, "rowIndex":I
    iget-object v8, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->columnKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v8, v6}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 69
    .local v8, "columnIndex":I
    iget-object v9, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;

    aget-object v9, v9, v7

    aget-object v9, v9, v8

    .line 70
    .local v9, "existingValue":Ljava/lang/Object;, "TV;"
    invoke-interface {v4}, Lorg/checkerframework/com/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p0, v5, v6, v9, v10}, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->checkNoDuplicate(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    iget-object v10, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;

    aget-object v10, v10, v7

    invoke-interface {v4}, Lorg/checkerframework/com/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v10, v8

    .line 72
    iget-object v10, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->rowCounts:[I

    aget v11, v10, v7

    add-int/lit8 v11, v11, 0x1

    aput v11, v10, v7

    .line 73
    iget-object v10, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->columnCounts:[I

    aget v11, v10, v8

    add-int/lit8 v11, v11, 0x1

    aput v11, v10, v8

    .line 74
    aput v7, v1, v3

    .line 75
    aput v8, v2, v3

    .line 63
    .end local v4    # "cell":Lorg/checkerframework/com/google/common/collect/Table$Cell;, "Lorg/checkerframework/com/google/common/collect/Table$Cell<TR;TC;TV;>;"
    .end local v5    # "rowKey":Ljava/lang/Object;, "TR;"
    .end local v6    # "columnKey":Ljava/lang/Object;, "TC;"
    .end local v7    # "rowIndex":I
    .end local v8    # "columnIndex":I
    .end local v9    # "existingValue":Ljava/lang/Object;, "TV;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    .end local v3    # "i":I
    :cond_0
    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->cellRowIndices:[I

    .line 78
    iput-object v2, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->cellColumnIndices:[I

    .line 79
    new-instance v3, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$RowMap;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$RowMap;-><init>(Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$1;)V

    iput-object v3, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->rowMap:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    .line 80
    new-instance v3, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$ColumnMap;

    invoke-direct {v3, p0, v4}, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$ColumnMap;-><init>(Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;Lorg/checkerframework/com/google/common/collect/DenseImmutableTable$1;)V

    iput-object v3, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->columnMap:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    .line 81
    return-void
.end method

.method static synthetic access$200(Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;)[I
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;

    .line 27
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->rowCounts:[I

    return-object v0
.end method

.method static synthetic access$300(Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;

    .line 27
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->columnKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method static synthetic access$400(Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;)[[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;

    .line 27
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;)[I
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;

    .line 27
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->columnCounts:[I

    return-object v0
.end method

.method static synthetic access$600(Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;

    .line 27
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->rowKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic columnMap()Ljava/util/Map;
    .locals 1

    .line 25
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;, "Lorg/checkerframework/com/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->columnMap()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public columnMap()Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    .line 235
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;, "Lorg/checkerframework/com/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->columnMap:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    .line 236
    .local v0, "columnMap":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TC;Lorg/checkerframework/com/google/common/collect/ImmutableMap<TR;TV;>;>;"
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1
.end method

.method createSerializedForm()Lorg/checkerframework/com/google/common/collect/ImmutableTable$SerializedForm;
    .locals 2

    .line 275
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;, "Lorg/checkerframework/com/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->cellRowIndices:[I

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->cellColumnIndices:[I

    invoke-static {p0, v0, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableTable$SerializedForm;->create(Lorg/checkerframework/com/google/common/collect/ImmutableTable;[I[I)Lorg/checkerframework/com/google/common/collect/ImmutableTable$SerializedForm;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "rowKey"    # Ljava/lang/Object;
    .param p2, "columnKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 248
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;, "Lorg/checkerframework/com/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->rowKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 249
    .local v0, "rowIndex":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->columnKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 250
    .local v1, "columnIndex":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method getCell(I)Lorg/checkerframework/com/google/common/collect/Table$Cell;
    .locals 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 260
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;, "Lorg/checkerframework/com/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->cellRowIndices:[I

    aget v0, v0, p1

    .line 261
    .local v0, "rowIndex":I
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->cellColumnIndices:[I

    aget v1, v1, p1

    .line 262
    .local v1, "columnIndex":I
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->rowKeySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->asList()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 263
    .local v2, "rowKey":Ljava/lang/Object;, "TR;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->columnKeySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/com/google/common/collect/ImmutableSet;->asList()Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 264
    .local v3, "columnKey":Ljava/lang/Object;, "TC;"
    iget-object v4, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    .line 265
    .local v4, "value":Ljava/lang/Object;, "TV;"
    invoke-static {v2, v3, v4}, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->cellOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/Table$Cell;

    move-result-object v5

    return-object v5
.end method

.method getValue(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 270
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;, "Lorg/checkerframework/com/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->values:[[Ljava/lang/Object;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->cellRowIndices:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->cellColumnIndices:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .locals 1

    .line 25
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;, "Lorg/checkerframework/com/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->rowMap()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 242
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;, "Lorg/checkerframework/com/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->rowMap:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    .line 243
    .local v0, "rowMap":Lorg/checkerframework/com/google/common/collect/ImmutableMap;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap<TR;Lorg/checkerframework/com/google/common/collect/ImmutableMap<TC;TV;>;>;"
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 255
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;, "Lorg/checkerframework/com/google/common/collect/DenseImmutableTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/DenseImmutableTable;->cellRowIndices:[I

    array-length v0, v0

    return v0
.end method
