.class abstract Lorg/checkerframework/com/google/common/collect/TransformedIterator;
.super Ljava/lang/Object;
.source "TransformedIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final backingIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TF;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TF;>;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TransformedIterator;, "Lorg/checkerframework/com/google/common/collect/TransformedIterator<TF;TT;>;"
    .local p1, "backingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TF;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/TransformedIterator;->backingIterator:Ljava/util/Iterator;

    .line 36
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 42
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TransformedIterator;, "Lorg/checkerframework/com/google/common/collect/TransformedIterator<TF;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TransformedIterator;->backingIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 47
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TransformedIterator;, "Lorg/checkerframework/com/google/common/collect/TransformedIterator<TF;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TransformedIterator;->backingIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/google/common/collect/TransformedIterator;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 52
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/TransformedIterator;, "Lorg/checkerframework/com/google/common/collect/TransformedIterator<TF;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/TransformedIterator;->backingIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 53
    return-void
.end method

.method abstract transform(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation
.end method
