.class Lorg/checkerframework/com/google/common/collect/RegularContiguousSet$2;
.super Lorg/checkerframework/com/google/common/collect/AbstractSequentialIterator;
.source "RegularContiguousSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/RegularContiguousSet;->descendingIterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/AbstractSequentialIterator<",
        "TC;>;"
    }
.end annotation


# instance fields
.field final first:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/RegularContiguousSet;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/RegularContiguousSet;Ljava/lang/Comparable;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/RegularContiguousSet;

    .line 93
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularContiguousSet$2;, "Lorg/checkerframework/com/google/common/collect/RegularContiguousSet$2;"
    .local p2, "firstOrNull":Ljava/lang/Comparable;, "TC;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/RegularContiguousSet$2;->this$0:Lorg/checkerframework/com/google/common/collect/RegularContiguousSet;

    invoke-direct {p0, p2}, Lorg/checkerframework/com/google/common/collect/AbstractSequentialIterator;-><init>(Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p1}, Lorg/checkerframework/com/google/common/collect/RegularContiguousSet;->first()Ljava/lang/Comparable;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularContiguousSet$2;->first:Ljava/lang/Comparable;

    return-void
.end method


# virtual methods
.method protected computeNext(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TC;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularContiguousSet$2;, "Lorg/checkerframework/com/google/common/collect/RegularContiguousSet$2;"
    .local p1, "previous":Ljava/lang/Comparable;, "TC;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularContiguousSet$2;->first:Ljava/lang/Comparable;

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/collect/RegularContiguousSet;->access$000(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/RegularContiguousSet$2;->this$0:Lorg/checkerframework/com/google/common/collect/RegularContiguousSet;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/collect/RegularContiguousSet;->domain:Lorg/checkerframework/com/google/common/collect/DiscreteDomain;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/collect/DiscreteDomain;->previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected bridge synthetic computeNext(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/RegularContiguousSet$2;, "Lorg/checkerframework/com/google/common/collect/RegularContiguousSet$2;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/collect/RegularContiguousSet$2;->computeNext(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method