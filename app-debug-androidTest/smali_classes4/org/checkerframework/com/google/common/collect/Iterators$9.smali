.class final Lorg/checkerframework/com/google/common/collect/Iterators$9;
.super Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/Iterators;->singletonIterator(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field done:Z

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1049
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Iterators$9;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1054
    iget-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/Iterators$9;->done:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1059
    iget-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/Iterators$9;->done:Z

    if-nez v0, :cond_0

    .line 1062
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/com/google/common/collect/Iterators$9;->done:Z

    .line 1063
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Iterators$9;->val$value:Ljava/lang/Object;

    return-object v0

    .line 1060
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
