.class final Lorg/checkerframework/com/google/common/collect/FluentIterable$2;
.super Lorg/checkerframework/com/google/common/collect/FluentIterable;
.source "FluentIterable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/FluentIterable;->concat(Ljava/lang/Iterable;)Lorg/checkerframework/com/google/common/collect/FluentIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/FluentIterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$inputs:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/FluentIterable$2;->val$inputs:Ljava/lang/Iterable;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/FluentIterable$2;->val$inputs:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {}, Lorg/checkerframework/com/google/common/collect/Iterables;->toIterator()Lorg/checkerframework/com/google/common/base/Function;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lorg/checkerframework/com/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Iterators;->concat(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
