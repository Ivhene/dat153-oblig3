.class Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap;
.super Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;
.source "Synchronized.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/ListMultimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedListMultimap"
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
        "Lorg/checkerframework/com/google/common/collect/ListMultimap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ListMultimap;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/ListMultimap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 771
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap<TK;TV;>;"
    .local p1, "delegate":Lorg/checkerframework/com/google/common/collect/ListMultimap;, "Lorg/checkerframework/com/google/common/collect/ListMultimap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;-><init>(Lorg/checkerframework/com/google/common/collect/Multimap;Ljava/lang/Object;)V

    .line 772
    return-void
.end method


# virtual methods
.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 768
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method delegate()Lorg/checkerframework/com/google/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 776
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/ListMultimap;

    return-object v0
.end method

.method bridge synthetic delegate()Lorg/checkerframework/com/google/common/collect/Multimap;
    .locals 1

    .line 768
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 768
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 781
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 782
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/ListMultimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/checkerframework/com/google/common/collect/ListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->access$200(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 783
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 768
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 788
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 789
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/ListMultimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/checkerframework/com/google/common/collect/ListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 790
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0

    .line 768
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 795
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 796
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedListMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/ListMultimap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/checkerframework/com/google/common/collect/ListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 797
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
