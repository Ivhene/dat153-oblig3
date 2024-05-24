.class Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedEntry;
.super Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedObject;
.source "Synchronized.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedObject;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;Ljava/lang/Object;)V
    .locals 0
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1740
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedEntry;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedEntry<TK;TV;>;"
    .local p1, "delegate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedObject;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1741
    return-void
.end method


# virtual methods
.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1736
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedEntry;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedEntry<TK;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method delegate()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1746
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedEntry;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedEntry<TK;TV;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedObject;->delegate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1751
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedEntry;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedEntry;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1752
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1753
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1765
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedEntry;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedEntry;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1766
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1767
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1772
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedEntry;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedEntry;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1773
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1774
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hashCode()I
    .locals 2

    .line 1758
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedEntry;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedEntry;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1759
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1760
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 1779
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedEntry;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedEntry;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1780
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedEntry;->delegate()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1781
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
