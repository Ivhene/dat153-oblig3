.class Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;
.super Lorg/checkerframework/com/google/common/collect/AbstractTable;
.source "Tables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Tables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransformedTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/AbstractTable<",
        "TR;TC;TV2;>;"
    }
.end annotation


# instance fields
.field final fromTable:Lorg/checkerframework/com/google/common/collect/Table;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/Table<",
            "TR;TC;TV1;>;"
        }
    .end annotation
.end field

.field final function:Lorg/checkerframework/com/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TV1;TV2;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Table;Lorg/checkerframework/com/google/common/base/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Table<",
            "TR;TC;TV1;>;",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TV1;TV2;>;)V"
        }
    .end annotation

    .line 421
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;, "Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    .local p1, "fromTable":Lorg/checkerframework/com/google/common/collect/Table;, "Lorg/checkerframework/com/google/common/collect/Table<TR;TC;TV1;>;"
    .local p2, "function":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TV1;TV2;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractTable;-><init>()V

    .line 422
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Table;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;->fromTable:Lorg/checkerframework/com/google/common/collect/Table;

    .line 423
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Function;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;->function:Lorg/checkerframework/com/google/common/base/Function;

    .line 424
    return-void
.end method


# virtual methods
.method cellFunction()Lorg/checkerframework/com/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
            "TR;TC;TV1;>;",
            "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
            "TR;TC;TV2;>;>;"
        }
    .end annotation

    .line 476
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;, "Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable$1;-><init>(Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;)V

    return-object v0
.end method

.method cellIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
            "TR;TC;TV2;>;>;"
        }
    .end annotation

    .line 487
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;, "Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;->fromTable:Lorg/checkerframework/com/google/common/collect/Table;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;->cellFunction()Lorg/checkerframework/com/google/common/base/Function;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method cellSpliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
            "TR;TC;TV2;>;>;"
        }
    .end annotation

    .line 492
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;, "Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;->fromTable:Lorg/checkerframework/com/google/common/collect/Table;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;->cellFunction()Lorg/checkerframework/com/google/common/base/Function;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/CollectSpliterators;->map(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 445
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;, "Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;->fromTable:Lorg/checkerframework/com/google/common/collect/Table;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Table;->clear()V

    .line 446
    return-void
.end method

.method public column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map<",
            "TR;TV2;>;"
        }
    .end annotation

    .line 472
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;, "Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    .local p1, "columnKey":Ljava/lang/Object;, "TC;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;->fromTable:Lorg/checkerframework/com/google/common/collect/Table;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/collect/Table;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;->function:Lorg/checkerframework/com/google/common/base/Function;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public columnKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TC;>;"
        }
    .end annotation

    .line 502
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;, "Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;->fromTable:Lorg/checkerframework/com/google/common/collect/Table;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Table;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public columnMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV2;>;>;"
        }
    .end annotation

    .line 524
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;, "Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable$3;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable$3;-><init>(Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;)V

    .line 531
    .local v0, "columnFunction":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<Ljava/util/Map<TR;TV1;>;Ljava/util/Map<TR;TV2;>;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;->fromTable:Lorg/checkerframework/com/google/common/collect/Table;

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Table;->columnMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/checkerframework/com/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;
    .param p2, "columnKey"    # Ljava/lang/Object;

    .line 428
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;, "Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;->fromTable:Lorg/checkerframework/com/google/common/collect/Table;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Table;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method createValues()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    .line 507
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;, "Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;->fromTable:Lorg/checkerframework/com/google/common/collect/Table;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Table;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;->function:Lorg/checkerframework/com/google/common/base/Function;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Collections2;->transform(Ljava/util/Collection;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "rowKey"    # Ljava/lang/Object;
    .param p2, "columnKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV2;"
        }
    .end annotation

    .line 435
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;, "Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;->function:Lorg/checkerframework/com/google/common/base/Function;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;->fromTable:Lorg/checkerframework/com/google/common/collect/Table;

    invoke-interface {v1, p1, p2}, Lorg/checkerframework/com/google/common/collect/Table;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/checkerframework/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV2;)TV2;"
        }
    .end annotation

    .line 450
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;, "Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    .local p2, "columnKey":Ljava/lang/Object;, "TC;"
    .local p3, "value":Ljava/lang/Object;, "TV2;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Lorg/checkerframework/com/google/common/collect/Table;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Table<",
            "+TR;+TC;+TV2;>;)V"
        }
    .end annotation

    .line 455
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;, "Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    .local p1, "table":Lorg/checkerframework/com/google/common/collect/Table;, "Lorg/checkerframework/com/google/common/collect/Table<+TR;+TC;+TV2;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "rowKey"    # Ljava/lang/Object;
    .param p2, "columnKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV2;"
        }
    .end annotation

    .line 460
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;, "Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;->function:Lorg/checkerframework/com/google/common/base/Function;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;->fromTable:Lorg/checkerframework/com/google/common/collect/Table;

    .line 461
    invoke-interface {v1, p1, p2}, Lorg/checkerframework/com/google/common/collect/Table;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/checkerframework/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 460
    :goto_0
    return-object v0
.end method

.method public row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map<",
            "TC;TV2;>;"
        }
    .end annotation

    .line 467
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;, "Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;->fromTable:Lorg/checkerframework/com/google/common/collect/Table;

    invoke-interface {v0, p1}, Lorg/checkerframework/com/google/common/collect/Table;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;->function:Lorg/checkerframework/com/google/common/base/Function;

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public rowKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TR;>;"
        }
    .end annotation

    .line 497
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;, "Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;->fromTable:Lorg/checkerframework/com/google/common/collect/Table;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Table;->rowKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV2;>;>;"
        }
    .end annotation

    .line 512
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;, "Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable$2;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable$2;-><init>(Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;)V

    .line 519
    .local v0, "rowFunction":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<Ljava/util/Map<TC;TV1;>;Ljava/util/Map<TC;TV2;>;>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;->fromTable:Lorg/checkerframework/com/google/common/collect/Table;

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Table;->rowMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/checkerframework/com/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 440
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;, "Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable<TR;TC;TV1;TV2;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Tables$TransformedTable;->fromTable:Lorg/checkerframework/com/google/common/collect/Table;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Table;->size()I

    move-result v0

    return v0
.end method
