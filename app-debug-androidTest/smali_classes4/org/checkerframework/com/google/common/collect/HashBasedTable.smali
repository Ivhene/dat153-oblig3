.class public Lorg/checkerframework/com/google/common/collect/HashBasedTable;
.super Lorg/checkerframework/com/google/common/collect/StandardTable;
.source "HashBasedTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/collect/HashBasedTable$Factory;
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
        "Lorg/checkerframework/com/google/common/collect/StandardTable<",
        "TR;TC;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/Map;Lorg/checkerframework/com/google/common/collect/HashBasedTable$Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;",
            "Lorg/checkerframework/com/google/common/collect/HashBasedTable$Factory<",
            "TC;TV;>;)V"
        }
    .end annotation

    .line 103
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBasedTable;, "Lorg/checkerframework/com/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    .local p1, "backingMap":Ljava/util/Map;, "Ljava/util/Map<TR;Ljava/util/Map<TC;TV;>;>;"
    .local p2, "factory":Lorg/checkerframework/com/google/common/collect/HashBasedTable$Factory;, "Lorg/checkerframework/com/google/common/collect/HashBasedTable$Factory<TC;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/StandardTable;-><init>(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Supplier;)V

    .line 104
    return-void
.end method

.method public static create()Lorg/checkerframework/com/google/common/collect/HashBasedTable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/collect/HashBasedTable<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 70
    new-instance v0, Lorg/checkerframework/com/google/common/collect/HashBasedTable;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Lorg/checkerframework/com/google/common/collect/HashBasedTable$Factory;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/checkerframework/com/google/common/collect/HashBasedTable$Factory;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/google/common/collect/HashBasedTable;-><init>(Ljava/util/Map;Lorg/checkerframework/com/google/common/collect/HashBasedTable$Factory;)V

    return-object v0
.end method

.method public static create(II)Lorg/checkerframework/com/google/common/collect/HashBasedTable;
    .locals 3
    .param p0, "expectedRows"    # I
    .param p1, "expectedCellsPerRow"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lorg/checkerframework/com/google/common/collect/HashBasedTable<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 83
    const-string v0, "expectedCellsPerRow"

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 84
    invoke-static {p0}, Lorg/checkerframework/com/google/common/collect/Maps;->newLinkedHashMapWithExpectedSize(I)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 85
    .local v0, "backingMap":Ljava/util/Map;, "Ljava/util/Map<TR;Ljava/util/Map<TC;TV;>;>;"
    new-instance v1, Lorg/checkerframework/com/google/common/collect/HashBasedTable;

    new-instance v2, Lorg/checkerframework/com/google/common/collect/HashBasedTable$Factory;

    invoke-direct {v2, p1}, Lorg/checkerframework/com/google/common/collect/HashBasedTable$Factory;-><init>(I)V

    invoke-direct {v1, v0, v2}, Lorg/checkerframework/com/google/common/collect/HashBasedTable;-><init>(Ljava/util/Map;Lorg/checkerframework/com/google/common/collect/HashBasedTable$Factory;)V

    return-object v1
.end method

.method public static create(Lorg/checkerframework/com/google/common/collect/Table;)Lorg/checkerframework/com/google/common/collect/HashBasedTable;
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
            "Lorg/checkerframework/com/google/common/collect/Table<",
            "+TR;+TC;+TV;>;)",
            "Lorg/checkerframework/com/google/common/collect/HashBasedTable<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 97
    .local p0, "table":Lorg/checkerframework/com/google/common/collect/Table;, "Lorg/checkerframework/com/google/common/collect/Table<+TR;+TC;+TV;>;"
    invoke-static {}, Lorg/checkerframework/com/google/common/collect/HashBasedTable;->create()Lorg/checkerframework/com/google/common/collect/HashBasedTable;

    move-result-object v0

    .line 98
    .local v0, "result":Lorg/checkerframework/com/google/common/collect/HashBasedTable;, "Lorg/checkerframework/com/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-virtual {v0, p0}, Lorg/checkerframework/com/google/common/collect/HashBasedTable;->putAll(Lorg/checkerframework/com/google/common/collect/Table;)V

    .line 99
    return-object v0
.end method


# virtual methods
.method public bridge synthetic cellSet()Ljava/util/Set;
    .locals 1

    .line 51
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBasedTable;, "Lorg/checkerframework/com/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/StandardTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .line 51
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBasedTable;, "Lorg/checkerframework/com/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/StandardTable;->clear()V

    return-void
.end method

.method public bridge synthetic column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 51
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBasedTable;, "Lorg/checkerframework/com/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/StandardTable;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic columnKeySet()Ljava/util/Set;
    .locals 1

    .line 51
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBasedTable;, "Lorg/checkerframework/com/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/StandardTable;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic columnMap()Ljava/util/Map;
    .locals 1

    .line 51
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBasedTable;, "Lorg/checkerframework/com/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/StandardTable;->columnMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;
    .param p2, "columnKey"    # Ljava/lang/Object;

    .line 110
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBasedTable;, "Lorg/checkerframework/com/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/StandardTable;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "columnKey"    # Ljava/lang/Object;

    .line 115
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBasedTable;, "Lorg/checkerframework/com/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/StandardTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;

    .line 120
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBasedTable;, "Lorg/checkerframework/com/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/StandardTable;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 125
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBasedTable;, "Lorg/checkerframework/com/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/StandardTable;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 135
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBasedTable;, "Lorg/checkerframework/com/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/StandardTable;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 130
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBasedTable;, "Lorg/checkerframework/com/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/StandardTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 51
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBasedTable;, "Lorg/checkerframework/com/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/StandardTable;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 51
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBasedTable;, "Lorg/checkerframework/com/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/StandardTable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBasedTable;, "Lorg/checkerframework/com/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/StandardTable;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putAll(Lorg/checkerframework/com/google/common/collect/Table;)V
    .locals 0

    .line 51
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBasedTable;, "Lorg/checkerframework/com/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/StandardTable;->putAll(Lorg/checkerframework/com/google/common/collect/Table;)V

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

    .line 141
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBasedTable;, "Lorg/checkerframework/com/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/StandardTable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 51
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBasedTable;, "Lorg/checkerframework/com/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lorg/checkerframework/com/google/common/collect/StandardTable;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic rowKeySet()Ljava/util/Set;
    .locals 1

    .line 51
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBasedTable;, "Lorg/checkerframework/com/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/StandardTable;->rowKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .locals 1

    .line 51
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBasedTable;, "Lorg/checkerframework/com/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/StandardTable;->rowMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .line 51
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBasedTable;, "Lorg/checkerframework/com/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/StandardTable;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 51
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBasedTable;, "Lorg/checkerframework/com/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/StandardTable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 51
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBasedTable;, "Lorg/checkerframework/com/google/common/collect/HashBasedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/StandardTable;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
