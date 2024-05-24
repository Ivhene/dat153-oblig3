.class Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSet;
.super Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedCollection;
.source "Synchronized.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedCollection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/lang/Object;)V
    .locals 1
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 259
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSet;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSet<TE;>;"
    .local p1, "delegate":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;Lorg/checkerframework/com/google/common/collect/Synchronized$1;)V

    .line 260
    return-void
.end method


# virtual methods
.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 256
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSet;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 256
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSet;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSet<TE;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSet;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method delegate()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 264
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSet;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSet<TE;>;"
    invoke-super {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 269
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSet;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSet<TE;>;"
    if-ne p1, p0, :cond_0

    .line 270
    const/4 v0, 0x1

    return v0

    .line 272
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSet;->delegate()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 274
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hashCode()I
    .locals 2

    .line 279
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSet;, "Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSet<TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_0
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Synchronized$SynchronizedSet;->delegate()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 281
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
