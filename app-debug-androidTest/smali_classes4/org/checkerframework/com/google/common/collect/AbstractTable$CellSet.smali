.class Lorg/checkerframework/com/google/common/collect/AbstractTable$CellSet;
.super Ljava/util/AbstractSet;
.source "AbstractTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/AbstractTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
        "TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/AbstractTable;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/AbstractTable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/AbstractTable;

    .line 127
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractTable$CellSet;, "Lorg/checkerframework/com/google/common/collect/AbstractTable<TR;TC;TV;>.CellSet;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/AbstractTable$CellSet;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractTable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 154
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractTable$CellSet;, "Lorg/checkerframework/com/google/common/collect/AbstractTable<TR;TC;TV;>.CellSet;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractTable$CellSet;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractTable;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/AbstractTable;->clear()V

    .line 155
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 130
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractTable$CellSet;, "Lorg/checkerframework/com/google/common/collect/AbstractTable<TR;TC;TV;>.CellSet;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/collect/Table$Cell;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 131
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Table$Cell;

    .line 132
    .local v0, "cell":Lorg/checkerframework/com/google/common/collect/Table$Cell;, "Lorg/checkerframework/com/google/common/collect/Table$Cell<***>;"
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/AbstractTable$CellSet;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractTable;

    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/AbstractTable;->rowMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/checkerframework/com/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 133
    .local v2, "row":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    if-eqz v2, :cond_0

    .line 135
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/checkerframework/com/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    .line 134
    invoke-static {v3, v4}, Lorg/checkerframework/com/google/common/collect/Collections2;->safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 133
    :goto_0
    return v1

    .line 137
    .end local v0    # "cell":Lorg/checkerframework/com/google/common/collect/Table$Cell;, "Lorg/checkerframework/com/google/common/collect/Table$Cell<***>;"
    .end local v2    # "row":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 159
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractTable$CellSet;, "Lorg/checkerframework/com/google/common/collect/AbstractTable<TR;TC;TV;>.CellSet;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractTable$CellSet;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractTable;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/AbstractTable;->cellIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 142
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractTable$CellSet;, "Lorg/checkerframework/com/google/common/collect/AbstractTable<TR;TC;TV;>.CellSet;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/collect/Table$Cell;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 143
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Table$Cell;

    .line 144
    .local v0, "cell":Lorg/checkerframework/com/google/common/collect/Table$Cell;, "Lorg/checkerframework/com/google/common/collect/Table$Cell<***>;"
    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/AbstractTable$CellSet;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractTable;

    invoke-virtual {v2}, Lorg/checkerframework/com/google/common/collect/AbstractTable;->rowMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/checkerframework/com/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 145
    .local v2, "row":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    if-eqz v2, :cond_0

    .line 147
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/checkerframework/com/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    .line 146
    invoke-static {v3, v4}, Lorg/checkerframework/com/google/common/collect/Collections2;->safeRemove(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 145
    :goto_0
    return v1

    .line 149
    .end local v0    # "cell":Lorg/checkerframework/com/google/common/collect/Table$Cell;, "Lorg/checkerframework/com/google/common/collect/Table$Cell<***>;"
    .end local v2    # "row":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    .line 169
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractTable$CellSet;, "Lorg/checkerframework/com/google/common/collect/AbstractTable<TR;TC;TV;>.CellSet;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractTable$CellSet;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractTable;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/AbstractTable;->size()I

    move-result v0

    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 164
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractTable$CellSet;, "Lorg/checkerframework/com/google/common/collect/AbstractTable<TR;TC;TV;>.CellSet;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractTable$CellSet;->this$0:Lorg/checkerframework/com/google/common/collect/AbstractTable;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/AbstractTable;->cellSpliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
