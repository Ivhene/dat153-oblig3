.class final Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;
.super Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedObject;
.source "Synchronized.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/Table;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SynchronizedTable"
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
        "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedObject;",
        "Lorg/checkerframework/com/google/common/collect/Table<",
        "TR;TC;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Table;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Table<",
            "TR;TC;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1985
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    .local p1, "delegate":Lorg/checkerframework/com/google/common/collect/Table;, "Lorg/checkerframework/com/google/common/collect/Table<TR;TC;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedObject;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1986
    return-void
.end method


# virtual methods
.method public cellSet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/checkerframework/com/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 2087
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2088
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lorg/checkerframework/com/google/common/collect/Table;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2089
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 2

    .line 2045
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2046
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lorg/checkerframework/com/google/common/collect/Table;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Table;->clear()V

    .line 2047
    monitor-exit v0

    .line 2048
    return-void

    .line 2047
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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

    .line 2080
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    .local p1, "columnKey":Ljava/lang/Object;, "TC;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2081
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lorg/checkerframework/com/google/common/collect/Table;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/checkerframework/com/google/common/collect/Table;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->map(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2082
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public columnKeySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TC;>;"
        }
    .end annotation

    .line 2101
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2102
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lorg/checkerframework/com/google/common/collect/Table;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Table;->columnKeySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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

    .line 2131
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2132
    nop

    .line 2134
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lorg/checkerframework/com/google/common/collect/Table;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Table;->columnMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable$2;

    invoke-direct {v2, p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable$2;-><init>(Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;)V

    .line 2133
    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    .line 2132
    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->map(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2142
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "rowKey"    # Ljava/lang/Object;
    .param p2, "columnKey"    # Ljava/lang/Object;

    .line 1996
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1997
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lorg/checkerframework/com/google/common/collect/Table;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/checkerframework/com/google/common/collect/Table;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1998
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "columnKey"    # Ljava/lang/Object;

    .line 2010
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2011
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lorg/checkerframework/com/google/common/collect/Table;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/checkerframework/com/google/common/collect/Table;->containsColumn(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2012
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "rowKey"    # Ljava/lang/Object;

    .line 2003
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2004
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lorg/checkerframework/com/google/common/collect/Table;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/checkerframework/com/google/common/collect/Table;->containsRow(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2005
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 2017
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2018
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lorg/checkerframework/com/google/common/collect/Table;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/checkerframework/com/google/common/collect/Table;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2019
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1981
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lorg/checkerframework/com/google/common/collect/Table;

    move-result-object v0

    return-object v0
.end method

.method delegate()Lorg/checkerframework/com/google/common/collect/Table;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Table<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 1991
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedObject;->delegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Table;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2154
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    if-ne p0, p1, :cond_0

    .line 2155
    const/4 v0, 0x1

    return v0

    .line 2157
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2158
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lorg/checkerframework/com/google/common/collect/Table;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/checkerframework/com/google/common/collect/Table;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2159
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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
            ")TV;"
        }
    .end annotation

    .line 2024
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2025
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lorg/checkerframework/com/google/common/collect/Table;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/checkerframework/com/google/common/collect/Table;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2026
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hashCode()I
    .locals 2

    .line 2147
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2148
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lorg/checkerframework/com/google/common/collect/Table;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Table;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 2149
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 2031
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2032
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lorg/checkerframework/com/google/common/collect/Table;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Table;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2033
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)TV;"
        }
    .end annotation

    .line 2052
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    .local p2, "columnKey":Ljava/lang/Object;, "TC;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2053
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lorg/checkerframework/com/google/common/collect/Table;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lorg/checkerframework/com/google/common/collect/Table;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2054
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putAll(Lorg/checkerframework/com/google/common/collect/Table;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Table<",
            "+TR;+TC;+TV;>;)V"
        }
    .end annotation

    .line 2059
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    .local p1, "table":Lorg/checkerframework/com/google/common/collect/Table;, "Lorg/checkerframework/com/google/common/collect/Table<+TR;+TC;+TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2060
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lorg/checkerframework/com/google/common/collect/Table;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/checkerframework/com/google/common/collect/Table;->putAll(Lorg/checkerframework/com/google/common/collect/Table;)V

    .line 2061
    monitor-exit v0

    .line 2062
    return-void

    .line 2061
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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
            ")TV;"
        }
    .end annotation

    .line 2066
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2067
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lorg/checkerframework/com/google/common/collect/Table;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/checkerframework/com/google/common/collect/Table;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2068
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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

    .line 2073
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2074
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lorg/checkerframework/com/google/common/collect/Table;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/checkerframework/com/google/common/collect/Table;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->map(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2075
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public rowKeySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TR;>;"
        }
    .end annotation

    .line 2094
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2095
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lorg/checkerframework/com/google/common/collect/Table;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Table;->rowKeySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2096
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
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

    .line 2115
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2116
    nop

    .line 2118
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lorg/checkerframework/com/google/common/collect/Table;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Table;->rowMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable$1;

    invoke-direct {v2, p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable$1;-><init>(Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;)V

    .line 2117
    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    .line 2116
    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->map(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2126
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public size()I
    .locals 2

    .line 2038
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2039
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lorg/checkerframework/com/google/common/collect/Table;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Table;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 2040
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 2108
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable<TR;TC;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2109
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->delegate()Lorg/checkerframework/com/google/common/collect/Table;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Table;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedTable;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->access$500(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2110
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
