.class public abstract Lorg/checkerframework/com/google/common/collect/AbstractSequentialIterator;
.super Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
.source "AbstractSequentialIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private nextOrNull:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractSequentialIterator;, "Lorg/checkerframework/com/google/common/collect/AbstractSequentialIterator<TT;>;"
    .local p1, "firstOrNull":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/AbstractSequentialIterator;->nextOrNull:Ljava/lang/Object;

    .line 52
    return-void
.end method


# virtual methods
.method protected abstract computeNext(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .locals 1

    .line 64
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractSequentialIterator;, "Lorg/checkerframework/com/google/common/collect/AbstractSequentialIterator<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractSequentialIterator;->nextOrNull:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/AbstractSequentialIterator;, "Lorg/checkerframework/com/google/common/collect/AbstractSequentialIterator<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/AbstractSequentialIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/AbstractSequentialIterator;->nextOrNull:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/AbstractSequentialIterator;->computeNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractSequentialIterator;->nextOrNull:Ljava/lang/Object;

    .line 73
    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractSequentialIterator;->nextOrNull:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lorg/checkerframework/com/google/common/collect/AbstractSequentialIterator;->computeNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/google/common/collect/AbstractSequentialIterator;->nextOrNull:Ljava/lang/Object;

    .line 76
    throw v0

    .line 70
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
