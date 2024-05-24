.class Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;
.super Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedObject;
.source "Synchronized.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedObject;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1032
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    .local p1, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedObject;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1033
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1043
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1044
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1045
    monitor-exit v0

    .line 1046
    return-void

    .line 1045
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1155
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1156
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1157
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .line 1140
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1141
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1142
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1148
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1149
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1150
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 1050
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1051
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1052
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

    .line 1057
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1058
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1059
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1026
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method delegate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1038
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedObject;->delegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1064
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1065
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->entrySet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 1066
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->entrySet:Ljava/util/Set;

    .line 1068
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->entrySet:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 1069
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 1215
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    if-ne p1, p0, :cond_0

    .line 1216
    const/4 v0, 0x1

    return v0

    .line 1218
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1219
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1220
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 1074
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1075
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1076
    monitor-exit v0

    .line 1077
    return-void

    .line 1076
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1081
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1082
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1083
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 1088
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1089
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1090
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hashCode()I
    .locals 2

    .line 1225
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1226
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1227
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 1095
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1096
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1097
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1102
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1103
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->keySet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 1104
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->keySet:Ljava/util/Set;

    .line 1106
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->keySet:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 1107
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1163
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1164
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1165
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1112
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1113
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1114
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1170
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1171
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1172
    monitor-exit v0

    .line 1173
    return-void

    .line 1172
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1119
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1120
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1121
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1184
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1185
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1186
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1191
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1192
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1193
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1133
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1134
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1135
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 1126
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1127
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1128
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 1177
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1178
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->replaceAll(Ljava/util/function/BiFunction;)V

    .line 1179
    monitor-exit v0

    .line 1180
    return-void

    .line 1179
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public size()I
    .locals 2

    .line 1198
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1199
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1200
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

    .line 1205
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1206
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->values:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 1207
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->access$500(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->values:Ljava/util/Collection;

    .line 1209
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMap;->values:Ljava/util/Collection;

    monitor-exit v0

    return-object v1

    .line 1210
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
