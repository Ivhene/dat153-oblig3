.class final Lorg/checkerframework/com/google/common/collect/Iterators$5;
.super Lorg/checkerframework/com/google/common/collect/AbstractIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/Iterators;->filter(Ljava/util/Iterator;Lorg/checkerframework/com/google/common/base/Predicate;)Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/AbstractIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$retainIfTrue:Lorg/checkerframework/com/google/common/base/Predicate;

.field final synthetic val$unfiltered:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lorg/checkerframework/com/google/common/base/Predicate;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/Iterators$5;->val$unfiltered:Ljava/util/Iterator;

    iput-object p2, p0, Lorg/checkerframework/com/google/common/collect/Iterators$5;->val$retainIfTrue:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 635
    nop

    :goto_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Iterators$5;->val$unfiltered:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/Iterators$5;->val$unfiltered:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 637
    .local v0, "element":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/collect/Iterators$5;->val$retainIfTrue:Lorg/checkerframework/com/google/common/base/Predicate;

    invoke-interface {v1, v0}, Lorg/checkerframework/com/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    return-object v0

    .line 640
    .end local v0    # "element":Ljava/lang/Object;, "TT;"
    :cond_0
    goto :goto_0

    .line 641
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/Iterators$5;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method