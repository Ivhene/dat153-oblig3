.class Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;
.super Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;
.source "Synchronized.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/SetMultimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedSetMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap<",
        "TK;TV;>;",
        "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
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


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/SetMultimap;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 815
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    .local p1, "delegate":Lorg/checkerframework/com/google/common/collect/SetMultimap;, "Lorg/checkerframework/com/google/common/collect/SetMultimap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;-><init>(Lorg/checkerframework/com/google/common/collect/Multimap;Ljava/lang/Object;)V

    .line 816
    return-void
.end method


# virtual methods
.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 810
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Lorg/checkerframework/com/google/common/collect/Multimap;
    .locals 1

    .line 810
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method delegate()Lorg/checkerframework/com/google/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 820
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/SetMultimap;

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .line 810
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 846
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 847
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;->entrySet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 848
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/SetMultimap;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/SetMultimap;->entries()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;->entrySet:Ljava/util/Set;

    .line 850
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;->entrySet:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 851
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 810
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 825
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 826
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/SetMultimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/checkerframework/com/google/common/collect/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 827
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 810
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 832
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 833
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/SetMultimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/checkerframework/com/google/common/collect/SetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 834
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0

    .line 810
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 839
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 840
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSetMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/SetMultimap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/checkerframework/com/google/common/collect/SetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 841
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method