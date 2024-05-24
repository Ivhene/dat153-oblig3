.class public final Lorg/checkerframework/com/google/common/collect/ArrayTable;
.super Lorg/checkerframework/com/google/common/collect/AbstractTable;
.source "ArrayTable.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/ArrayTable$RowMap;,
        Lorg/checkerframework/com/google/common/collect/ArrayTable$Row;,
        Lorg/checkerframework/com/google/common/collect/ArrayTable$ColumnMap;,
        Lorg/checkerframework/com/google/common/collect/ArrayTable$Column;,
        Lorg/checkerframework/com/google/common/collect/ArrayTable$ArrayMap;
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
        "Lorg/checkerframework/com/google/common/collect/AbstractTable<",
        "TR;TC;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final array:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TV;"
        }
    .end annotation
.end field

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

.field private final columnList:Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TC;>;"
        }
    .end annotation
.end field

.field private transient columnMap:Lorg/checkerframework/com/google/common/collect/ArrayTable$ColumnMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ArrayTable<",
            "TR;TC;TV;>.ColumnMap;"
        }
    .end annotation
.end field

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

.field private final rowList:Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TR;>;"
        }
    .end annotation
.end field

.field private transient rowMap:Lorg/checkerframework/com/google/common/collect/ArrayTable$RowMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/ArrayTable<",
            "TR;TC;TV;>.RowMap;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$4CBMEpnmw5Uj7rnm_TiGF6RFpeY(Lorg/checkerframework/com/google/common/collect/ArrayTable;I)Lorg/checkerframework/com/google/common/collect/Table$Cell;
    .locals 0

    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/ArrayTable;->getCell(I)Lorg/checkerframework/com/google/common/collect/Table$Cell;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HkMD2iaJrVDqmv_I4XMxKg6Uw3s(Lorg/checkerframework/com/google/common/collect/ArrayTable;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/ArrayTable;->getValue(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TR;>;",
            "Ljava/lang/Iterable<",
            "+TC;>;)V"
        }
    .end annotation

    .line 136
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    .local p1, "rowKeys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TR;>;"
    .local p2, "columnKeys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TC;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractTable;-><init>()V

    .line 137
    invoke-static {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->rowList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 138
    invoke-static {p2}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->columnList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 139
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v2

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 147
    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Maps;->indexMap(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->rowKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    .line 148
    invoke-static {v1}, Lorg/checkerframework/com/google/common/collect/Maps;->indexMap(Ljava/util/Collection;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v2

    iput-object v2, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->columnKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    .line 151
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    check-cast v0, [[Ljava/lang/Object;

    .line 152
    .local v0, "tmpArray":[[Ljava/lang/Object;, "[[TV;"
    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    .line 154
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ArrayTable;->eraseAll()V

    .line 155
    return-void
.end method

.method private constructor <init>(Lorg/checkerframework/com/google/common/collect/ArrayTable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ArrayTable<",
            "TR;TC;TV;>;)V"
        }
    .end annotation

    .line 162
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    .local p1, "table":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractTable;-><init>()V

    .line 163
    iget-object v0, p1, Lorg/checkerframework/com/google/common/collect/ArrayTable;->rowList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->rowList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 164
    iget-object v1, p1, Lorg/checkerframework/com/google/common/collect/ArrayTable;->columnList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->columnList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    .line 165
    iget-object v2, p1, Lorg/checkerframework/com/google/common/collect/ArrayTable;->rowKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    iput-object v2, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->rowKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    .line 166
    iget-object v2, p1, Lorg/checkerframework/com/google/common/collect/ArrayTable;->columnKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    iput-object v2, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->columnKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    .line 168
    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    check-cast v0, [[Ljava/lang/Object;

    .line 169
    .local v0, "copy":[[Ljava/lang/Object;, "[[TV;"
    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    .line 170
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->rowList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 171
    iget-object v2, p1, Lorg/checkerframework/com/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v2, v2, v1

    aget-object v3, v0, v1

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private constructor <init>(Lorg/checkerframework/com/google/common/collect/Table;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Table<",
            "TR;TC;TV;>;)V"
        }
    .end annotation

    .line 158
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    .local p1, "table":Lorg/checkerframework/com/google/common/collect/Table;, "Lorg/checkerframework/com/google/common/collect/Table<TR;TC;TV;>;"
    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/Table;->rowKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lorg/checkerframework/com/google/common/collect/Table;->columnKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/com/google/common/collect/ArrayTable;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 159
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ArrayTable;->putAll(Lorg/checkerframework/com/google/common/collect/Table;)V

    .line 160
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/com/google/common/collect/ArrayTable;I)Lorg/checkerframework/com/google/common/collect/Table$Cell;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/ArrayTable;
    .param p1, "x1"    # I

    .line 82
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/ArrayTable;->getCell(I)Lorg/checkerframework/com/google/common/collect/Table$Cell;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/checkerframework/com/google/common/collect/ArrayTable;)Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/ArrayTable;

    .line 82
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->columnList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    return-object v0
.end method

.method static synthetic access$200(Lorg/checkerframework/com/google/common/collect/ArrayTable;)Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/ArrayTable;

    .line 82
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->rowList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    return-object v0
.end method

.method static synthetic access$300(Lorg/checkerframework/com/google/common/collect/ArrayTable;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/ArrayTable;

    .line 82
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->rowKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method static synthetic access$600(Lorg/checkerframework/com/google/common/collect/ArrayTable;)Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/ArrayTable;

    .line 82
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->columnKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method static synthetic access$800(Lorg/checkerframework/com/google/common/collect/ArrayTable;I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/google/common/collect/ArrayTable;
    .param p1, "x1"    # I

    .line 82
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/ArrayTable;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/ArrayTable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TR;>;",
            "Ljava/lang/Iterable<",
            "+TC;>;)",
            "Lorg/checkerframework/com/google/common/collect/ArrayTable<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 95
    .local p0, "rowKeys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TR;>;"
    .local p1, "columnKeys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TC;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ArrayTable;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/ArrayTable;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static create(Lorg/checkerframework/com/google/common/collect/Table;)Lorg/checkerframework/com/google/common/collect/ArrayTable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/collect/Table<",
            "TR;TC;TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/ArrayTable<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 123
    .local p0, "table":Lorg/checkerframework/com/google/common/collect/Table;, "Lorg/checkerframework/com/google/common/collect/Table<TR;TC;TV;>;"
    instance-of v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/checkerframework/com/google/common/collect/ArrayTable;

    move-object v1, p0

    check-cast v1, Lorg/checkerframework/com/google/common/collect/ArrayTable;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/google/common/collect/ArrayTable;-><init>(Lorg/checkerframework/com/google/common/collect/ArrayTable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ArrayTable;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/ArrayTable;-><init>(Lorg/checkerframework/com/google/common/collect/Table;)V

    :goto_0
    return-object v0
.end method

.method private getCell(I)Lorg/checkerframework/com/google/common/collect/Table$Cell;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 544
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ArrayTable$2;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/collect/ArrayTable$2;-><init>(Lorg/checkerframework/com/google/common/collect/ArrayTable;I)V

    return-object v0
.end method

.method private getValue(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 566
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->columnList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v0

    div-int v0, p1, v0

    .line 567
    .local v0, "rowIndex":I
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->columnList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v1

    rem-int v1, p1, v1

    .line 568
    .local v1, "columnIndex":I
    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/google/common/collect/ArrayTable;->at(II)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public at(II)Ljava/lang/Object;
    .locals 1
    .param p1, "rowIndex"    # I
    .param p2, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TV;"
        }
    .end annotation

    .line 310
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->rowList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 311
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->columnList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {p2, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 312
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    return-object v0
.end method

.method cellIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 529
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ArrayTable$1;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ArrayTable;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/ArrayTable$1;-><init>(Lorg/checkerframework/com/google/common/collect/ArrayTable;I)V

    return-object v0
.end method

.method public cellSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 524
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method cellSpliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 539
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    nop

    .line 540
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ArrayTable;->size()I

    move-result v0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/ArrayTable$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/collect/ArrayTable$$ExternalSyntheticLambda1;-><init>(Lorg/checkerframework/com/google/common/collect/ArrayTable;)V

    .line 539
    const/16 v2, 0x111

    invoke-static {v0, v2, v1}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators;->indexed(IILjava/util/function/IntFunction;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 366
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    .line 584
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    .local p1, "columnKey":Ljava/lang/Object;, "TC;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->columnKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 586
    .local v0, "columnIndex":Ljava/lang/Integer;
    if-nez v0, :cond_0

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/checkerframework/com/google/common/collect/ArrayTable$Column;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lorg/checkerframework/com/google/common/collect/ArrayTable$Column;-><init>(Lorg/checkerframework/com/google/common/collect/ArrayTable;I)V

    :goto_0
    return-object v1
.end method

.method public columnKeyList()Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TC;>;"
        }
    .end annotation

    .line 293
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->columnList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic columnKeySet()Ljava/util/Set;
    .locals 1

    .line 80
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ArrayTable;->columnKeySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public columnKeySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "TC;>;"
        }
    .end annotation

    .line 621
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->columnKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->keySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public columnMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    .line 628
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->columnMap:Lorg/checkerframework/com/google/common/collect/ArrayTable$ColumnMap;

    .line 629
    .local v0, "map":Lorg/checkerframework/com/google/common/collect/ArrayTable$ColumnMap;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    if-nez v0, :cond_0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/ArrayTable$ColumnMap;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/checkerframework/com/google/common/collect/ArrayTable$ColumnMap;-><init>(Lorg/checkerframework/com/google/common/collect/ArrayTable;Lorg/checkerframework/com/google/common/collect/ArrayTable$1;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->columnMap:Lorg/checkerframework/com/google/common/collect/ArrayTable$ColumnMap;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;
    .param p2, "columnKey"    # Ljava/lang/Object;

    .line 382
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/ArrayTable;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/checkerframework/com/google/common/collect/ArrayTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "columnKey"    # Ljava/lang/Object;

    .line 391
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->columnKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;

    .line 400
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->rowKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "value"    # Ljava/lang/Object;

    .line 405
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 406
    .local v4, "row":[Ljava/lang/Object;, "[TV;"
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 407
    .local v7, "element":Ljava/lang/Object;, "TV;"
    invoke-static {p1, v7}, Lorg/checkerframework/com/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 408
    const/4 v0, 0x1

    return v0

    .line 406
    .end local v7    # "element":Ljava/lang/Object;, "TV;"
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 405
    .end local v4    # "row":[Ljava/lang/Object;, "[TV;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 412
    :cond_2
    return v2
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 80
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractTable;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public erase(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
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

    .line 496
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->rowKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 497
    .local v0, "rowIndex":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->columnKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 498
    .local v1, "columnIndex":Ljava/lang/Integer;
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 501
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v3, v4, v2}, Lorg/checkerframework/com/google/common/collect/ArrayTable;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 499
    :cond_1
    :goto_0
    return-object v2
.end method

.method public eraseAll()V
    .locals 5

    .line 371
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 372
    .local v3, "row":[Ljava/lang/Object;, "[TV;"
    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 371
    .end local v3    # "row":[Ljava/lang/Object;, "[TV;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 374
    :cond_0
    return-void
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

    .line 417
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->rowKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 418
    .local v0, "rowIndex":Ljava/lang/Integer;
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->columnKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v1, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 419
    .local v1, "columnIndex":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lorg/checkerframework/com/google/common/collect/ArrayTable;->at(II)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 80
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractTable;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 427
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->rowList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->columnList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->isEmpty()Z

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

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)TV;"
        }
    .end annotation

    .line 439
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    .local p2, "columnKey":Ljava/lang/Object;, "TC;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->rowKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 442
    .local v0, "rowIndex":Ljava/lang/Integer;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string v4, "Row %s not in %s"

    iget-object v5, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->rowList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-static {v3, v4, p1, v5}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 443
    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->columnKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v3, p2}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 444
    .local v3, "columnIndex":Ljava/lang/Integer;
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v2, "Column %s not in %s"

    iget-object v4, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->columnList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-static {v1, v2, p2, v4}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 445
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v1, v2, p3}, Lorg/checkerframework/com/google/common/collect/ArrayTable;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public putAll(Lorg/checkerframework/com/google/common/collect/Table;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Table<",
            "+TR;+TC;+TV;>;)V"
        }
    .end annotation

    .line 465
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    .local p1, "table":Lorg/checkerframework/com/google/common/collect/Table;, "Lorg/checkerframework/com/google/common/collect/Table<+TR;+TC;+TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/AbstractTable;->putAll(Lorg/checkerframework/com/google/common/collect/Table;)V

    .line 466
    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 478
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 672
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->rowKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 674
    .local v0, "rowIndex":Ljava/lang/Integer;
    if-nez v0, :cond_0

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->of()Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/checkerframework/com/google/common/collect/ArrayTable$Row;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lorg/checkerframework/com/google/common/collect/ArrayTable$Row;-><init>(Lorg/checkerframework/com/google/common/collect/ArrayTable;I)V

    :goto_0
    return-object v1
.end method

.method public rowKeyList()Lorg/checkerframework/com/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableList<",
            "TR;>;"
        }
    .end annotation

    .line 285
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->rowList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic rowKeySet()Ljava/util/Set;
    .locals 1

    .line 80
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ArrayTable;->rowKeySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public rowKeySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableSet<",
            "TR;>;"
        }
    .end annotation

    .line 709
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->rowKeyToIndex:Lorg/checkerframework/com/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap;->keySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 716
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->rowMap:Lorg/checkerframework/com/google/common/collect/ArrayTable$RowMap;

    .line 717
    .local v0, "map":Lorg/checkerframework/com/google/common/collect/ArrayTable$RowMap;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>.RowMap;"
    if-nez v0, :cond_0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/ArrayTable$RowMap;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/checkerframework/com/google/common/collect/ArrayTable$RowMap;-><init>(Lorg/checkerframework/com/google/common/collect/ArrayTable;Lorg/checkerframework/com/google/common/collect/ArrayTable$1;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->rowMap:Lorg/checkerframework/com/google/common/collect/ArrayTable$RowMap;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public set(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "rowIndex"    # I
    .param p2, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITV;)TV;"
        }
    .end annotation

    .line 331
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->rowList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 332
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->columnList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {p2, v0}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 333
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v0, v0, p1

    aget-object v1, v0, p2

    .line 334
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    aput-object p3, v0, p2

    .line 335
    return-object v1
.end method

.method public size()I
    .locals 2

    .line 508
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->rowList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->columnList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public toArray(Ljava/lang/Class;)[[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TV;>;)[[TV;"
        }
    .end annotation

    .line 350
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    .local p1, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->rowList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->columnList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    check-cast v0, [[Ljava/lang/Object;

    .line 351
    .local v0, "copy":[[Ljava/lang/Object;, "[[TV;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->rowList:Lorg/checkerframework/com/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 352
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;

    aget-object v2, v2, v1

    aget-object v3, v0, v1

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 80
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractTable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 758
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/AbstractTable;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method valuesIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 763
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/ArrayTable$3;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ArrayTable;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/google/common/collect/ArrayTable$3;-><init>(Lorg/checkerframework/com/google/common/collect/ArrayTable;I)V

    return-object v0
.end method

.method valuesSpliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TV;>;"
        }
    .end annotation

    .line 773
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ArrayTable;, "Lorg/checkerframework/com/google/common/collect/ArrayTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ArrayTable;->size()I

    move-result v0

    new-instance v1, Lorg/checkerframework/com/google/common/collect/ArrayTable$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/google/common/collect/ArrayTable$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/google/common/collect/ArrayTable;)V

    const/16 v2, 0x10

    invoke-static {v0, v2, v1}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators;->indexed(IILjava/util/function/IntFunction;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
