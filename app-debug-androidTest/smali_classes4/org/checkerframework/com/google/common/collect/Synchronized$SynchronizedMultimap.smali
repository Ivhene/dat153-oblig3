.class Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;
.super Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedObject;
.source "Synchronized.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/collect/Multimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedObject;",
        "Lorg/checkerframework/com/google/common/collect/Multimap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient asMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field transient entries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
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

.field transient keys:Lorg/checkerframework/com/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TK;>;"
        }
    .end annotation
.end field

.field transient valuesCollection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/Multimap;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 589
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    .local p1, "delegate":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedObject;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 590
    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 722
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 723
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->asMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 724
    new-instance v1, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap;

    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v2

    invoke-interface {v2}, Lorg/checkerframework/com/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedAsMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->asMap:Ljava/util/Map;

    .line 726
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->asMap:Ljava/util/Map;

    monitor-exit v0

    return-object v1

    .line 727
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 2

    .line 678
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 679
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Multimap;->clear()V

    .line 680
    monitor-exit v0

    .line 681
    return-void

    .line 680
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 622
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 623
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/checkerframework/com/google/common/collect/Multimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 624
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

    .line 608
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 609
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/checkerframework/com/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 610
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

    .line 615
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 616
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/checkerframework/com/google/common/collect/Multimap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 617
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 574
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v0

    return-object v0
.end method

.method delegate()Lorg/checkerframework/com/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 585
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedObject;->delegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/collect/Multimap;

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 705
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 706
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->entries:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 707
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->access$400(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->entries:Ljava/util/Collection;

    .line 709
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->entries:Ljava/util/Collection;

    monitor-exit v0

    return-object v1

    .line 710
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

    .line 742
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    if-ne p1, p0, :cond_0

    .line 743
    const/4 v0, 0x1

    return v0

    .line 745
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 746
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/checkerframework/com/google/common/collect/Multimap;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 747
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

    .line 715
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 716
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/checkerframework/com/google/common/collect/Multimap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 717
    monitor-exit v0

    .line 718
    return-void

    .line 717
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 629
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 630
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/checkerframework/com/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->access$400(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 631
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hashCode()I
    .locals 2

    .line 752
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 753
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Multimap;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 754
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 601
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 602
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Multimap;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 603
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

    .line 685
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 686
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->keySet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 687
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->access$300(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->keySet:Ljava/util/Set;

    .line 689
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->keySet:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 690
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keys()Lorg/checkerframework/com/google/common/collect/Multiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/Multiset<",
            "TK;>;"
        }
    .end annotation

    .line 732
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 733
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->keys:Lorg/checkerframework/com/google/common/collect/Multiset;

    if-nez v1, :cond_0

    .line 734
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Multimap;->keys()Lorg/checkerframework/com/google/common/collect/Multiset;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->multiset(Lorg/checkerframework/com/google/common/collect/Multiset;Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/Multiset;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->keys:Lorg/checkerframework/com/google/common/collect/Multiset;

    .line 736
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->keys:Lorg/checkerframework/com/google/common/collect/Multiset;

    monitor-exit v0

    return-object v1

    .line 737
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 636
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 637
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/checkerframework/com/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 638
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 643
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 644
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/checkerframework/com/google/common/collect/Multimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 645
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putAll(Lorg/checkerframework/com/google/common/collect/Multimap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/collect/Multimap<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    .line 650
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    .local p1, "multimap":Lorg/checkerframework/com/google/common/collect/Multimap;, "Lorg/checkerframework/com/google/common/collect/Multimap<+TK;+TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 651
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/checkerframework/com/google/common/collect/Multimap;->putAll(Lorg/checkerframework/com/google/common/collect/Multimap;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 652
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

    .line 664
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 665
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/checkerframework/com/google/common/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 666
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 671
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 672
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/checkerframework/com/google/common/collect/Multimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 673
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 657
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 658
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/checkerframework/com/google/common/collect/Multimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 659
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public size()I
    .locals 2

    .line 594
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 595
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Multimap;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 596
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

    .line 695
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 696
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->valuesCollection:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 697
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lorg/checkerframework/com/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/collect/Synchronized;->access$500(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->valuesCollection:Ljava/util/Collection;

    .line 699
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedMultimap;->valuesCollection:Ljava/util/Collection;

    monitor-exit v0

    return-object v1

    .line 700
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
