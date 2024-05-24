.class Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$1;
.super Ljava/util/Spliterators$AbstractSpliterator;
.source "ImmutableSortedSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;->spliterator()Ljava/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Spliterators$AbstractSpliterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final iterator:Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;JI)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;
    .param p2, "x0"    # J
    .param p4, "x1"    # I

    .line 782
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$1;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$1;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$1;->this$0:Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/Spliterators$AbstractSpliterator;-><init>(JI)V

    .line 783
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$1;->iterator:Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    return-void
.end method


# virtual methods
.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 797
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$1;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$1;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$1;->this$0:Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 787
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$1;, "Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$1;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$1;->iterator:Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableSortedSet$1;->iterator:Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 789
    const/4 v0, 0x1

    return v0

    .line 791
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
